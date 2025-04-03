--**************************************************************************************************************
--* Script pour Oracle NoSQL (clé/document) - Projet Tourisme et Hébergement
--* Tables pour les avis clients, recommandations et interactions sur le site
--**************************************************************************************************************

----------------------------------------------------------------------------------------------------------------
-- Connexion à la base
----------------------------------------------------------------------------------------------------------------

connect store -name kvstore

----------------------------------------------------------------------------------------------------------------
-- Création des tables
----------------------------------------------------------------------------------------------------------------

-- Suppression des tables si elles existent déjà
execute 'drop table avis_clients';
execute 'drop table avis_clients.photos';
execute 'drop table recommandations';
execute 'drop table interactions_site';

-- Création de la table avis_clients
execute 'create table avis_clients(
    avis_id     STRING,
    client_id   INTEGER,
    hotel_id    INTEGER,
    note        INTEGER,
    commentaire STRING,
    date_avis   TIMESTAMP,
    PRIMARY KEY (shard(hotel_id), avis_id))';

-- Création de la table recommandations
execute 'create table recommandations(
    recommandation_id STRING,
    client_id         INTEGER,
    type_recommandation STRING,
    elements          JSON,
    date_generation   TIMESTAMP,
    statut            STRING,
    PRIMARY KEY (shard(client_id), recommandation_id))';

----------------------------------------------------------------------------------------------------------------
-- Insertion de données d'exemple
----------------------------------------------------------------------------------------------------------------

-- Insertion d'avis clients
put table -name avis_clients -json '{"avis_id":"AV-2023-001","client_id":1,"hotel_id":1,"note":5,"commentaire":"Excellent séjour, personnel très attentionné et chambre spacieuse avec une vue magnifique.","date_avis":"2023-07-20T14:30:00Z"}';

put table -name avis_clients -json '{"avis_id":"AV-2023-002","client_id":2,"hotel_id":3,"note":4,"commentaire":"Très bon hôtel, bien situé pour les randonnées. Petit déjeuner copieux.","date_avis":"2023-08-15T10:45:00Z"}';

put table -name avis_clients -json '{"avis_id":"AV-2023-003","client_id":3,"hotel_id":2,"note":4,"commentaire":"Belle vue sur la mer, plage à proximité. Seul bémol: la climatisation un peu bruyante.","date_avis":"2023-09-22T16:20:00Z"}';

put table -name avis_clients -json '{"avis_id":"AV-2023-004","client_id":4,"hotel_id":5,"note":5,"commentaire":"Cadre exceptionnel dans ce château, service impeccable et restaurant gastronomique de grande qualité.","date_avis":"2023-10-08T19:15:00Z"}';

put table -name avis_clients -json '{"avis_id":"AV-2023-005","client_id":5,"hotel_id":4,"note":3,"commentaire":"Hôtel bien situé en centre-ville, mais chambre un peu petite et bruyante côté rue.","date_avis":"2023-11-27T09:30:00Z"}';

-- Insertion de recommandations
put table -name recommandations -json '{"recommandation_id":"REC-2023-001","client_id":1,"type_recommandation":"hotels_similaires","elements":{"hotels":[2,5,4],"raison":"basé sur vos séjours précédents"},"date_generation":"2023-07-25T08:00:00Z","statut":"active"}';

put table -name recommandations -json '{"recommandation_id":"REC-2023-002","client_id":2,"type_recommandation":"activites_proches","elements":{"activites":[3,5,1],"raison":"près de votre prochain séjour"},"date_generation":"2023-08-20T08:00:00Z","statut":"active"}';

put table -name recommandations -json '{"recommandation_id":"REC-2023-003","client_id":3,"type_recommandation":"destinations_populaires","elements":{"villes":["Paris","Bordeaux","Lyon"],"raison":"destinations tendance"},"date_generation":"2023-09-25T08:00:00Z","statut":"active"}';

put table -name recommandations -json '{"recommandation_id":"REC-2023-004","client_id":4,"type_recommandation":"hotels_luxe","elements":{"hotels":[1,5],"raison":"basé sur vos préférences"},"date_generation":"2023-10-10T08:00:00Z","statut":"active"}';

put table -name recommandations -json '{"recommandation_id":"REC-2023-005","client_id":5,"type_recommandation":"offres_speciales","elements":{"hotels":[4,2],"reduction":"15%","raison":"offres de dernière minute"},"date_generation":"2023-11-15T08:00:00Z","statut":"active"}';
