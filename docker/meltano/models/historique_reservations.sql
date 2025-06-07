with filtered as (
    select
        r.reservation_id,
        r.client_id,
        r.hotel_id,
        h.nom as nom_hotel,
        h.ville,
        h.pays,
        r.date_arrivee,
        r.date_depart,
        r.nb_personnes,
        r.nb_chambres,
        r.montant_total,
        r.statut,
        p.methode_paiement,
        r.date_reservation
    from reservations r
    join hotels h on r.hotel_id = h.hotel_id
    left join paiements p on p.reservation_id = r.reservation_id
    where r.date_reservation >= cast(env_var('EXTRACTION_START_DATE') as date)
      and r.date_reservation < cast(env_var('EXTRACTION_END_DATE') as date)
)
select * from filtered; 