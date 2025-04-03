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
    nb_reservations COUNTER,
    nb_personnes COUNTER,
    revenu_total COUNTER,
    PRIMARY KEY ((ville, pays), annee_mois)
) WITH CLUSTERING ORDER BY (annee_mois DESC);

-- Table pour les tendances saisonnières
-- Optimisée pour les analyses temporelles
CREATE TABLE IF NOT EXISTS tendances_saisonnieres (
    annee INT,
    mois INT,
    categorie_hotel INT,
    nb_reservations COUNTER,
    nb_personnes COUNTER,
    revenu_total COUNTER,
    PRIMARY KEY ((annee), mois, categorie_hotel)
) WITH CLUSTERING ORDER BY (mois ASC, categorie_hotel ASC);

-- Table pour le suivi des préférences clients
-- Optimisée pour les analyses comportementales
CREATE TABLE IF NOT EXISTS preferences_clients (
    client_id INT,
    categorie_preference TEXT,
    valeur_preference TEXT,
    nb_occurrences COUNTER,
    derniere_occurrence TIMESTAMP,
    PRIMARY KEY ((client_id), categorie_preference, valeur_preference)
);

-- Insertion de données d'exemple pour l'historique des réservations
INSERT INTO historique_reservations (client_id, date_reservation, reservation_id, hotel_id, nom_hotel, ville, pays, date_arrivee, date_depart, nb_personnes, nb_chambres, montant_total, statut, methode_paiement)
VALUES (1, '2023-07-05 10:30:00', uuid(), 1, 'Grand Hôtel Paris', 'Paris', 'France', '2023-07-10', '2023-07-15', 2, 1, 1750.00, 'terminée', 'Carte de crédit');

INSERT INTO historique_reservations (client_id, date_reservation, reservation_id, hotel_id, nom_hotel, ville, pays, date_arrivee, date_depart, nb_personnes, nb_chambres, montant_total, statut, methode_paiement)
VALUES (2, '2023-08-01 14:45:00', uuid(), 3, 'Mountain Lodge', 'Chamonix', 'France', '2023-08-05', '2023-08-12', 4, 2, 2520.00, 'confirmée', 'Virement bancaire');

INSERT INTO historique_reservations (client_id, date_reservation, reservation_id, hotel_id, nom_hotel, ville, pays, date_arrivee, date_depart, nb_personnes, nb_chambres, montant_total, statut, methode_paiement)
VALUES (3, '2023-09-10 09:15:00', uuid(), 2, 'Seaside Resort', 'Nice', 'France', '2023-09-15', '2023-09-20', 2, 1, 1100.00, 'confirmée', 'PayPal');

INSERT INTO historique_reservations (client_id, date_reservation, reservation_id, hotel_id, nom_hotel, ville, pays, date_arrivee, date_depart, nb_personnes, nb_chambres, montant_total, statut, methode_paiement)
VALUES (4, '2023-09-20 16:30:00', uuid(), 5, 'Château Resort & Spa', 'Bordeaux', 'France', '2023-10-01', '2023-10-05', 2, 1, 1680.00, 'annulée', 'Carte de crédit');

INSERT INTO historique_reservations (client_id, date_reservation, reservation_id, hotel_id, nom_hotel, ville, pays, date_arrivee, date_depart, nb_personnes, nb_chambres, montant_total, statut, methode_paiement)
VALUES (5, '2023-11-15 11:20:00', uuid(), 4, 'City Center Hotel', 'Lyon', 'France', '2023-11-20', '2023-11-25', 3, 1, 1050.00, 'en attente', 'Carte de crédit');

-- Insertion de données d'exemple pour les réservations par hôtel
INSERT INTO reservations_par_hotel (hotel_id, annee_mois, date_arrivee, reservation_id, client_id, date_depart, nb_personnes, nb_chambres, montant_total, statut)
VALUES (1, '2023-07', '2023-07-10', uuid(), 1, '2023-07-15', 2, 1, 1750.00, 'terminée');

INSERT INTO reservations_par_hotel (hotel_id, annee_mois, date_arrivee, reservation_id, client_id, date_depart, nb_personnes, nb_chambres, montant_total, statut)
VALUES (3, '2023-08', '2023-08-05', uuid(), 2, '2023-08-12', 4, 2, 2520.00, 'confirmée');

INSERT INTO reservations_par_hotel (hotel_id, annee_mois, date_arrivee, reservation_id, client_id, date_depart, nb_personnes, nb_chambres, montant_total, statut)
VALUES (2, '2023-09', '2023-09-15', uuid(), 3, '2023-09-20', 2, 1, 1100.00, 'confirmée');

INSERT INTO reservations_par_hotel (hotel_id, annee_mois, date_arrivee, reservation_id, client_id, date_depart, nb_personnes, nb_chambres, montant_total, statut)
VALUES (5, '2023-10', '2023-10-01', uuid(), 4, '2023-10-05', 2, 1, 1680.00, 'annulée');

INSERT INTO reservations_par_hotel (hotel_id, annee_mois, date_arrivee, reservation_id, client_id, date_depart, nb_personnes, nb_chambres, montant_total, statut)
VALUES (4, '2023-11', '2023-11-20', uuid(), 5, '2023-11-25', 3, 1, 1050.00, 'en attente');

-- Mise à jour des compteurs pour les tendances de visites par ville
UPDATE tendances_visites_ville SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 2, revenu_total = revenu_total + 1750 WHERE ville = 'Paris' AND pays = 'France' AND annee_mois = '2023-07';
UPDATE tendances_visites_ville SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 4, revenu_total = revenu_total + 2520 WHERE ville = 'Chamonix' AND pays = 'France' AND annee_mois = '2023-08';
UPDATE tendances_visites_ville SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 2, revenu_total = revenu_total + 1100 WHERE ville = 'Nice' AND pays = 'France' AND annee_mois = '2023-09';
UPDATE tendances_visites_ville SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 2, revenu_total = revenu_total + 1680 WHERE ville = 'Bordeaux' AND pays = 'France' AND annee_mois = '2023-10';
UPDATE tendances_visites_ville SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 3, revenu_total = revenu_total + 1050 WHERE ville = 'Lyon' AND pays = 'France' AND annee_mois = '2023-11';

-- Mise à jour des compteurs pour les tendances saisonnières
UPDATE tendances_saisonnieres SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 2, revenu_total = revenu_total + 1750 WHERE annee = 2023 AND mois = 7 AND categorie_hotel = 5;
UPDATE tendances_saisonnieres SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 4, revenu_total = revenu_total + 2520 WHERE annee = 2023 AND mois = 8 AND categorie_hotel = 3;
UPDATE tendances_saisonnieres SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 2, revenu_total = revenu_total + 1100 WHERE annee = 2023 AND mois = 9 AND categorie_hotel = 4;
UPDATE tendances_saisonnieres SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 2, revenu_total = revenu_total + 1680 WHERE annee = 2023 AND mois = 10 AND categorie_hotel = 5;
UPDATE tendances_saisonnieres SET nb_reservations = nb_reservations + 1, nb_personnes = nb_personnes + 3, revenu_total = revenu_total + 1050 WHERE annee = 2023 AND mois = 11 AND categorie_hotel = 4;

-- Mise à jour des compteurs pour les préférences clients
UPDATE preferences_clients SET nb_occurrences = nb_occurrences + 1, derniere_occurrence = '2023-07-05 10:30:00' WHERE client_id = 1 AND categorie_preference = 'categorie_hotel' AND valeur_preference = '5';
UPDATE preferences_clients SET nb_occurrences = nb_occurrences + 1, derniere_occurrence = '2023-07-05 10:30:00' WHERE client_id = 1 AND categorie_preference = 'ville' AND valeur_preference = 'Paris';
UPDATE preferences_clients SET nb_occurrences = nb_occurrences + 1, derniere_occurrence = '2023-08-01 14:45:00' WHERE client_id = 2 AND categorie_preference = 'categorie_hotel' AND valeur_preference = '3';
UPDATE preferences_clients SET nb_occurrences = nb_occurrences + 1, derniere_occurrence = '2023-08-01 14:45:00' WHERE client_id = 2 AND categorie_preference = 'ville' AND valeur_preference = 'Chamonix';
UPDATE preferences_clients SET nb_occurrences = nb_occurrences + 1, derniere_occurrence = '2023-09-10 09:15:00' WHERE client_id = 3 AND categorie_preference = 'categorie_hotel' AND valeur_preference = '4'; 