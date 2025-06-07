-- Création du keyspace pour le projet tourisme
CREATE KEYSPACE IF NOT EXISTS tourisme_keyspace
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 3};

-- Utilisation du keyspace
USE tourisme_keyspace;

-- Table pour l'historique des réservations
-- Optimisée pour les requêtes par client et par date
CREATE TABLE IF NOT EXISTS historique_reservations (
    client_id INT,
    date_reservation TIMESTAMP,
    reservation_id UUID,
    hotel_id INT,
    nom_hotel TEXT,
    ville TEXT,
    pays TEXT,
    date_arrivee DATE,
    date_depart DATE,
    nb_personnes INT,
    nb_chambres INT,
    montant_total DECIMAL,
    statut TEXT,
    methode_paiement TEXT,
    PRIMARY KEY ((client_id), date_reservation, reservation_id)
) WITH CLUSTERING ORDER BY (date_reservation DESC);

-- Table pour les réservations par hôtel
-- Optimisée pour les requêtes par hôtel et par période
CREATE TABLE IF NOT EXISTS reservations_par_hotel (
    hotel_id INT,
    annee_mois TEXT,
    date_arrivee DATE,
    reservation_id UUID,
    client_id INT,
    date_depart DATE,
    nb_personnes INT,
    nb_chambres INT,
    montant_total DECIMAL,
    statut TEXT,
    PRIMARY KEY ((hotel_id, annee_mois), date_arrivee, reservation_id)
) WITH CLUSTERING ORDER BY (date_arrivee ASC);

-- Table pour les tendances de visites par ville
-- Optimisée pour les analyses de tendances géographiques
CREATE TABLE IF NOT EXISTS tendances_visites_ville (
    ville TEXT,
    pays TEXT,
    annee_mois TEXT,
    nb_reservations INT,
    nb_personnes INT,
    revenu_total DECIMAL,
    PRIMARY KEY ((ville, pays), annee_mois)
) WITH CLUSTERING ORDER BY (annee_mois DESC);

-- Table pour les tendances saisonnières
-- Optimisée pour les analyses temporelles
CREATE TABLE IF NOT EXISTS tendances_saisonnieres (
    annee INT,
    mois INT,
    categorie_hotel INT,
    nb_reservations INT,
    nb_personnes INT,
    revenu_total DECIMAL,
    PRIMARY KEY ((annee), mois, categorie_hotel)
) WITH CLUSTERING ORDER BY (mois ASC, categorie_hotel ASC);

-- Table pour le suivi des préférences clients
-- Optimisée pour les analyses comportementales
CREATE TABLE IF NOT EXISTS preferences_clients (
    client_id INT,
    categorie_preference TEXT,
    valeur_preference TEXT,
    nb_occurrences INT,
    derniere_occurrence TIMESTAMP,
    PRIMARY KEY ((client_id), categorie_preference, valeur_preference)
);
