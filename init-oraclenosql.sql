drop table hotel;
drop table hotel.review;

CREATE TABLE hotel (
  hotel_id   STRING,
  hotel_name STRING,
  PRIMARY KEY ( shard(hotel_id) )
);

CREATE TABLE hotel.review (
  review_id   STRING,
  client_name STRING,
  rating      INTEGER,
  comment     STRING,
  review_date STRING,
  PRIMARY KEY ( review_id )
);


INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H001", "Hôtel Belle Vue");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H002", "Auberge du Soleil");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H003", "Le Relais des Voyageurs");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H004", "Hôtel des Cimes");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H005", "Château de la Forêt");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H006", "Hôtel du Lac");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H007", "Auberge Montagnarde");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H008", "Palais de l'Océan");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H009", "Résidence du Parc");
INSERT INTO hotel (hotel_id, hotel_name) VALUES ("H010", "Maison d'Hôtes Provence");

INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0001", "Laura Chevalier", 3, "Salle de bain mal nettoyée.", "2024-03-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0002", "Thomas Petit", 2, "Salle de bain mal nettoyée.", "2023-12-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0003", "Lucie Bernard", 3, "Salle de bain mal nettoyée.", "2023-03-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0004", "Thomas Petit", 4, "Expérience inoubliable, je recommande vivement.", "2024-04-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0005", "Camille Robert", 1, "Service lent et chambre sale.", "2023-08-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0006", "Élodie Moreau", 4, "Séjour exceptionnel, personnel très accueillant.", "2024-02-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0007", "Thomas Petit", 1, "Très bruyant, difficile de dormir.", "2023-11-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0008", "Camille Robert", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-05-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0009", "Lucie Bernard", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-10-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0010", "Claire Lefèvre", 2, "Rapport qualité-prix mauvais.", "2024-01-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0011", "Camille Robert", 4, "Vue magnifique depuis la terrasse.", "2024-05-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0012", "Jean Dupont", 3, "Rapport qualité-prix mauvais.", "2023-10-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0013", "Thomas Petit", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-12-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0014", "Sophie Martin", 3, "Personnel peu aimable, décevant.", "2023-03-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0015", "Lucie Bernard", 5, "Expérience inoubliable, je recommande vivement.", "2023-02-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0016", "Julien Girard", 2, "Salle de bain mal nettoyée.", "2023-06-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0017", "Laura Chevalier", 1, "Service lent et chambre sale.", "2024-01-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0018", "Élodie Moreau", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-06-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0019", "Thomas Petit", 1, "Personnel peu aimable, décevant.", "2023-07-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0020", "Marc Durand", 3, "Personnel peu aimable, décevant.", "2023-11-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0021", "Claire Lefèvre", 2, "Rapport qualité-prix mauvais.", "2023-08-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0022", "Jean Dupont", 2, "Très bruyant, difficile de dormir.", "2023-11-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0023", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2024-05-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0024", "Lucie Bernard", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-01-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0025", "Jean Dupont", 3, "Service lent et chambre sale.", "2023-02-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0026", "Élodie Moreau", 5, "Expérience inoubliable, je recommande vivement.", "2023-06-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0027", "Élodie Moreau", 3, "Service lent et chambre sale.", "2023-03-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0028", "Thomas Petit", 4, "Expérience inoubliable, je recommande vivement.", "2024-05-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0029", "Claire Lefèvre", 4, "Expérience inoubliable, je recommande vivement.", "2023-01-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0030", "Camille Robert", 3, "Salle de bain mal nettoyée.", "2023-07-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0031", "Thomas Petit", 3, "Service lent et chambre sale.", "2023-11-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0032", "Lucie Bernard", 4, "Vue magnifique depuis la terrasse.", "2023-07-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0033", "Sophie Martin", 5, "Expérience inoubliable, je recommande vivement.", "2023-10-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0034", "Claire Lefèvre", 3, "Rapport qualité-prix mauvais.", "2023-02-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0035", "Élodie Moreau", 1, "Très bruyant, difficile de dormir.", "2024-04-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0036", "Claire Lefèvre", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-10-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0037", "Sophie Martin", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-12-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0038", "Marc Durand", 4, "Vue magnifique depuis la terrasse.", "2024-02-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0039", "Camille Robert", 2, "Salle de bain mal nettoyée.", "2023-03-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0040", "Laura Chevalier", 2, "Rapport qualité-prix mauvais.", "2023-10-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0041", "Marc Durand", 3, "Service lent et chambre sale.", "2024-04-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0042", "Lucie Bernard", 3, "Très bruyant, difficile de dormir.", "2023-04-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0043", "Laura Chevalier", 2, "Très bruyant, difficile de dormir.", "2024-01-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0044", "Thomas Petit", 2, "Personnel peu aimable, décevant.", "2023-08-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0045", "Camille Robert", 4, "Vue magnifique depuis la terrasse.", "2023-02-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0046", "Élodie Moreau", 2, "Personnel peu aimable, décevant.", "2024-05-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0047", "Thomas Petit", 1, "Salle de bain mal nettoyée.", "2023-08-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0048", "Laura Chevalier", 1, "Service lent et chambre sale.", "2023-05-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0049", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-08-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0050", "Élodie Moreau", 1, "Très bruyant, difficile de dormir.", "2024-02-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0051", "Claire Lefèvre", 5, "Expérience inoubliable, je recommande vivement.", "2023-06-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0052", "Thomas Petit", 4, "Expérience inoubliable, je recommande vivement.", "2024-01-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0053", "Laura Chevalier", 2, "Rapport qualité-prix mauvais.", "2023-03-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0054", "Thomas Petit", 3, "Très bruyant, difficile de dormir.", "2023-11-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0055", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2024-04-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0056", "Marc Durand", 3, "Rapport qualité-prix mauvais.", "2024-04-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0057", "Marc Durand", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-03-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0058", "Marc Durand", 1, "Service lent et chambre sale.", "2023-07-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0059", "Thomas Petit", 4, "Vue magnifique depuis la terrasse.", "2023-09-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0060", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2024-03-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0061", "Camille Robert", 1, "Rapport qualité-prix mauvais.", "2023-03-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0062", "Camille Robert", 1, "Salle de bain mal nettoyée.", "2023-05-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0063", "Sophie Martin", 1, "Rapport qualité-prix mauvais.", "2023-08-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0064", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2023-08-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0065", "Camille Robert", 3, "Très bruyant, difficile de dormir.", "2023-02-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0066", "Laura Chevalier", 3, "Personnel peu aimable, décevant.", "2023-08-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0067", "Marc Durand", 2, "Très bruyant, difficile de dormir.", "2023-06-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0068", "Julien Girard", 1, "Très bruyant, difficile de dormir.", "2023-07-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0069", "Thomas Petit", 3, "Très bruyant, difficile de dormir.", "2023-03-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0070", "Camille Robert", 3, "Service lent et chambre sale.", "2024-01-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0071", "Lucie Bernard", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-04-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0072", "Laura Chevalier", 3, "Personnel peu aimable, décevant.", "2023-07-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0073", "Sophie Martin", 5, "Expérience inoubliable, je recommande vivement.", "2023-09-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0074", "Camille Robert", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-08-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0075", "Lucie Bernard", 2, "Rapport qualité-prix mauvais.", "2023-08-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0076", "Lucie Bernard", 2, "Service lent et chambre sale.", "2023-05-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0077", "Thomas Petit", 2, "Très bruyant, difficile de dormir.", "2023-03-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0078", "Élodie Moreau", 3, "Service lent et chambre sale.", "2023-09-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0079", "Julien Girard", 1, "Personnel peu aimable, décevant.", "2023-03-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0080", "Sophie Martin", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-10-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0081", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2023-04-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0082", "Julien Girard", 1, "Salle de bain mal nettoyée.", "2024-03-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0083", "Thomas Petit", 2, "Très bruyant, difficile de dormir.", "2024-03-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0084", "Jean Dupont", 1, "Très bruyant, difficile de dormir.", "2023-04-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0085", "Thomas Petit", 1, "Rapport qualité-prix mauvais.", "2023-10-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0086", "Camille Robert", 4, "Chambre spacieuse et confortable.", "2023-10-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0087", "Lucie Bernard", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-06-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0088", "Élodie Moreau", 3, "Personnel peu aimable, décevant.", "2024-03-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0089", "Sophie Martin", 4, "Chambre spacieuse et confortable.", "2023-04-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0090", "Élodie Moreau", 4, "Vue magnifique depuis la terrasse.", "2024-05-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0091", "Marc Durand", 3, "Personnel peu aimable, décevant.", "2024-04-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0092", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0093", "Camille Robert", 1, "Service lent et chambre sale.", "2023-11-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0094", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2023-09-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0095", "Marc Durand", 3, "Très bruyant, difficile de dormir.", "2023-07-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0096", "Thomas Petit", 1, "Service lent et chambre sale.", "2023-07-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0097", "Marc Durand", 2, "Service lent et chambre sale.", "2023-01-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0098", "Lucie Bernard", 5, "Vue magnifique depuis la terrasse.", "2023-11-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0099", "Thomas Petit", 4, "Expérience inoubliable, je recommande vivement.", "2023-03-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0100", "Claire Lefèvre", 3, "Salle de bain mal nettoyée.", "2024-04-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0101", "Jean Dupont", 3, "Très bruyant, difficile de dormir.", "2023-12-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0102", "Jean Dupont", 4, "Chambre spacieuse et confortable.", "2023-11-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0103", "Thomas Petit", 2, "Très bruyant, difficile de dormir.", "2023-12-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0104", "Claire Lefèvre", 1, "Très bruyant, difficile de dormir.", "2023-07-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0105", "Thomas Petit", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-01-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0106", "Camille Robert", 5, "Expérience inoubliable, je recommande vivement.", "2023-02-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0107", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2024-01-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0108", "Jean Dupont", 1, "Rapport qualité-prix mauvais.", "2023-08-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0109", "Élodie Moreau", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-10-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0110", "Sophie Martin", 2, "Service lent et chambre sale.", "2023-07-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0111", "Laura Chevalier", 3, "Salle de bain mal nettoyée.", "2023-06-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0112", "Camille Robert", 1, "Salle de bain mal nettoyée.", "2023-09-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0113", "Jean Dupont", 4, "Vue magnifique depuis la terrasse.", "2023-11-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0114", "Julien Girard", 5, "Expérience inoubliable, je recommande vivement.", "2024-05-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0115", "Laura Chevalier", 3, "Personnel peu aimable, décevant.", "2023-12-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0116", "Thomas Petit", 3, "Service lent et chambre sale.", "2023-07-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0117", "Thomas Petit", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-07-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0118", "Sophie Martin", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-07-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0119", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2023-01-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0120", "Claire Lefèvre", 5, "Expérience inoubliable, je recommande vivement.", "2023-04-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0121", "Thomas Petit", 5, "Chambre spacieuse et confortable.", "2023-02-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0122", "Lucie Bernard", 2, "Rapport qualité-prix mauvais.", "2023-11-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0123", "Thomas Petit", 1, "Service lent et chambre sale.", "2024-01-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0124", "Thomas Petit", 3, "Salle de bain mal nettoyée.", "2023-10-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0125", "Élodie Moreau", 1, "Salle de bain mal nettoyée.", "2023-04-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0126", "Claire Lefèvre", 3, "Personnel peu aimable, décevant.", "2023-01-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0127", "Laura Chevalier", 1, "Très bruyant, difficile de dormir.", "2023-05-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0128", "Lucie Bernard", 1, "Personnel peu aimable, décevant.", "2024-04-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0129", "Camille Robert", 1, "Service lent et chambre sale.", "2023-03-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0130", "Claire Lefèvre", 2, "Salle de bain mal nettoyée.", "2023-08-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0131", "Marc Durand", 2, "Personnel peu aimable, décevant.", "2023-03-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0132", "Sophie Martin", 1, "Rapport qualité-prix mauvais.", "2023-10-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0133", "Julien Girard", 1, "Service lent et chambre sale.", "2023-04-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0134", "Laura Chevalier", 3, "Salle de bain mal nettoyée.", "2024-03-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0135", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-08-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0136", "Camille Robert", 5, "Vue magnifique depuis la terrasse.", "2023-04-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0137", "Marc Durand", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-07-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0138", "Élodie Moreau", 3, "Personnel peu aimable, décevant.", "2023-10-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0139", "Jean Dupont", 3, "Personnel peu aimable, décevant.", "2023-10-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0140", "Thomas Petit", 5, "Chambre spacieuse et confortable.", "2023-11-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0141", "Marc Durand", 2, "Rapport qualité-prix mauvais.", "2024-01-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0142", "Sophie Martin", 1, "Très bruyant, difficile de dormir.", "2023-01-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0143", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2023-02-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0144", "Élodie Moreau", 5, "Expérience inoubliable, je recommande vivement.", "2023-12-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0145", "Claire Lefèvre", 1, "Salle de bain mal nettoyée.", "2023-01-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0146", "Laura Chevalier", 2, "Service lent et chambre sale.", "2023-09-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0147", "Camille Robert", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0148", "Élodie Moreau", 3, "Personnel peu aimable, décevant.", "2023-03-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0149", "Thomas Petit", 2, "Service lent et chambre sale.", "2023-03-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0150", "Julien Girard", 4, "Chambre spacieuse et confortable.", "2023-09-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0151", "Thomas Petit", 1, "Personnel peu aimable, décevant.", "2023-08-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0152", "Sophie Martin", 3, "Personnel peu aimable, décevant.", "2023-06-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0153", "Sophie Martin", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-03-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0154", "Élodie Moreau", 4, "Vue magnifique depuis la terrasse.", "2023-11-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0155", "Julien Girard", 1, "Personnel peu aimable, décevant.", "2023-07-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0156", "Marc Durand", 1, "Personnel peu aimable, décevant.", "2024-02-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0157", "Julien Girard", 2, "Salle de bain mal nettoyée.", "2024-03-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0158", "Thomas Petit", 3, "Salle de bain mal nettoyée.", "2023-03-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0159", "Claire Lefèvre", 4, "Expérience inoubliable, je recommande vivement.", "2023-01-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0160", "Jean Dupont", 2, "Personnel peu aimable, décevant.", "2024-03-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0161", "Jean Dupont", 5, "Expérience inoubliable, je recommande vivement.", "2023-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0162", "Camille Robert", 1, "Rapport qualité-prix mauvais.", "2023-02-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0163", "Sophie Martin", 2, "Très bruyant, difficile de dormir.", "2023-01-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0164", "Laura Chevalier", 5, "Vue magnifique depuis la terrasse.", "2024-03-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0165", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0166", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-04-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0167", "Claire Lefèvre", 1, "Très bruyant, difficile de dormir.", "2024-05-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0168", "Élodie Moreau", 3, "Personnel peu aimable, décevant.", "2023-12-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0169", "Claire Lefèvre", 3, "Très bruyant, difficile de dormir.", "2024-03-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0170", "Julien Girard", 3, "Personnel peu aimable, décevant.", "2023-06-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0171", "Laura Chevalier", 3, "Rapport qualité-prix mauvais.", "2023-12-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0172", "Jean Dupont", 3, "Service lent et chambre sale.", "2023-04-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0173", "Marc Durand", 2, "Service lent et chambre sale.", "2024-03-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0174", "Sophie Martin", 2, "Très bruyant, difficile de dormir.", "2024-02-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0175", "Claire Lefèvre", 4, "Expérience inoubliable, je recommande vivement.", "2023-06-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0176", "Marc Durand", 2, "Salle de bain mal nettoyée.", "2023-01-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0177", "Thomas Petit", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-07-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0178", "Lucie Bernard", 2, "Service lent et chambre sale.", "2023-04-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0179", "Marc Durand", 4, "Vue magnifique depuis la terrasse.", "2023-03-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0180", "Claire Lefèvre", 1, "Très bruyant, difficile de dormir.", "2023-12-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0181", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2023-12-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0182", "Thomas Petit", 1, "Service lent et chambre sale.", "2024-04-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0183", "Marc Durand", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-07-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0184", "Julien Girard", 4, "Chambre spacieuse et confortable.", "2023-05-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0185", "Marc Durand", 3, "Service lent et chambre sale.", "2023-04-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0186", "Thomas Petit", 3, "Très bruyant, difficile de dormir.", "2024-02-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0187", "Marc Durand", 5, "Vue magnifique depuis la terrasse.", "2023-03-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0188", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2024-03-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0189", "Camille Robert", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-03-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0190", "Laura Chevalier", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0191", "Élodie Moreau", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-04-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0192", "Jean Dupont", 5, "Chambre spacieuse et confortable.", "2024-04-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0193", "Sophie Martin", 3, "Personnel peu aimable, décevant.", "2023-04-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0194", "Claire Lefèvre", 2, "Rapport qualité-prix mauvais.", "2024-04-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0195", "Thomas Petit", 5, "Expérience inoubliable, je recommande vivement.", "2023-03-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0196", "Sophie Martin", 2, "Service lent et chambre sale.", "2023-02-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0197", "Camille Robert", 3, "Service lent et chambre sale.", "2023-01-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0198", "Jean Dupont", 2, "Service lent et chambre sale.", "2024-01-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0199", "Laura Chevalier", 5, "Vue magnifique depuis la terrasse.", "2024-01-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0200", "Thomas Petit", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-11-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0201", "Thomas Petit", 1, "Très bruyant, difficile de dormir.", "2023-03-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0202", "Jean Dupont", 2, "Salle de bain mal nettoyée.", "2023-04-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0203", "Claire Lefèvre", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-05-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0204", "Marc Durand", 5, "Chambre spacieuse et confortable.", "2023-10-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0205", "Julien Girard", 1, "Rapport qualité-prix mauvais.", "2024-01-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0206", "Jean Dupont", 2, "Service lent et chambre sale.", "2023-10-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0207", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2023-04-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0208", "Camille Robert", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-09-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0209", "Marc Durand", 4, "Chambre spacieuse et confortable.", "2023-07-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0210", "Jean Dupont", 1, "Personnel peu aimable, décevant.", "2024-01-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0211", "Laura Chevalier", 2, "Très bruyant, difficile de dormir.", "2023-07-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0212", "Marc Durand", 2, "Très bruyant, difficile de dormir.", "2023-04-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0213", "Julien Girard", 1, "Rapport qualité-prix mauvais.", "2023-12-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0214", "Thomas Petit", 1, "Personnel peu aimable, décevant.", "2023-03-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0215", "Jean Dupont", 1, "Salle de bain mal nettoyée.", "2024-04-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0216", "Lucie Bernard", 1, "Service lent et chambre sale.", "2023-10-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0217", "Julien Girard", 5, "Vue magnifique depuis la terrasse.", "2023-02-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0218", "Élodie Moreau", 3, "Rapport qualité-prix mauvais.", "2023-05-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0219", "Lucie Bernard", 5, "Chambre spacieuse et confortable.", "2023-12-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0220", "Jean Dupont", 2, "Salle de bain mal nettoyée.", "2023-10-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0221", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2023-03-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0222", "Laura Chevalier", 3, "Salle de bain mal nettoyée.", "2023-12-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0223", "Sophie Martin", 5, "Expérience inoubliable, je recommande vivement.", "2023-08-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0224", "Élodie Moreau", 2, "Personnel peu aimable, décevant.", "2024-04-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0225", "Julien Girard", 4, "Chambre spacieuse et confortable.", "2024-03-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0226", "Jean Dupont", 2, "Salle de bain mal nettoyée.", "2023-02-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0227", "Laura Chevalier", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-03-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0228", "Élodie Moreau", 2, "Personnel peu aimable, décevant.", "2024-01-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0229", "Sophie Martin", 1, "Rapport qualité-prix mauvais.", "2023-04-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0230", "Camille Robert", 1, "Service lent et chambre sale.", "2023-02-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0231", "Camille Robert", 5, "Expérience inoubliable, je recommande vivement.", "2024-03-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0232", "Lucie Bernard", 3, "Rapport qualité-prix mauvais.", "2023-07-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0233", "Claire Lefèvre", 2, "Service lent et chambre sale.", "2024-04-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0234", "Claire Lefèvre", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-08-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0235", "Julien Girard", 5, "Expérience inoubliable, je recommande vivement.", "2024-03-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0236", "Jean Dupont", 1, "Salle de bain mal nettoyée.", "2023-06-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0237", "Élodie Moreau", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0238", "Claire Lefèvre", 3, "Personnel peu aimable, décevant.", "2023-10-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0239", "Jean Dupont", 3, "Service lent et chambre sale.", "2023-05-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0240", "Laura Chevalier", 3, "Rapport qualité-prix mauvais.", "2023-02-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0241", "Sophie Martin", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-10-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0242", "Lucie Bernard", 5, "Expérience inoubliable, je recommande vivement.", "2023-04-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0243", "Camille Robert", 2, "Service lent et chambre sale.", "2023-07-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0244", "Laura Chevalier", 4, "Chambre spacieuse et confortable.", "2023-06-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0245", "Lucie Bernard", 3, "Très bruyant, difficile de dormir.", "2023-06-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0246", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2024-04-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0247", "Julien Girard", 3, "Personnel peu aimable, décevant.", "2023-07-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0248", "Laura Chevalier", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-05-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0249", "Lucie Bernard", 3, "Service lent et chambre sale.", "2024-03-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0250", "Élodie Moreau", 2, "Service lent et chambre sale.", "2023-04-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0251", "Claire Lefèvre", 4, "Chambre spacieuse et confortable.", "2024-05-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0252", "Julien Girard", 1, "Très bruyant, difficile de dormir.", "2023-03-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0253", "Claire Lefèvre", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-06-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0254", "Sophie Martin", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-09-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0255", "Camille Robert", 3, "Service lent et chambre sale.", "2023-05-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0256", "Laura Chevalier", 3, "Rapport qualité-prix mauvais.", "2023-06-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0257", "Lucie Bernard", 2, "Rapport qualité-prix mauvais.", "2023-09-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0258", "Sophie Martin", 3, "Service lent et chambre sale.", "2023-06-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0259", "Julien Girard", 1, "Rapport qualité-prix mauvais.", "2024-02-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0260", "Laura Chevalier", 1, "Très bruyant, difficile de dormir.", "2024-03-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0261", "Élodie Moreau", 4, "Expérience inoubliable, je recommande vivement.", "2024-01-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0262", "Julien Girard", 3, "Salle de bain mal nettoyée.", "2024-04-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0263", "Camille Robert", 3, "Rapport qualité-prix mauvais.", "2023-10-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0264", "Jean Dupont", 1, "Service lent et chambre sale.", "2023-05-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0265", "Thomas Petit", 4, "Chambre spacieuse et confortable.", "2023-10-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0266", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2024-03-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0267", "Sophie Martin", 3, "Service lent et chambre sale.", "2023-11-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0268", "Jean Dupont", 5, "Expérience inoubliable, je recommande vivement.", "2023-06-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0269", "Julien Girard", 2, "Très bruyant, difficile de dormir.", "2024-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0270", "Thomas Petit", 5, "Expérience inoubliable, je recommande vivement.", "2023-06-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0271", "Laura Chevalier", 1, "Personnel peu aimable, décevant.", "2024-04-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0272", "Thomas Petit", 1, "Service lent et chambre sale.", "2023-03-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0273", "Julien Girard", 2, "Très bruyant, difficile de dormir.", "2023-01-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0274", "Jean Dupont", 1, "Salle de bain mal nettoyée.", "2024-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0275", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2023-03-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0276", "Lucie Bernard", 1, "Très bruyant, difficile de dormir.", "2023-12-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0277", "Sophie Martin", 1, "Salle de bain mal nettoyée.", "2023-04-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0278", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2023-10-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0279", "Thomas Petit", 1, "Très bruyant, difficile de dormir.", "2024-04-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0280", "Claire Lefèvre", 4, "Séjour exceptionnel, personnel très accueillant.", "2024-02-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0281", "Marc Durand", 5, "Expérience inoubliable, je recommande vivement.", "2024-03-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0282", "Julien Girard", 1, "Rapport qualité-prix mauvais.", "2024-04-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0283", "Lucie Bernard", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-09-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0284", "Julien Girard", 3, "Salle de bain mal nettoyée.", "2023-01-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0285", "Marc Durand", 2, "Salle de bain mal nettoyée.", "2023-10-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0286", "Sophie Martin", 3, "Salle de bain mal nettoyée.", "2023-10-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0287", "Laura Chevalier", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-10-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0288", "Marc Durand", 4, "Chambre spacieuse et confortable.", "2024-03-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0289", "Thomas Petit", 2, "Rapport qualité-prix mauvais.", "2023-08-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0290", "Lucie Bernard", 5, "Expérience inoubliable, je recommande vivement.", "2023-03-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0291", "Jean Dupont", 4, "Expérience inoubliable, je recommande vivement.", "2023-11-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0292", "Laura Chevalier", 5, "Chambre spacieuse et confortable.", "2024-04-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0293", "Marc Durand", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-06-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0294", "Camille Robert", 3, "Salle de bain mal nettoyée.", "2024-03-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0295", "Thomas Petit", 5, "Expérience inoubliable, je recommande vivement.", "2023-06-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0296", "Julien Girard", 5, "Expérience inoubliable, je recommande vivement.", "2023-01-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0297", "Jean Dupont", 1, "Rapport qualité-prix mauvais.", "2024-01-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0298", "Lucie Bernard", 4, "Vue magnifique depuis la terrasse.", "2023-10-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0299", "Sophie Martin", 2, "Service lent et chambre sale.", "2023-02-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0300", "Lucie Bernard", 1, "Service lent et chambre sale.", "2024-03-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0301", "Marc Durand", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-07-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0302", "Marc Durand", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-05-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0303", "Élodie Moreau", 3, "Salle de bain mal nettoyée.", "2024-01-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0304", "Laura Chevalier", 4, "Expérience inoubliable, je recommande vivement.", "2023-08-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0305", "Sophie Martin", 2, "Salle de bain mal nettoyée.", "2023-08-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0306", "Laura Chevalier", 4, "Expérience inoubliable, je recommande vivement.", "2024-02-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0307", "Thomas Petit", 1, "Service lent et chambre sale.", "2024-02-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0308", "Claire Lefèvre", 4, "Vue magnifique depuis la terrasse.", "2023-07-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0309", "Julien Girard", 1, "Salle de bain mal nettoyée.", "2023-06-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0310", "Lucie Bernard", 5, "Chambre spacieuse et confortable.", "2023-08-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0311", "Laura Chevalier", 1, "Très bruyant, difficile de dormir.", "2023-09-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0312", "Sophie Martin", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-02-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0313", "Laura Chevalier", 4, "Vue magnifique depuis la terrasse.", "2024-03-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0314", "Marc Durand", 2, "Service lent et chambre sale.", "2023-10-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0315", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2023-03-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0316", "Thomas Petit", 2, "Personnel peu aimable, décevant.", "2023-06-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0317", "Camille Robert", 4, "Vue magnifique depuis la terrasse.", "2023-12-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0318", "Julien Girard", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-04-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0319", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2023-03-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0320", "Julien Girard", 2, "Personnel peu aimable, décevant.", "2023-10-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0321", "Laura Chevalier", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-03-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0322", "Claire Lefèvre", 5, "Vue magnifique depuis la terrasse.", "2024-01-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0323", "Laura Chevalier", 5, "Chambre spacieuse et confortable.", "2023-07-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0324", "Marc Durand", 2, "Service lent et chambre sale.", "2023-03-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0325", "Élodie Moreau", 3, "Personnel peu aimable, décevant.", "2023-06-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0326", "Élodie Moreau", 3, "Salle de bain mal nettoyée.", "2023-11-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0327", "Jean Dupont", 2, "Personnel peu aimable, décevant.", "2024-02-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0328", "Sophie Martin", 5, "Chambre spacieuse et confortable.", "2023-08-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0329", "Élodie Moreau", 5, "Expérience inoubliable, je recommande vivement.", "2023-02-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0330", "Jean Dupont", 1, "Salle de bain mal nettoyée.", "2023-08-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0331", "Camille Robert", 4, "Expérience inoubliable, je recommande vivement.", "2024-05-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0332", "Camille Robert", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-01-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0333", "Jean Dupont", 1, "Service lent et chambre sale.", "2023-06-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0334", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2023-04-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0335", "Sophie Martin", 5, "Chambre spacieuse et confortable.", "2023-02-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0336", "Jean Dupont", 2, "Très bruyant, difficile de dormir.", "2023-01-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0337", "Claire Lefèvre", 3, "Salle de bain mal nettoyée.", "2023-02-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0338", "Marc Durand", 4, "Chambre spacieuse et confortable.", "2023-09-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0339", "Camille Robert", 2, "Personnel peu aimable, décevant.", "2023-06-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0340", "Thomas Petit", 2, "Personnel peu aimable, décevant.", "2023-08-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0341", "Lucie Bernard", 2, "Très bruyant, difficile de dormir.", "2023-08-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0342", "Claire Lefèvre", 2, "Service lent et chambre sale.", "2023-07-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0343", "Julien Girard", 1, "Service lent et chambre sale.", "2023-08-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0344", "Thomas Petit", 2, "Très bruyant, difficile de dormir.", "2023-03-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0345", "Laura Chevalier", 2, "Rapport qualité-prix mauvais.", "2023-04-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0346", "Sophie Martin", 2, "Salle de bain mal nettoyée.", "2023-08-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0347", "Claire Lefèvre", 4, "Expérience inoubliable, je recommande vivement.", "2023-04-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0348", "Lucie Bernard", 1, "Personnel peu aimable, décevant.", "2024-02-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0349", "Sophie Martin", 4, "Expérience inoubliable, je recommande vivement.", "2023-10-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0350", "Élodie Moreau", 1, "Très bruyant, difficile de dormir.", "2023-01-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0351", "Sophie Martin", 2, "Très bruyant, difficile de dormir.", "2023-10-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0352", "Julien Girard", 1, "Personnel peu aimable, décevant.", "2023-05-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0353", "Camille Robert", 3, "Très bruyant, difficile de dormir.", "2023-10-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0354", "Élodie Moreau", 1, "Personnel peu aimable, décevant.", "2023-05-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0355", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2023-03-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0356", "Marc Durand", 4, "Expérience inoubliable, je recommande vivement.", "2024-03-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0357", "Lucie Bernard", 1, "Salle de bain mal nettoyée.", "2024-02-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0358", "Lucie Bernard", 1, "Personnel peu aimable, décevant.", "2023-09-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0359", "Jean Dupont", 3, "Très bruyant, difficile de dormir.", "2023-07-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0360", "Lucie Bernard", 1, "Salle de bain mal nettoyée.", "2023-05-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0361", "Camille Robert", 5, "Expérience inoubliable, je recommande vivement.", "2023-07-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0362", "Camille Robert", 5, "Vue magnifique depuis la terrasse.", "2024-01-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0363", "Camille Robert", 2, "Personnel peu aimable, décevant.", "2023-04-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0364", "Lucie Bernard", 1, "Rapport qualité-prix mauvais.", "2024-01-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0365", "Thomas Petit", 3, "Salle de bain mal nettoyée.", "2024-03-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0366", "Claire Lefèvre", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0367", "Marc Durand", 5, "Expérience inoubliable, je recommande vivement.", "2023-07-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0368", "Marc Durand", 5, "Chambre spacieuse et confortable.", "2024-02-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0369", "Jean Dupont", 3, "Personnel peu aimable, décevant.", "2023-07-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0370", "Sophie Martin", 5, "Expérience inoubliable, je recommande vivement.", "2023-11-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0371", "Claire Lefèvre", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-11-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0372", "Laura Chevalier", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-06-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0373", "Julien Girard", 4, "Expérience inoubliable, je recommande vivement.", "2023-01-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0374", "Thomas Petit", 2, "Personnel peu aimable, décevant.", "2023-05-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0375", "Thomas Petit", 1, "Très bruyant, difficile de dormir.", "2024-03-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0376", "Thomas Petit", 1, "Salle de bain mal nettoyée.", "2024-02-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0377", "Sophie Martin", 1, "Rapport qualité-prix mauvais.", "2023-03-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0378", "Claire Lefèvre", 2, "Service lent et chambre sale.", "2023-09-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0379", "Marc Durand", 2, "Salle de bain mal nettoyée.", "2023-05-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0380", "Claire Lefèvre", 3, "Service lent et chambre sale.", "2023-12-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0381", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2024-03-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0382", "Thomas Petit", 3, "Très bruyant, difficile de dormir.", "2023-02-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0383", "Camille Robert", 5, "Chambre spacieuse et confortable.", "2023-02-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0384", "Sophie Martin", 4, "Expérience inoubliable, je recommande vivement.", "2023-10-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0385", "Claire Lefèvre", 5, "Vue magnifique depuis la terrasse.", "2023-09-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0386", "Élodie Moreau", 3, "Service lent et chambre sale.", "2023-08-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0387", "Claire Lefèvre", 2, "Rapport qualité-prix mauvais.", "2023-03-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0388", "Lucie Bernard", 3, "Salle de bain mal nettoyée.", "2024-04-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0389", "Lucie Bernard", 4, "Chambre spacieuse et confortable.", "2023-12-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0390", "Marc Durand", 1, "Service lent et chambre sale.", "2023-06-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0391", "Jean Dupont", 3, "Salle de bain mal nettoyée.", "2024-02-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0392", "Sophie Martin", 2, "Rapport qualité-prix mauvais.", "2023-11-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0393", "Sophie Martin", 3, "Service lent et chambre sale.", "2023-11-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0394", "Camille Robert", 3, "Salle de bain mal nettoyée.", "2023-07-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0395", "Claire Lefèvre", 2, "Salle de bain mal nettoyée.", "2023-12-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0396", "Claire Lefèvre", 1, "Très bruyant, difficile de dormir.", "2023-07-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0397", "Jean Dupont", 1, "Rapport qualité-prix mauvais.", "2023-09-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0398", "Laura Chevalier", 3, "Service lent et chambre sale.", "2024-03-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0399", "Marc Durand", 4, "Vue magnifique depuis la terrasse.", "2024-03-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0400", "Laura Chevalier", 3, "Service lent et chambre sale.", "2023-08-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0401", "Marc Durand", 3, "Très bruyant, difficile de dormir.", "2024-02-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0402", "Marc Durand", 5, "Chambre spacieuse et confortable.", "2023-07-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0403", "Julien Girard", 4, "Expérience inoubliable, je recommande vivement.", "2024-03-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0404", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2024-04-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0405", "Marc Durand", 3, "Personnel peu aimable, décevant.", "2023-04-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0406", "Sophie Martin", 2, "Personnel peu aimable, décevant.", "2023-02-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0407", "Claire Lefèvre", 3, "Très bruyant, difficile de dormir.", "2023-02-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0408", "Marc Durand", 4, "Expérience inoubliable, je recommande vivement.", "2023-01-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0409", "Camille Robert", 1, "Salle de bain mal nettoyée.", "2024-05-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0410", "Lucie Bernard", 1, "Rapport qualité-prix mauvais.", "2024-02-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0411", "Jean Dupont", 1, "Rapport qualité-prix mauvais.", "2023-12-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0412", "Claire Lefèvre", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0413", "Camille Robert", 3, "Personnel peu aimable, décevant.", "2023-03-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0414", "Thomas Petit", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-01-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0415", "Élodie Moreau", 3, "Très bruyant, difficile de dormir.", "2023-03-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0416", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2023-05-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0417", "Julien Girard", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0418", "Sophie Martin", 1, "Très bruyant, difficile de dormir.", "2023-10-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0419", "Camille Robert", 4, "Chambre spacieuse et confortable.", "2023-05-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0420", "Camille Robert", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-06-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0421", "Claire Lefèvre", 1, "Salle de bain mal nettoyée.", "2023-08-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0422", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2023-03-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0423", "Marc Durand", 2, "Rapport qualité-prix mauvais.", "2024-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0424", "Sophie Martin", 2, "Salle de bain mal nettoyée.", "2023-07-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0425", "Laura Chevalier", 1, "Personnel peu aimable, décevant.", "2023-01-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0426", "Julien Girard", 2, "Personnel peu aimable, décevant.", "2023-05-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0427", "Lucie Bernard", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-05-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0428", "Thomas Petit", 2, "Rapport qualité-prix mauvais.", "2023-03-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0429", "Sophie Martin", 2, "Très bruyant, difficile de dormir.", "2023-05-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0430", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2023-11-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0431", "Marc Durand", 3, "Personnel peu aimable, décevant.", "2023-01-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0432", "Laura Chevalier", 3, "Service lent et chambre sale.", "2023-09-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0433", "Thomas Petit", 2, "Service lent et chambre sale.", "2023-10-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0434", "Claire Lefèvre", 3, "Personnel peu aimable, décevant.", "2023-05-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0435", "Thomas Petit", 3, "Très bruyant, difficile de dormir.", "2024-04-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0436", "Sophie Martin", 5, "Vue magnifique depuis la terrasse.", "2023-06-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0437", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2023-05-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0438", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2024-04-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0439", "Camille Robert", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-05-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0440", "Élodie Moreau", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-02-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0441", "Sophie Martin", 1, "Service lent et chambre sale.", "2023-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0442", "Jean Dupont", 3, "Rapport qualité-prix mauvais.", "2024-03-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0443", "Camille Robert", 3, "Personnel peu aimable, décevant.", "2024-02-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0444", "Lucie Bernard", 1, "Très bruyant, difficile de dormir.", "2023-03-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0445", "Camille Robert", 5, "Chambre spacieuse et confortable.", "2023-05-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0446", "Laura Chevalier", 2, "Très bruyant, difficile de dormir.", "2024-01-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0447", "Claire Lefèvre", 3, "Très bruyant, difficile de dormir.", "2023-10-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0448", "Marc Durand", 1, "Très bruyant, difficile de dormir.", "2023-10-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0449", "Sophie Martin", 1, "Rapport qualité-prix mauvais.", "2023-09-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0450", "Julien Girard", 5, "Vue magnifique depuis la terrasse.", "2023-03-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0451", "Julien Girard", 4, "Vue magnifique depuis la terrasse.", "2023-05-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0452", "Camille Robert", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-12-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0453", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2023-12-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0454", "Camille Robert", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-04-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0455", "Thomas Petit", 2, "Salle de bain mal nettoyée.", "2023-09-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0456", "Julien Girard", 5, "Expérience inoubliable, je recommande vivement.", "2023-10-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0457", "Julien Girard", 1, "Service lent et chambre sale.", "2023-12-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0458", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2024-05-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0459", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2023-06-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0460", "Julien Girard", 5, "Chambre spacieuse et confortable.", "2023-09-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0461", "Claire Lefèvre", 2, "Très bruyant, difficile de dormir.", "2023-02-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0462", "Lucie Bernard", 2, "Rapport qualité-prix mauvais.", "2024-03-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0463", "Laura Chevalier", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-03-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0464", "Claire Lefèvre", 4, "Expérience inoubliable, je recommande vivement.", "2024-03-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0465", "Lucie Bernard", 1, "Service lent et chambre sale.", "2023-10-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0466", "Lucie Bernard", 5, "Vue magnifique depuis la terrasse.", "2024-03-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0467", "Laura Chevalier", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-05-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0468", "Julien Girard", 3, "Service lent et chambre sale.", "2023-06-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0469", "Thomas Petit", 3, "Personnel peu aimable, décevant.", "2023-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0470", "Camille Robert", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-02-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0471", "Camille Robert", 2, "Service lent et chambre sale.", "2024-02-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0472", "Thomas Petit", 1, "Personnel peu aimable, décevant.", "2023-03-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0473", "Élodie Moreau", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0474", "Laura Chevalier", 2, "Très bruyant, difficile de dormir.", "2023-05-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0475", "Marc Durand", 4, "Vue magnifique depuis la terrasse.", "2023-06-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0476", "Sophie Martin", 3, "Salle de bain mal nettoyée.", "2023-05-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0477", "Lucie Bernard", 4, "Chambre spacieuse et confortable.", "2023-12-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0478", "Camille Robert", 4, "Chambre spacieuse et confortable.", "2023-12-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0479", "Camille Robert", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-03-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0480", "Julien Girard", 3, "Personnel peu aimable, décevant.", "2024-05-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0481", "Élodie Moreau", 2, "Personnel peu aimable, décevant.", "2023-05-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0482", "Thomas Petit", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-04-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0483", "Élodie Moreau", 1, "Rapport qualité-prix mauvais.", "2023-09-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0484", "Sophie Martin", 1, "Rapport qualité-prix mauvais.", "2023-09-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0485", "Claire Lefèvre", 3, "Salle de bain mal nettoyée.", "2023-12-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0486", "Laura Chevalier", 4, "Vue magnifique depuis la terrasse.", "2023-07-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0487", "Claire Lefèvre", 2, "Personnel peu aimable, décevant.", "2023-10-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0488", "Marc Durand", 2, "Service lent et chambre sale.", "2023-11-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0489", "Camille Robert", 4, "Chambre spacieuse et confortable.", "2023-05-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0490", "Jean Dupont", 3, "Personnel peu aimable, décevant.", "2023-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0491", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2023-10-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0492", "Sophie Martin", 1, "Personnel peu aimable, décevant.", "2023-03-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0493", "Marc Durand", 5, "Expérience inoubliable, je recommande vivement.", "2023-08-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0494", "Lucie Bernard", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-02-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0495", "Marc Durand", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-12-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0496", "Sophie Martin", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-02-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0497", "Élodie Moreau", 1, "Service lent et chambre sale.", "2024-02-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0498", "Lucie Bernard", 2, "Personnel peu aimable, décevant.", "2023-10-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0499", "Jean Dupont", 1, "Rapport qualité-prix mauvais.", "2023-10-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0500", "Jean Dupont", 5, "Expérience inoubliable, je recommande vivement.", "2024-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0501", "Laura Chevalier", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-06-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0502", "Jean Dupont", 2, "Salle de bain mal nettoyée.", "2023-01-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0503", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2023-06-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0504", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2024-04-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0505", "Laura Chevalier", 2, "Rapport qualité-prix mauvais.", "2024-04-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0506", "Laura Chevalier", 1, "Rapport qualité-prix mauvais.", "2024-01-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0507", "Julien Girard", 5, "Chambre spacieuse et confortable.", "2024-04-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0508", "Jean Dupont", 1, "Rapport qualité-prix mauvais.", "2023-04-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0509", "Jean Dupont", 2, "Rapport qualité-prix mauvais.", "2024-03-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0510", "Lucie Bernard", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-05-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0511", "Marc Durand", 1, "Service lent et chambre sale.", "2023-09-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0512", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2023-12-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0513", "Claire Lefèvre", 4, "Vue magnifique depuis la terrasse.", "2024-03-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0514", "Thomas Petit", 3, "Très bruyant, difficile de dormir.", "2023-04-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0515", "Lucie Bernard", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-12-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0516", "Laura Chevalier", 3, "Salle de bain mal nettoyée.", "2023-10-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0517", "Élodie Moreau", 4, "Vue magnifique depuis la terrasse.", "2024-03-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0518", "Camille Robert", 2, "Salle de bain mal nettoyée.", "2023-12-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0519", "Claire Lefèvre", 1, "Rapport qualité-prix mauvais.", "2023-01-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0520", "Thomas Petit", 5, "Expérience inoubliable, je recommande vivement.", "2024-01-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0521", "Sophie Martin", 1, "Salle de bain mal nettoyée.", "2023-04-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0522", "Claire Lefèvre", 1, "Salle de bain mal nettoyée.", "2023-09-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0523", "Lucie Bernard", 3, "Rapport qualité-prix mauvais.", "2023-11-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0524", "Claire Lefèvre", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-01-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0525", "Camille Robert", 3, "Très bruyant, difficile de dormir.", "2023-01-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0526", "Marc Durand", 5, "Vue magnifique depuis la terrasse.", "2024-02-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0527", "Marc Durand", 1, "Très bruyant, difficile de dormir.", "2023-11-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0528", "Thomas Petit", 3, "Très bruyant, difficile de dormir.", "2023-06-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0529", "Sophie Martin", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-12-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0530", "Jean Dupont", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-04-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0531", "Camille Robert", 3, "Salle de bain mal nettoyée.", "2023-06-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0532", "Laura Chevalier", 2, "Salle de bain mal nettoyée.", "2024-01-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0533", "Laura Chevalier", 2, "Rapport qualité-prix mauvais.", "2023-02-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0534", "Claire Lefèvre", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-03-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0535", "Laura Chevalier", 1, "Rapport qualité-prix mauvais.", "2023-05-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0536", "Marc Durand", 2, "Salle de bain mal nettoyée.", "2024-01-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0537", "Thomas Petit", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-10-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0538", "Jean Dupont", 1, "Service lent et chambre sale.", "2023-10-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0539", "Élodie Moreau", 3, "Très bruyant, difficile de dormir.", "2023-03-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0540", "Claire Lefèvre", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-08-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0541", "Lucie Bernard", 1, "Rapport qualité-prix mauvais.", "2023-11-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0542", "Élodie Moreau", 1, "Service lent et chambre sale.", "2023-08-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0543", "Élodie Moreau", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-07-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0544", "Lucie Bernard", 4, "Vue magnifique depuis la terrasse.", "2024-05-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0545", "Jean Dupont", 3, "Rapport qualité-prix mauvais.", "2023-01-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0546", "Claire Lefèvre", 5, "Chambre spacieuse et confortable.", "2023-03-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0547", "Thomas Petit", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-08-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0548", "Laura Chevalier", 2, "Service lent et chambre sale.", "2023-04-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0549", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2023-08-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0550", "Julien Girard", 1, "Personnel peu aimable, décevant.", "2024-02-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0551", "Julien Girard", 4, "Expérience inoubliable, je recommande vivement.", "2024-03-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0552", "Marc Durand", 1, "Rapport qualité-prix mauvais.", "2023-10-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0553", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2024-03-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0554", "Laura Chevalier", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-10-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0555", "Sophie Martin", 2, "Service lent et chambre sale.", "2024-03-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0556", "Sophie Martin", 5, "Chambre spacieuse et confortable.", "2023-10-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0557", "Laura Chevalier", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-02-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0558", "Julien Girard", 3, "Service lent et chambre sale.", "2023-05-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0559", "Lucie Bernard", 2, "Personnel peu aimable, décevant.", "2023-11-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0560", "Julien Girard", 1, "Rapport qualité-prix mauvais.", "2023-02-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0561", "Claire Lefèvre", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-05-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0562", "Élodie Moreau", 3, "Très bruyant, difficile de dormir.", "2023-12-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0563", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-09-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0564", "Claire Lefèvre", 3, "Très bruyant, difficile de dormir.", "2023-03-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0565", "Élodie Moreau", 4, "Expérience inoubliable, je recommande vivement.", "2023-12-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0566", "Camille Robert", 4, "Vue magnifique depuis la terrasse.", "2024-02-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0567", "Laura Chevalier", 1, "Rapport qualité-prix mauvais.", "2023-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0568", "Claire Lefèvre", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-08-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0569", "Marc Durand", 1, "Salle de bain mal nettoyée.", "2023-06-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0570", "Élodie Moreau", 1, "Salle de bain mal nettoyée.", "2023-10-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0571", "Camille Robert", 5, "Expérience inoubliable, je recommande vivement.", "2023-04-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0572", "Marc Durand", 2, "Personnel peu aimable, décevant.", "2023-01-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0573", "Sophie Martin", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-05-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0574", "Lucie Bernard", 5, "Expérience inoubliable, je recommande vivement.", "2024-01-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0575", "Laura Chevalier", 2, "Personnel peu aimable, décevant.", "2023-09-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0576", "Laura Chevalier", 1, "Très bruyant, difficile de dormir.", "2023-04-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0577", "Lucie Bernard", 1, "Service lent et chambre sale.", "2023-06-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0578", "Camille Robert", 2, "Salle de bain mal nettoyée.", "2023-03-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0579", "Sophie Martin", 5, "Expérience inoubliable, je recommande vivement.", "2023-09-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0580", "Laura Chevalier", 1, "Salle de bain mal nettoyée.", "2024-02-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0581", "Claire Lefèvre", 2, "Service lent et chambre sale.", "2024-05-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0582", "Marc Durand", 5, "Chambre spacieuse et confortable.", "2023-01-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0583", "Claire Lefèvre", 4, "Chambre spacieuse et confortable.", "2023-02-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0584", "Lucie Bernard", 1, "Personnel peu aimable, décevant.", "2023-07-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0585", "Lucie Bernard", 3, "Très bruyant, difficile de dormir.", "2023-05-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0586", "Julien Girard", 4, "Expérience inoubliable, je recommande vivement.", "2024-03-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0587", "Sophie Martin", 1, "Salle de bain mal nettoyée.", "2024-04-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0588", "Sophie Martin", 2, "Salle de bain mal nettoyée.", "2023-11-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0589", "Laura Chevalier", 5, "Expérience inoubliable, je recommande vivement.", "2024-02-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0590", "Jean Dupont", 4, "Chambre spacieuse et confortable.", "2024-01-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0591", "Élodie Moreau", 1, "Salle de bain mal nettoyée.", "2023-07-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0592", "Élodie Moreau", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-04-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0593", "Laura Chevalier", 5, "Vue magnifique depuis la terrasse.", "2023-01-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0594", "Claire Lefèvre", 2, "Rapport qualité-prix mauvais.", "2023-12-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0595", "Claire Lefèvre", 2, "Personnel peu aimable, décevant.", "2024-05-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0596", "Camille Robert", 2, "Personnel peu aimable, décevant.", "2024-04-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0597", "Julien Girard", 1, "Salle de bain mal nettoyée.", "2023-09-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0598", "Thomas Petit", 4, "Chambre spacieuse et confortable.", "2024-04-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0599", "Sophie Martin", 1, "Rapport qualité-prix mauvais.", "2023-09-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0600", "Thomas Petit", 3, "Personnel peu aimable, décevant.", "2023-03-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0601", "Jean Dupont", 1, "Service lent et chambre sale.", "2023-08-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0602", "Sophie Martin", 4, "Séjour exceptionnel, personnel très accueillant.", "2024-01-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0603", "Laura Chevalier", 1, "Salle de bain mal nettoyée.", "2023-11-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0604", "Claire Lefèvre", 4, "Expérience inoubliable, je recommande vivement.", "2023-08-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0605", "Marc Durand", 2, "Personnel peu aimable, décevant.", "2023-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0606", "Lucie Bernard", 1, "Service lent et chambre sale.", "2023-01-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0607", "Camille Robert", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-09-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0608", "Camille Robert", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-03-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0609", "Laura Chevalier", 3, "Très bruyant, difficile de dormir.", "2023-07-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0610", "Marc Durand", 4, "Vue magnifique depuis la terrasse.", "2024-05-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0611", "Marc Durand", 2, "Rapport qualité-prix mauvais.", "2023-04-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0612", "Claire Lefèvre", 3, "Salle de bain mal nettoyée.", "2023-06-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0613", "Sophie Martin", 4, "Vue magnifique depuis la terrasse.", "2023-09-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0614", "Jean Dupont", 1, "Salle de bain mal nettoyée.", "2023-05-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0615", "Thomas Petit", 1, "Rapport qualité-prix mauvais.", "2023-02-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0616", "Camille Robert", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-02-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0617", "Laura Chevalier", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-02-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0618", "Sophie Martin", 1, "Très bruyant, difficile de dormir.", "2023-12-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0619", "Lucie Bernard", 2, "Personnel peu aimable, décevant.", "2024-04-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0620", "Lucie Bernard", 5, "Chambre spacieuse et confortable.", "2023-03-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0621", "Julien Girard", 2, "Très bruyant, difficile de dormir.", "2023-04-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0622", "Jean Dupont", 1, "Service lent et chambre sale.", "2023-03-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0623", "Julien Girard", 4, "Chambre spacieuse et confortable.", "2023-05-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0624", "Jean Dupont", 3, "Personnel peu aimable, décevant.", "2023-12-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0625", "Élodie Moreau", 3, "Rapport qualité-prix mauvais.", "2023-11-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0626", "Sophie Martin", 3, "Rapport qualité-prix mauvais.", "2023-09-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0627", "Marc Durand", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-05-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0628", "Laura Chevalier", 4, "Séjour exceptionnel, personnel très accueillant.", "2024-02-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0629", "Camille Robert", 2, "Salle de bain mal nettoyée.", "2023-11-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0630", "Marc Durand", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-07-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0631", "Sophie Martin", 3, "Service lent et chambre sale.", "2023-09-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0632", "Laura Chevalier", 5, "Chambre spacieuse et confortable.", "2023-05-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0633", "Claire Lefèvre", 3, "Très bruyant, difficile de dormir.", "2023-12-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0634", "Marc Durand", 1, "Personnel peu aimable, décevant.", "2023-05-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0635", "Claire Lefèvre", 2, "Service lent et chambre sale.", "2023-01-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0636", "Marc Durand", 3, "Salle de bain mal nettoyée.", "2023-08-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0637", "Sophie Martin", 3, "Service lent et chambre sale.", "2024-01-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0638", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2023-03-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0639", "Julien Girard", 4, "Vue magnifique depuis la terrasse.", "2023-07-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0640", "Claire Lefèvre", 4, "Vue magnifique depuis la terrasse.", "2024-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0641", "Lucie Bernard", 3, "Très bruyant, difficile de dormir.", "2023-12-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0642", "Thomas Petit", 1, "Personnel peu aimable, décevant.", "2023-12-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0643", "Laura Chevalier", 2, "Personnel peu aimable, décevant.", "2024-05-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0644", "Sophie Martin", 3, "Rapport qualité-prix mauvais.", "2024-03-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0645", "Thomas Petit", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-04-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0646", "Élodie Moreau", 2, "Service lent et chambre sale.", "2023-04-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0647", "Jean Dupont", 1, "Très bruyant, difficile de dormir.", "2024-01-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0648", "Sophie Martin", 3, "Service lent et chambre sale.", "2023-07-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0649", "Marc Durand", 2, "Rapport qualité-prix mauvais.", "2023-10-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0650", "Jean Dupont", 4, "Chambre spacieuse et confortable.", "2023-02-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0651", "Claire Lefèvre", 2, "Très bruyant, difficile de dormir.", "2023-05-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0652", "Laura Chevalier", 5, "Expérience inoubliable, je recommande vivement.", "2023-12-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0653", "Thomas Petit", 1, "Service lent et chambre sale.", "2023-08-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0654", "Camille Robert", 1, "Salle de bain mal nettoyée.", "2024-04-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0655", "Julien Girard", 3, "Service lent et chambre sale.", "2023-02-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0656", "Marc Durand", 3, "Salle de bain mal nettoyée.", "2023-12-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0657", "Jean Dupont", 3, "Très bruyant, difficile de dormir.", "2024-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0658", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2023-01-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0659", "Lucie Bernard", 5, "Vue magnifique depuis la terrasse.", "2023-07-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0660", "Sophie Martin", 1, "Service lent et chambre sale.", "2023-07-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0661", "Sophie Martin", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-11-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0662", "Élodie Moreau", 5, "Expérience inoubliable, je recommande vivement.", "2024-04-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0663", "Camille Robert", 2, "Rapport qualité-prix mauvais.", "2023-12-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0664", "Julien Girard", 2, "Très bruyant, difficile de dormir.", "2023-07-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0665", "Marc Durand", 5, "Chambre spacieuse et confortable.", "2023-12-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0666", "Julien Girard", 3, "Service lent et chambre sale.", "2023-08-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0667", "Laura Chevalier", 5, "Chambre spacieuse et confortable.", "2023-09-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0668", "Élodie Moreau", 1, "Service lent et chambre sale.", "2023-11-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0669", "Élodie Moreau", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-03-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0670", "Marc Durand", 2, "Salle de bain mal nettoyée.", "2023-07-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0671", "Lucie Bernard", 4, "Vue magnifique depuis la terrasse.", "2023-11-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0672", "Marc Durand", 5, "Chambre spacieuse et confortable.", "2023-08-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0673", "Jean Dupont", 1, "Personnel peu aimable, décevant.", "2023-08-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0674", "Jean Dupont", 2, "Salle de bain mal nettoyée.", "2023-07-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0675", "Sophie Martin", 4, "Chambre spacieuse et confortable.", "2024-04-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0676", "Jean Dupont", 5, "Chambre spacieuse et confortable.", "2023-08-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0677", "Thomas Petit", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-11-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0678", "Jean Dupont", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-04-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0679", "Julien Girard", 1, "Salle de bain mal nettoyée.", "2024-04-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0680", "Laura Chevalier", 5, "Vue magnifique depuis la terrasse.", "2024-04-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0681", "Élodie Moreau", 4, "Chambre spacieuse et confortable.", "2023-11-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0682", "Thomas Petit", 3, "Très bruyant, difficile de dormir.", "2023-06-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0683", "Sophie Martin", 2, "Salle de bain mal nettoyée.", "2024-01-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0684", "Thomas Petit", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0685", "Jean Dupont", 2, "Salle de bain mal nettoyée.", "2024-04-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0686", "Camille Robert", 2, "Service lent et chambre sale.", "2024-01-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0687", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2023-06-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0688", "Élodie Moreau", 3, "Salle de bain mal nettoyée.", "2024-02-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0689", "Laura Chevalier", 1, "Service lent et chambre sale.", "2023-07-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0690", "Thomas Petit", 3, "Service lent et chambre sale.", "2023-12-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0691", "Claire Lefèvre", 5, "Chambre spacieuse et confortable.", "2024-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0692", "Claire Lefèvre", 5, "Chambre spacieuse et confortable.", "2023-07-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0693", "Julien Girard", 4, "Chambre spacieuse et confortable.", "2023-10-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0694", "Jean Dupont", 3, "Très bruyant, difficile de dormir.", "2023-10-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0695", "Marc Durand", 4, "Chambre spacieuse et confortable.", "2023-11-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0696", "Lucie Bernard", 3, "Très bruyant, difficile de dormir.", "2024-02-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0697", "Jean Dupont", 1, "Personnel peu aimable, décevant.", "2023-03-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0698", "Laura Chevalier", 2, "Salle de bain mal nettoyée.", "2023-07-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0699", "Jean Dupont", 3, "Rapport qualité-prix mauvais.", "2023-02-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0700", "Claire Lefèvre", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-04-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0701", "Jean Dupont", 1, "Rapport qualité-prix mauvais.", "2023-05-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0702", "Jean Dupont", 3, "Service lent et chambre sale.", "2023-10-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0703", "Jean Dupont", 3, "Service lent et chambre sale.", "2023-04-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0704", "Marc Durand", 1, "Salle de bain mal nettoyée.", "2023-01-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0705", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2024-01-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0706", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-09-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0707", "Laura Chevalier", 1, "Salle de bain mal nettoyée.", "2023-09-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0708", "Camille Robert", 1, "Très bruyant, difficile de dormir.", "2023-01-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0709", "Lucie Bernard", 3, "Service lent et chambre sale.", "2024-01-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0710", "Camille Robert", 5, "Vue magnifique depuis la terrasse.", "2024-02-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0711", "Thomas Petit", 2, "Très bruyant, difficile de dormir.", "2023-08-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0712", "Jean Dupont", 5, "Chambre spacieuse et confortable.", "2023-04-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0713", "Thomas Petit", 1, "Service lent et chambre sale.", "2023-07-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0714", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2023-12-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0715", "Thomas Petit", 5, "Expérience inoubliable, je recommande vivement.", "2024-04-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0716", "Jean Dupont", 2, "Salle de bain mal nettoyée.", "2023-09-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0717", "Laura Chevalier", 1, "Rapport qualité-prix mauvais.", "2023-12-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0718", "Laura Chevalier", 5, "Vue magnifique depuis la terrasse.", "2023-10-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0719", "Jean Dupont", 2, "Très bruyant, difficile de dormir.", "2023-05-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0720", "Sophie Martin", 3, "Rapport qualité-prix mauvais.", "2023-10-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0721", "Camille Robert", 3, "Salle de bain mal nettoyée.", "2024-03-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0722", "Julien Girard", 2, "Personnel peu aimable, décevant.", "2023-08-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0723", "Sophie Martin", 4, "Expérience inoubliable, je recommande vivement.", "2023-05-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0724", "Julien Girard", 4, "Chambre spacieuse et confortable.", "2023-11-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0725", "Julien Girard", 1, "Salle de bain mal nettoyée.", "2024-05-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0726", "Sophie Martin", 1, "Très bruyant, difficile de dormir.", "2024-01-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0727", "Sophie Martin", 4, "Expérience inoubliable, je recommande vivement.", "2023-02-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0728", "Lucie Bernard", 4, "Chambre spacieuse et confortable.", "2024-01-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0729", "Claire Lefèvre", 4, "Expérience inoubliable, je recommande vivement.", "2023-12-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0730", "Marc Durand", 4, "Chambre spacieuse et confortable.", "2023-01-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0731", "Lucie Bernard", 1, "Rapport qualité-prix mauvais.", "2023-05-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0732", "Marc Durand", 1, "Salle de bain mal nettoyée.", "2023-04-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0733", "Jean Dupont", 3, "Personnel peu aimable, décevant.", "2023-09-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0734", "Claire Lefèvre", 3, "Salle de bain mal nettoyée.", "2023-09-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0735", "Laura Chevalier", 5, "Chambre spacieuse et confortable.", "2023-08-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0736", "Jean Dupont", 3, "Service lent et chambre sale.", "2023-04-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0737", "Camille Robert", 5, "Expérience inoubliable, je recommande vivement.", "2023-07-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0738", "Élodie Moreau", 3, "Très bruyant, difficile de dormir.", "2023-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0739", "Laura Chevalier", 5, "Vue magnifique depuis la terrasse.", "2023-09-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0740", "Claire Lefèvre", 1, "Personnel peu aimable, décevant.", "2024-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0741", "Laura Chevalier", 3, "Service lent et chambre sale.", "2024-04-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0742", "Jean Dupont", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-07-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0743", "Jean Dupont", 2, "Rapport qualité-prix mauvais.", "2023-06-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0744", "Élodie Moreau", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-05-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0745", "Julien Girard", 3, "Personnel peu aimable, décevant.", "2023-01-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0746", "Lucie Bernard", 2, "Personnel peu aimable, décevant.", "2024-01-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0747", "Jean Dupont", 2, "Très bruyant, difficile de dormir.", "2024-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0748", "Élodie Moreau", 2, "Rapport qualité-prix mauvais.", "2024-02-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0749", "Laura Chevalier", 1, "Personnel peu aimable, décevant.", "2023-11-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0750", "Jean Dupont", 5, "Vue magnifique depuis la terrasse.", "2024-04-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0751", "Thomas Petit", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-01-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0752", "Claire Lefèvre", 3, "Très bruyant, difficile de dormir.", "2024-02-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0753", "Laura Chevalier", 2, "Service lent et chambre sale.", "2023-12-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0754", "Jean Dupont", 4, "Vue magnifique depuis la terrasse.", "2023-02-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0755", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2023-08-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0756", "Laura Chevalier", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-11-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0757", "Julien Girard", 1, "Très bruyant, difficile de dormir.", "2023-05-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0758", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2024-04-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0759", "Julien Girard", 4, "Expérience inoubliable, je recommande vivement.", "2023-02-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0760", "Thomas Petit", 5, "Vue magnifique depuis la terrasse.", "2023-01-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0761", "Marc Durand", 3, "Rapport qualité-prix mauvais.", "2023-10-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0762", "Jean Dupont", 2, "Service lent et chambre sale.", "2023-12-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0763", "Laura Chevalier", 3, "Rapport qualité-prix mauvais.", "2024-04-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0764", "Camille Robert", 5, "Vue magnifique depuis la terrasse.", "2023-11-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0765", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2023-04-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0766", "Thomas Petit", 1, "Salle de bain mal nettoyée.", "2023-12-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0767", "Laura Chevalier", 4, "Chambre spacieuse et confortable.", "2023-01-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0768", "Lucie Bernard", 5, "Vue magnifique depuis la terrasse.", "2023-11-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0769", "Sophie Martin", 1, "Très bruyant, difficile de dormir.", "2024-01-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0770", "Jean Dupont", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-06-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0771", "Jean Dupont", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-07-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0772", "Julien Girard", 3, "Rapport qualité-prix mauvais.", "2024-04-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0773", "Lucie Bernard", 2, "Rapport qualité-prix mauvais.", "2023-05-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0774", "Camille Robert", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-02-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0775", "Claire Lefèvre", 5, "Expérience inoubliable, je recommande vivement.", "2024-04-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0776", "Laura Chevalier", 1, "Rapport qualité-prix mauvais.", "2023-04-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0777", "Claire Lefèvre", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0778", "Camille Robert", 5, "Vue magnifique depuis la terrasse.", "2023-05-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0779", "Lucie Bernard", 2, "Très bruyant, difficile de dormir.", "2023-11-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0780", "Camille Robert", 4, "Vue magnifique depuis la terrasse.", "2023-02-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0781", "Julien Girard", 4, "Vue magnifique depuis la terrasse.", "2023-01-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0782", "Élodie Moreau", 1, "Personnel peu aimable, décevant.", "2024-01-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0783", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2023-01-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0784", "Jean Dupont", 1, "Très bruyant, difficile de dormir.", "2024-03-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0785", "Claire Lefèvre", 5, "Séjour exceptionnel, personnel très accueillant.", "2024-05-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0786", "Sophie Martin", 1, "Personnel peu aimable, décevant.", "2023-02-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0787", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2023-09-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0788", "Élodie Moreau", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-09-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0789", "Camille Robert", 1, "Service lent et chambre sale.", "2023-02-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0790", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2024-03-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0791", "Camille Robert", 2, "Service lent et chambre sale.", "2023-04-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0792", "Claire Lefèvre", 3, "Rapport qualité-prix mauvais.", "2023-04-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0793", "Jean Dupont", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-09-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0794", "Thomas Petit", 2, "Service lent et chambre sale.", "2023-12-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0795", "Marc Durand", 2, "Salle de bain mal nettoyée.", "2024-01-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0796", "Jean Dupont", 1, "Personnel peu aimable, décevant.", "2023-04-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0797", "Julien Girard", 3, "Service lent et chambre sale.", "2023-01-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0798", "Thomas Petit", 1, "Rapport qualité-prix mauvais.", "2023-05-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0799", "Sophie Martin", 5, "Chambre spacieuse et confortable.", "2023-05-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0800", "Thomas Petit", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-02-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0801", "Laura Chevalier", 2, "Très bruyant, difficile de dormir.", "2023-04-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0802", "Jean Dupont", 2, "Salle de bain mal nettoyée.", "2023-09-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0803", "Marc Durand", 4, "Chambre spacieuse et confortable.", "2023-04-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0804", "Lucie Bernard", 2, "Personnel peu aimable, décevant.", "2023-06-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0805", "Julien Girard", 3, "Très bruyant, difficile de dormir.", "2023-03-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0806", "Élodie Moreau", 3, "Personnel peu aimable, décevant.", "2023-01-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0807", "Sophie Martin", 3, "Rapport qualité-prix mauvais.", "2023-02-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0808", "Élodie Moreau", 2, "Service lent et chambre sale.", "2023-04-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0809", "Jean Dupont", 3, "Personnel peu aimable, décevant.", "2023-03-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0810", "Claire Lefèvre", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-05-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0811", "Claire Lefèvre", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-04-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0812", "Laura Chevalier", 3, "Rapport qualité-prix mauvais.", "2023-03-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0813", "Jean Dupont", 2, "Service lent et chambre sale.", "2024-02-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0814", "Jean Dupont", 3, "Très bruyant, difficile de dormir.", "2023-04-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0815", "Lucie Bernard", 2, "Service lent et chambre sale.", "2023-02-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0816", "Élodie Moreau", 4, "Vue magnifique depuis la terrasse.", "2023-12-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0817", "Élodie Moreau", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-10-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0818", "Thomas Petit", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-03-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0819", "Sophie Martin", 2, "Rapport qualité-prix mauvais.", "2023-10-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0820", "Jean Dupont", 5, "Chambre spacieuse et confortable.", "2023-01-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0821", "Laura Chevalier", 1, "Salle de bain mal nettoyée.", "2023-04-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0822", "Thomas Petit", 4, "Expérience inoubliable, je recommande vivement.", "2023-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0823", "Marc Durand", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-09-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0824", "Laura Chevalier", 1, "Salle de bain mal nettoyée.", "2023-04-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0825", "Élodie Moreau", 1, "Salle de bain mal nettoyée.", "2024-01-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0826", "Claire Lefèvre", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-11-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0827", "Lucie Bernard", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-05-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0828", "Camille Robert", 2, "Service lent et chambre sale.", "2024-03-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0829", "Claire Lefèvre", 3, "Personnel peu aimable, décevant.", "2024-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0830", "Claire Lefèvre", 3, "Personnel peu aimable, décevant.", "2024-04-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0831", "Jean Dupont", 3, "Service lent et chambre sale.", "2023-05-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0832", "Laura Chevalier", 2, "Très bruyant, difficile de dormir.", "2023-07-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0833", "Sophie Martin", 1, "Rapport qualité-prix mauvais.", "2023-11-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0834", "Claire Lefèvre", 1, "Service lent et chambre sale.", "2023-07-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0835", "Claire Lefèvre", 4, "Chambre spacieuse et confortable.", "2024-01-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0836", "Thomas Petit", 5, "Expérience inoubliable, je recommande vivement.", "2023-12-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0837", "Claire Lefèvre", 1, "Très bruyant, difficile de dormir.", "2023-09-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0838", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-03-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0839", "Laura Chevalier", 5, "Expérience inoubliable, je recommande vivement.", "2023-01-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0840", "Thomas Petit", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-05-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0841", "Élodie Moreau", 2, "Personnel peu aimable, décevant.", "2024-04-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0842", "Jean Dupont", 3, "Personnel peu aimable, décevant.", "2023-07-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0843", "Laura Chevalier", 4, "Chambre spacieuse et confortable.", "2023-04-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0844", "Lucie Bernard", 3, "Rapport qualité-prix mauvais.", "2023-12-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0845", "Julien Girard", 2, "Service lent et chambre sale.", "2023-05-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0846", "Camille Robert", 2, "Salle de bain mal nettoyée.", "2023-05-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0847", "Camille Robert", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-04-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0848", "Thomas Petit", 3, "Salle de bain mal nettoyée.", "2023-11-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0849", "Jean Dupont", 1, "Service lent et chambre sale.", "2023-03-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0850", "Sophie Martin", 3, "Service lent et chambre sale.", "2024-03-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0851", "Julien Girard", 3, "Personnel peu aimable, décevant.", "2024-04-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0852", "Marc Durand", 3, "Rapport qualité-prix mauvais.", "2023-11-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0853", "Sophie Martin", 3, "Rapport qualité-prix mauvais.", "2024-04-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0854", "Lucie Bernard", 2, "Personnel peu aimable, décevant.", "2023-07-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0855", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2023-06-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0856", "Laura Chevalier", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-12-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0857", "Lucie Bernard", 4, "Vue magnifique depuis la terrasse.", "2023-01-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0858", "Thomas Petit", 2, "Salle de bain mal nettoyée.", "2024-01-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0859", "Camille Robert", 4, "Séjour exceptionnel, personnel très accueillant.", "2024-04-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0860", "Jean Dupont", 2, "Rapport qualité-prix mauvais.", "2023-01-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0861", "Thomas Petit", 4, "Expérience inoubliable, je recommande vivement.", "2023-08-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0862", "Marc Durand", 2, "Salle de bain mal nettoyée.", "2024-04-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0863", "Camille Robert", 3, "Salle de bain mal nettoyée.", "2023-05-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0864", "Thomas Petit", 1, "Salle de bain mal nettoyée.", "2023-11-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0865", "Sophie Martin", 1, "Service lent et chambre sale.", "2023-10-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0866", "Claire Lefèvre", 1, "Personnel peu aimable, décevant.", "2024-01-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0867", "Élodie Moreau", 3, "Salle de bain mal nettoyée.", "2024-05-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0868", "Thomas Petit", 2, "Rapport qualité-prix mauvais.", "2023-12-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0869", "Marc Durand", 1, "Salle de bain mal nettoyée.", "2023-02-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0870", "Thomas Petit", 1, "Service lent et chambre sale.", "2024-04-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0871", "Julien Girard", 2, "Personnel peu aimable, décevant.", "2023-07-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0872", "Claire Lefèvre", 5, "Vue magnifique depuis la terrasse.", "2023-04-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0873", "Julien Girard", 1, "Salle de bain mal nettoyée.", "2023-02-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0874", "Camille Robert", 4, "Chambre spacieuse et confortable.", "2024-01-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0875", "Thomas Petit", 5, "Expérience inoubliable, je recommande vivement.", "2023-03-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0876", "Thomas Petit", 1, "Salle de bain mal nettoyée.", "2023-03-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0877", "Jean Dupont", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-06-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0878", "Claire Lefèvre", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0879", "Camille Robert", 1, "Rapport qualité-prix mauvais.", "2023-07-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0880", "Thomas Petit", 3, "Service lent et chambre sale.", "2023-11-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0881", "Claire Lefèvre", 4, "Vue magnifique depuis la terrasse.", "2023-05-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0882", "Sophie Martin", 2, "Très bruyant, difficile de dormir.", "2024-05-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0883", "Lucie Bernard", 2, "Rapport qualité-prix mauvais.", "2023-08-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0884", "Claire Lefèvre", 4, "Vue magnifique depuis la terrasse.", "2023-03-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0885", "Thomas Petit", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-02-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0886", "Marc Durand", 2, "Très bruyant, difficile de dormir.", "2023-12-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0887", "Claire Lefèvre", 3, "Salle de bain mal nettoyée.", "2023-07-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0888", "Sophie Martin", 2, "Très bruyant, difficile de dormir.", "2023-03-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0889", "Marc Durand", 1, "Salle de bain mal nettoyée.", "2023-05-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0890", "Sophie Martin", 3, "Personnel peu aimable, décevant.", "2023-01-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0891", "Camille Robert", 2, "Personnel peu aimable, décevant.", "2023-10-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0892", "Julien Girard", 5, "Chambre spacieuse et confortable.", "2024-02-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0893", "Lucie Bernard", 4, "Expérience inoubliable, je recommande vivement.", "2024-01-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0894", "Jean Dupont", 2, "Rapport qualité-prix mauvais.", "2024-02-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0895", "Julien Girard", 4, "Expérience inoubliable, je recommande vivement.", "2024-02-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0896", "Julien Girard", 1, "Salle de bain mal nettoyée.", "2023-04-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0897", "Lucie Bernard", 4, "Chambre spacieuse et confortable.", "2023-11-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0898", "Julien Girard", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-12-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0899", "Claire Lefèvre", 1, "Rapport qualité-prix mauvais.", "2023-08-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0900", "Julien Girard", 4, "Vue magnifique depuis la terrasse.", "2023-04-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0901", "Claire Lefèvre", 2, "Service lent et chambre sale.", "2024-02-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0902", "Marc Durand", 2, "Personnel peu aimable, décevant.", "2024-05-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0903", "Camille Robert", 4, "Expérience inoubliable, je recommande vivement.", "2023-07-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0904", "Lucie Bernard", 2, "Très bruyant, difficile de dormir.", "2023-05-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0905", "Camille Robert", 3, "Très bruyant, difficile de dormir.", "2024-05-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0906", "Julien Girard", 4, "Vue magnifique depuis la terrasse.", "2023-03-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0907", "Lucie Bernard", 4, "Chambre spacieuse et confortable.", "2024-03-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0908", "Julien Girard", 5, "Vue magnifique depuis la terrasse.", "2023-05-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0909", "Thomas Petit", 3, "Rapport qualité-prix mauvais.", "2024-05-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0910", "Jean Dupont", 3, "Très bruyant, difficile de dormir.", "2023-06-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0911", "Laura Chevalier", 5, "Chambre spacieuse et confortable.", "2023-06-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0912", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2023-04-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0913", "Laura Chevalier", 2, "Rapport qualité-prix mauvais.", "2023-10-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0914", "Jean Dupont", 3, "Service lent et chambre sale.", "2023-10-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0915", "Claire Lefèvre", 4, "Chambre spacieuse et confortable.", "2023-02-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0916", "Camille Robert", 5, "Vue magnifique depuis la terrasse.", "2023-12-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0917", "Laura Chevalier", 2, "Très bruyant, difficile de dormir.", "2023-10-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0918", "Jean Dupont", 1, "Rapport qualité-prix mauvais.", "2023-10-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0919", "Jean Dupont", 2, "Très bruyant, difficile de dormir.", "2023-04-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0920", "Julien Girard", 3, "Salle de bain mal nettoyée.", "2024-01-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0921", "Camille Robert", 3, "Service lent et chambre sale.", "2024-04-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0922", "Claire Lefèvre", 5, "Expérience inoubliable, je recommande vivement.", "2023-02-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0923", "Élodie Moreau", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-09-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0924", "Thomas Petit", 4, "Expérience inoubliable, je recommande vivement.", "2023-12-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0925", "Marc Durand", 3, "Très bruyant, difficile de dormir.", "2023-01-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0926", "Laura Chevalier", 5, "Vue magnifique depuis la terrasse.", "2023-07-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0927", "Camille Robert", 1, "Très bruyant, difficile de dormir.", "2023-12-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0928", "Jean Dupont", 4, "Séjour exceptionnel, personnel très accueillant.", "2023-05-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0929", "Élodie Moreau", 3, "Personnel peu aimable, décevant.", "2023-10-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0930", "Lucie Bernard", 2, "Service lent et chambre sale.", "2023-03-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0931", "Julien Girard", 4, "Expérience inoubliable, je recommande vivement.", "2024-01-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0932", "Élodie Moreau", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0933", "Julien Girard", 3, "Personnel peu aimable, décevant.", "2023-07-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0934", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2023-11-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0935", "Lucie Bernard", 2, "Rapport qualité-prix mauvais.", "2023-06-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0936", "Julien Girard", 2, "Personnel peu aimable, décevant.", "2023-03-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0937", "Camille Robert", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-07-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0938", "Camille Robert", 4, "Séjour exceptionnel, personnel très accueillant.", "2024-05-06");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0939", "Laura Chevalier", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-10-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0940", "Élodie Moreau", 5, "Chambre spacieuse et confortable.", "2024-04-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0941", "Sophie Martin", 5, "Chambre spacieuse et confortable.", "2023-09-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0942", "Élodie Moreau", 5, "Chambre spacieuse et confortable.", "2023-04-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0943", "Thomas Petit", 3, "Service lent et chambre sale.", "2024-01-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0944", "Julien Girard", 1, "Salle de bain mal nettoyée.", "2023-09-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0945", "Laura Chevalier", 4, "Expérience inoubliable, je recommande vivement.", "2023-03-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0946", "Marc Durand", 2, "Personnel peu aimable, décevant.", "2024-04-02");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0947", "Sophie Martin", 3, "Salle de bain mal nettoyée.", "2023-04-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0948", "Élodie Moreau", 1, "Personnel peu aimable, décevant.", "2024-04-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0949", "Thomas Petit", 1, "Salle de bain mal nettoyée.", "2023-12-26");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0950", "Julien Girard", 3, "Service lent et chambre sale.", "2023-04-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0951", "Élodie Moreau", 1, "Personnel peu aimable, décevant.", "2023-05-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0952", "Jean Dupont", 1, "Salle de bain mal nettoyée.", "2023-01-12");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0953", "Claire Lefèvre", 4, "Vue magnifique depuis la terrasse.", "2024-01-29");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0954", "Camille Robert", 5, "Chambre spacieuse et confortable.", "2023-06-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0955", "Thomas Petit", 2, "Service lent et chambre sale.", "2023-11-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0956", "Jean Dupont", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-11-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0957", "Élodie Moreau", 4, "Chambre spacieuse et confortable.", "2023-08-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0958", "Julien Girard", 5, "Vue magnifique depuis la terrasse.", "2023-07-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0959", "Thomas Petit", 1, "Personnel peu aimable, décevant.", "2023-01-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0960", "Claire Lefèvre", 2, "Salle de bain mal nettoyée.", "2023-01-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0961", "Julien Girard", 3, "Service lent et chambre sale.", "2023-10-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0962", "Thomas Petit", 1, "Salle de bain mal nettoyée.", "2024-03-18");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0963", "Thomas Petit", 5, "Chambre spacieuse et confortable.", "2023-11-19");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0964", "Laura Chevalier", 1, "Personnel peu aimable, décevant.", "2023-09-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0965", "Jean Dupont", 5, "Chambre spacieuse et confortable.", "2023-09-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0966", "Julien Girard", 3, "Très bruyant, difficile de dormir.", "2023-12-17");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0967", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2023-11-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0968", "Jean Dupont", 2, "Rapport qualité-prix mauvais.", "2023-12-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0969", "Camille Robert", 2, "Très bruyant, difficile de dormir.", "2024-05-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0970", "Marc Durand", 5, "Expérience inoubliable, je recommande vivement.", "2024-01-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0971", "Jean Dupont", 4, "Séjour exceptionnel, personnel très accueillant.", "2024-01-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0972", "Jean Dupont", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-05-09");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0973", "Thomas Petit", 4, "Séjour exceptionnel, personnel très accueillant.", "2024-02-21");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0974", "Marc Durand", 3, "Salle de bain mal nettoyée.", "2023-02-20");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0975", "Lucie Bernard", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-11-11");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0976", "Laura Chevalier", 4, "Chambre spacieuse et confortable.", "2024-02-03");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0977", "Élodie Moreau", 5, "Chambre spacieuse et confortable.", "2023-03-10");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0978", "Camille Robert", 3, "Rapport qualité-prix mauvais.", "2023-07-23");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H010", "R0979", "Sophie Martin", 4, "Vue magnifique depuis la terrasse.", "2023-08-22");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0980", "Élodie Moreau", 2, "Très bruyant, difficile de dormir.", "2023-11-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0981", "Élodie Moreau", 3, "Salle de bain mal nettoyée.", "2024-03-14");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0982", "Lucie Bernard", 2, "Salle de bain mal nettoyée.", "2023-09-04");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0983", "Julien Girard", 4, "Chambre spacieuse et confortable.", "2023-12-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0984", "Laura Chevalier", 4, "Vue magnifique depuis la terrasse.", "2023-04-25");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0985", "Julien Girard", 2, "Rapport qualité-prix mauvais.", "2024-03-08");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0986", "Marc Durand", 5, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-04-30");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H006", "R0987", "Claire Lefèvre", 1, "Personnel peu aimable, décevant.", "2024-04-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0988", "Marc Durand", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-05-13");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H005", "R0989", "Jean Dupont", 2, "Très bruyant, difficile de dormir.", "2023-10-07");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0990", "Thomas Petit", 3, "Personnel peu aimable, décevant.", "2024-05-15");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0991", "Jean Dupont", 4, "Expérience inoubliable, je recommande vivement.", "2024-03-31");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H003", "R0992", "Camille Robert", 1, "Très bruyant, difficile de dormir.", "2023-06-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0993", "Claire Lefèvre", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2024-03-05");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R0994", "Thomas Petit", 1, "Salle de bain mal nettoyée.", "2023-10-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H002", "R0995", "Thomas Petit", 5, "Séjour exceptionnel, personnel très accueillant.", "2023-03-01");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H008", "R0996", "Sophie Martin", 5, "Expérience inoubliable, je recommande vivement.", "2023-07-16");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H009", "R0997", "Sophie Martin", 3, "Très bruyant, difficile de dormir.", "2024-02-24");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H007", "R0998", "Julien Girard", 4, "Très propre et bien situé. Petit-déjeuner excellent.", "2023-12-28");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H001", "R0999", "Thomas Petit", 5, "Expérience inoubliable, je recommande vivement.", "2023-06-27");
INSERT INTO hotel.review (hotel_id, review_id, client_name, rating, comment, review_date)
VALUES ("H004", "R1000", "Thomas Petit", 1, "Rapport qualité-prix mauvais.", "2023-03-04");