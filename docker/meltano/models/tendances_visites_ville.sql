with filtered as (
    select
        h.ville,
        h.pays,
        to_char(r.date_reservation, 'YYYY-MM') as annee_mois,
        r.nb_personnes,
        r.montant_total
    from reservations r
    join hotels h on r.hotel_id = h.hotel_id
    where r.date_reservation >= cast(env_var('EXTRACTION_START_DATE') as date)
      and r.date_reservation < cast(env_var('EXTRACTION_END_DATE') as date)
      and r.statut = 'confirmée'
)
select
    ville,
    pays,
    annee_mois,
    count(*) as nb_reservations,
    sum(nb_personnes) as nb_personnes,
    sum(montant_total) as revenu_total
from filtered
group by ville, pays, annee_mois; 