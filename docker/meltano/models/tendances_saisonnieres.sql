with filtered as (
    select
        extract(year from r.date_arrivee) as annee,
        extract(month from r.date_arrivee) as mois,
        h.categorie as categorie_hotel,
        r.nb_personnes,
        r.montant_total
    from reservations r
    join hotels h on r.hotel_id = h.hotel_id
    where r.date_arrivee >= cast(env_var('EXTRACTION_START_DATE') as date)
      and r.date_arrivee < cast(env_var('EXTRACTION_END_DATE') as date)
      and r.statut = 'confirmée'
)
select
    annee,
    mois,
    categorie_hotel,
    count(*) as nb_reservations,
    sum(nb_personnes) as nb_personnes,
    sum(montant_total) as revenu_total
from filtered
group by annee, mois, categorie_hotel; 