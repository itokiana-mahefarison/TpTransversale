with filtered as (
    select
        r.reservation_id,
        r.hotel_id,
        to_char(r.date_arrivee, 'YYYY-MM') as annee_mois,
        r.date_arrivee,
        r.client_id,
        r.date_depart,
        r.nb_personnes,
        r.nb_chambres,
        r.montant_total,
        r.statut
    from reservations r
    where r.date_arrivee >= cast(env_var('EXTRACTION_START_DATE') as date)
      and r.date_arrivee < cast(env_var('EXTRACTION_END_DATE') as date)
)
select * from filtered; 