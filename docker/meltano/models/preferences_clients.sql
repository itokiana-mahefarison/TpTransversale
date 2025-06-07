with filtered as (
    select
        r.client_id,
        h.categorie as categorie_preference,
        h.nom as valeur_preference,
        r.date_reservation
    from reservations r
    join hotels h on r.hotel_id = h.hotel_id
    where r.date_reservation >= cast(env_var('EXTRACTION_START_DATE') as date)
      and r.date_reservation < cast(env_var('EXTRACTION_END_DATE') as date)
      and r.statut = 'confirmée'
),
agg as (
    select
        client_id,
        categorie_preference,
        valeur_preference,
        count(*) as nb_occurrences,
        max(date_reservation) as derniere_occurrence
    from filtered
    group by client_id, categorie_preference, valeur_preference
)
select * from agg; 