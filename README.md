# Projet Tourisme et Hébergement - Gestion des Données

Ce projet utilise plusieurs systèmes de bases de données pour stocker et analyser les données liées au tourisme et à l'hébergement. Chaque source de données est optimisée pour un type spécifique de données et d'analyses.

## Installation

### 1. Cloner le projet

```bash
git clone https://github.com/itokiana-mahefarison/TpTransversale.git TpTransversale
cd TpTransversale
```

### 2. Lancer les conteneurs

```bash
docker-compose up -d
```

> Cela peut prendre quelques minutes et télécharger de nombreuses images Docker lors du premier lancement.

**Conteneurs créés :**

- `cassandra` : port 9042
- `postgres` : port 5435
- `oraclenosql` : port 5436
- `meltano`
- `hivepostgres` : port 5437
- `hivemetastore` : port 9083
- `hiveserver2` : ports 10000 et 10002
- `jupyter` : port 8888

### 3. Peupler les bases de données

Pour Oracle NoSQL :

```bash
./init-data-oracle-nosql.sh  # Sur Windows, renommez le fichier en .bat
```

> Cela va créer les schémas dans Oracle NoSQL et insérer 10 000 lignes

### 4. Hive

```bash
docker exec -it hotel_hiveserver2 hive
!connect jdbc:hive2://localhost:10000 # pas de nom d'utilisateur et de mot de passe
```

Puis exécutez les instructions contenues dans `hive.sql`.

### 5. Visualisation des données

Rendez-vous sur l'interface Jupyter : [http://localhost:8888/](http://localhost:8888/)

- Décommentez la première ligne du notebook
- Exécutez-la avec `Shift + Entrée` pour installer les packages nécessaires
- Lancez ensuite toutes les cellules

---

## Sources de Données et Intégration

### 1. **PostgreSQL**

- **Données stockées** :
  - Informations sur les hôtels (nom, adresse, catégorie, prix moyen, etc.)
  - Données clients (nom, prénom, email, adresse, etc.)
  - Réservations (dates, nombre de personnes, statut, montant total)
  - Paiements (méthode, montant, statut)
  - Activités touristiques (nom, description, prix, durée)
- **Intégration** :
  - Les données sont insérées via des requêtes SQL standard.
  - Les relations entre les tables (clients, réservations, hôtels) sont gérées via des clés étrangères.
- **Exemple de schéma** : Voir `postgresql_schema.sql` (lignes 1 à 107).

### 2. **Cassandra**

- **Données stockées** :
  - Historique des réservations (client, hôtel, dates, statut)
  - Tendances de visites par ville (nombre de réservations, revenu total)
  - Tendances saisonnières (réservations par mois et catégorie d'hôtel)
  - Préférences clients (catégories préférées, occurrences)
- **Intégration** :
  - Les données sont insérées via des requêtes CQL (Cassandra Query Language).
  - Les tables sont optimisées pour des requêtes spécifiques (par client, par hôtel, par ville).
- **Exemple de schéma** : Voir `cassandra_schema.cql` (lignes 1 à 130).

### 3. **Oracle NoSQL**

- **Données stockées** :
  - Avis clients (note, commentaire, date)
  - Recommandations (type, éléments, statut)
- **Intégration** :
  - Les données sont stockées sous forme de documents JSON.
  - Les requêtes sont effectuées via l'interface CLI ou SQL CLI.
- **Exemple de schéma** : Voir `oracle_nosql_schema.sql` (lignes 1 à 66).

### 4. **HDFS**

- **Données stockées** :
  - Données météorologiques (date, localisation, température, précipitations, conditions météo)
  - Logs de recherche d'hôtels (timestamp, session, client, requête, filtres, actions)
  - Logs de recherche d'activités (timestamp, session, client, requête, filtres, actions)
  - Logs de clics (timestamp, utilisateur, requête, localisation, hôtel cliqué)
- **Intégration** :
  - Les données sont stockées sous forme de fichiers JSON et CSV dans HDFS.
  - Les fichiers sont accessibles via des outils comme Apache Spark ou Hive pour des analyses croisées.
- **Exemple de données** :
  - `HDFS/weather_data_2023.json` (lignes 1 à 37)
  - `HDFS/hotel_search_logs.csv` (lignes 1 à 20)
  - `HDFS/activity_search_logs.csv` (lignes 1 à 20)
  - `HDFS/search_logs_2023.csv` (lignes 1 à 10)

## Questions d'Analyse

Le projet inclut un ensemble de questions d'analyse pour explorer les données stockées dans les différentes bases de données. Ces questions couvrent des analyses croisées entre PostgreSQL, Cassandra, Oracle NoSQL, et HDFS. Pour plus de détails, consultez `questions_analyse_data_lake.md` (lignes 1 à 38).

## Démarrage du Projet

### Prérequis

- Docker
- Docker Compose

### Étapes pour Démarrer le Projet

1. **Cloner le dépôt** :

   ```bash
   git clone https://github.com/votre-repo/projet-tourisme.git
   cd projet-tourisme
   ```

2. **Démarrer les services avec Docker Compose** :

   ```bash
   docker compose up -d
   ```

3. **Vérifier que tous les services sont en cours d'exécution** :
   ```bash
   docker compose ps
   ```

### Arrêt du Projet

Pour arrêter les services, exécutez la commande suivante :

```bash
docker compose down
```

## Structure du Projet

- **docker-compose.yml** : Configuration des services Docker.
- **postgresql_schema.sql** : Schéma de la base de données PostgreSQL.
- **cassandra_schema.cql** : Schéma de la base de données Cassandra.
- **oracle_nosql_schema.sql** : Schéma de la base de données Oracle NoSQL.
- **HDFS/weather_data_2023.json** : Données météorologiques stockées dans HDFS.
- **HDFS/hotel_search_logs.csv** : Logs de recherche d'hôtels.
- **HDFS/activity_search_logs.csv** : Logs de recherche d'activités.
- **HDFS/search_logs_2023.csv** : Logs de clics et interactions utilisateurs.

## Contribution

Les contributions sont les bienvenues ! Veuillez ouvrir une issue ou soumettre une pull request pour toute suggestion ou amélioration.

## Licence

Ce projet est sous licence MIT. Voir le fichier `LICENSE` pour plus de détails.
