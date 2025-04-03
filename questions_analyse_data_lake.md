# Questions d'analyse pour le Data Lake Touristique

## Analyses croisées PostgreSQL et Cassandra
1. Quels sont les clients qui ont effectué des réservations dans des hôtels 5 étoiles et qui ont également laissé des avis positifs (note ≥ 4) sur ces mêmes hôtels?
2. Quelle est la corrélation entre le prix moyen des hôtels et le nombre de réservations par ville sur les 6 derniers mois?
3. Quels sont les clients qui ont réservé plusieurs fois le même hôtel, et quelles sont leurs préférences identifiées dans Cassandra?
4. Pour les hôtels ayant un taux d'annulation élevé (>20%), quelles sont les caractéristiques communes (catégorie, ville, prix moyen)?

## Analyses croisées PostgreSQL et Oracle NoSQL
5. Quels sont les hôtels qui ont reçu les meilleures notes dans les avis clients mais qui ont un taux de réservation inférieur à la moyenne?
6. Pour les clients ayant effectué plus de 3 réservations, quelles sont les recommandations qui leur ont été proposées et ont-elles été suivies?
7. Quelle est la corrélation entre le prix des hôtels et la note moyenne attribuée dans les avis clients?
8. Quels sont les clients qui ont réservé un hôtel suite à une recommandation personnalisée?

## Analyses croisées HDFS et PostgreSQL
9. Quel est le taux de conversion entre les recherches d'hôtels et les réservations effectives par ville?
10. Quels filtres de recherche sont les plus utilisés par les clients qui finissent par réserver des hôtels 4 ou 5 étoiles?
11. Quelle est la durée moyenne entre la première recherche d'un client et sa réservation finale?
12. Quelles activités touristiques sont les plus recherchées et réservées en fonction de la catégorie d'hôtel choisi?

## Analyses croisées Oracle NoSQL et HDFS
13. Comment les avis clients influencent-ils les comportements de recherche des utilisateurs pour les mêmes hôtels?
14. Quels types de recommandations génèrent le plus de clics et de réservations d'activités?
15. Y a-t-il une corrélation entre les notes des avis clients et le nombre de vues détaillées pour un hôtel?
16. Quels sont les parcours utilisateurs typiques (séquence d'interactions) qui mènent à une réservation réussie?

## Analyses croisées Cassandra et HDFS
17. Comment les tendances saisonnières identifiées dans Cassandra se reflètent-elles dans les comportements de recherche des utilisateurs?
18. Quelles sont les préférences des clients qui recherchent fréquemment des activités culturelles mais réservent des hôtels de catégorie économique?
19. Y a-t-il une corrélation entre les pics de recherche pour certaines villes et les revenus générés par ces destinations?
20. Comment le comportement de recherche des utilisateurs évolue-t-il avant et après avoir séjourné dans une ville spécifique?

## Analyses multi-sources (3+ systèmes)
21. Pour les clients ayant effectué des réservations annulées, quels sont leurs comportements de recherche ultérieurs, les avis qu'ils ont laissés et les recommandations qui leur ont été faites?
22. Quel est le profil complet des clients les plus rentables (réservations dans PostgreSQL, préférences dans Cassandra, avis dans Oracle NoSQL et comportements de recherche dans HDFS)?
23. Comment optimiser les recommandations d'activités touristiques en fonction des historiques de réservation, des avis clients et des tendances de recherche?
24. Quelle est l'efficacité des campagnes promotionnelles en analysant les interactions sur le site, les réservations effectuées et les tendances saisonnières?
25. Comment prédire les destinations qui seront populaires dans les prochains mois en combinant les données de recherche actuelles, les réservations anticipées et les tendances historiques? 