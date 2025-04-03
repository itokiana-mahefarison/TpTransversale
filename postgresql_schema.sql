-- Création des tables pour PostgreSQL

-- Table des hôtels
CREATE TABLE hotels (
    hotel_id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    adresse VARCHAR(200) NOT NULL,
    ville VARCHAR(50) NOT NULL,
    pays VARCHAR(50) NOT NULL,
    categorie INT CHECK (categorie BETWEEN 1 AND 5),
    nb_chambres INT NOT NULL,
    prix_moyen DECIMAL(10, 2) NOT NULL,
    coordonnees_gps VARCHAR(50),
    date_creation TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table des clients
CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telephone VARCHAR(20),
    adresse VARCHAR(200),
    ville VARCHAR(50),
    pays VARCHAR(50),
    date_naissance DATE,
    date_inscription TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Table des réservations
CREATE TABLE reservations (
    reservation_id SERIAL PRIMARY KEY,
    client_id INT REFERENCES clients(client_id),
    hotel_id INT REFERENCES hotels(hotel_id),
    date_arrivee DATE NOT NULL,
    date_depart DATE NOT NULL,
    nb_personnes INT NOT NULL,
    nb_chambres INT NOT NULL,
    statut VARCHAR(20) CHECK (statut IN ('confirmée', 'annulée', 'en attente', 'terminée')),
    montant_total DECIMAL(10, 2) NOT NULL,
    date_reservation TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT check_dates CHECK (date_depart > date_arrivee)
);

-- Table des paiements
CREATE TABLE paiements (
    paiement_id SERIAL PRIMARY KEY,
    reservation_id INT REFERENCES reservations(reservation_id),
    montant DECIMAL(10, 2) NOT NULL,
    methode_paiement VARCHAR(50) NOT NULL,
    date_paiement TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    statut VARCHAR(20) CHECK (statut IN ('validé', 'en attente', 'refusé', 'remboursé')),
    reference_transaction VARCHAR(100)
);

-- Table des activités touristiques
CREATE TABLE activites (
    activite_id SERIAL PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    description TEXT,
    ville VARCHAR(50) NOT NULL,
    pays VARCHAR(50) NOT NULL,
    prix DECIMAL(10, 2),
    duree_heures DECIMAL(4, 1),
    categorie VARCHAR(50)
);

-- Insertion de données d'exemple
-- Hôtels
INSERT INTO hotels (nom, adresse, ville, pays, categorie, nb_chambres, prix_moyen, coordonnees_gps)
VALUES 
('Grand Hôtel Paris', '15 rue de Rivoli', 'Paris', 'France', 5, 120, 350.00, '48.856614,2.3522219'),
('Seaside Resort', '10 Beach Avenue', 'Nice', 'France', 4, 85, 220.00, '43.7101728,7.2619532'),
('Mountain Lodge', '25 Alpine Road', 'Chamonix', 'France', 3, 45, 180.00, '45.9237,6.8694'),
('City Center Hotel', '8 Place Bellecour', 'Lyon', 'France', 4, 95, 210.00, '45.7578137,4.8320114'),
('Château Resort & Spa', '3 Route des Vignes', 'Bordeaux', 'France', 5, 60, 420.00, '44.8378,0.5792');

-- Clients
INSERT INTO clients (nom, prenom, email, telephone, adresse, ville, pays, date_naissance)
VALUES 
('Dupont', 'Jean', 'jean.dupont@email.com', '+33612345678', '25 rue des Lilas', 'Paris', 'France', '1980-05-15'),
('Smith', 'John', 'john.smith@email.com', '+44789123456', '10 Oxford Street', 'London', 'Royaume-Uni', '1975-11-23'),
('Müller', 'Hans', 'hans.muller@email.com', '+49123456789', '8 Berliner Straße', 'Berlin', 'Allemagne', '1990-03-08'),
('Garcia', 'Maria', 'maria.garcia@email.com', '+34612345678', '15 Calle Mayor', 'Madrid', 'Espagne', '1985-07-12'),
('Rossi', 'Paolo', 'paolo.rossi@email.com', '+39312345678', '7 Via Roma', 'Rome', 'Italie', '1982-09-30');

-- Réservations
INSERT INTO reservations (client_id, hotel_id, date_arrivee, date_depart, nb_personnes, nb_chambres, statut, montant_total)
VALUES 
(1, 1, '2023-07-10', '2023-07-15', 2, 1, 'terminée', 1750.00),
(2, 3, '2023-08-05', '2023-08-12', 4, 2, 'confirmée', 2520.00),
(3, 2, '2023-09-15', '2023-09-20', 2, 1, 'confirmée', 1100.00),
(4, 5, '2023-10-01', '2023-10-05', 2, 1, 'annulée', 1680.00),
(5, 4, '2023-11-20', '2023-11-25', 3, 1, 'en attente', 1050.00);

-- Paiements
INSERT INTO paiements (reservation_id, montant, methode_paiement, statut, reference_transaction)
VALUES 
(1, 1750.00, 'Carte de crédit', 'validé', 'TRX-2023-001'),
(2, 1260.00, 'Virement bancaire', 'validé', 'TRX-2023-002'),
(2, 1260.00, 'Virement bancaire', 'validé', 'TRX-2023-003'),
(3, 1100.00, 'PayPal', 'validé', 'TRX-2023-004'),
(5, 525.00, 'Carte de crédit', 'en attente', 'TRX-2023-005');

-- Activités
INSERT INTO activites (nom, description, ville, pays, prix, duree_heures, categorie)
VALUES 
('Visite de la Tour Eiffel', 'Découvrez le monument emblématique de Paris', 'Paris', 'France', 25.00, 2.0, 'Culture'),
('Excursion en bateau sur la Seine', 'Admirez Paris depuis la Seine', 'Paris', 'France', 35.00, 1.5, 'Croisière'),
('Dégustation de vin à Bordeaux', 'Découvrez les grands crus bordelais', 'Bordeaux', 'France', 50.00, 3.0, 'Gastronomie'),
('Randonnée au Mont Blanc', 'Randonnée guidée sur les sentiers du Mont Blanc', 'Chamonix', 'France', 45.00, 5.0, 'Nature'),
('Visite du Musée du Louvre', 'Découvrez les chefs-d\'œuvre du Louvre', 'Paris', 'France', 17.00, 3.0, 'Culture'); 