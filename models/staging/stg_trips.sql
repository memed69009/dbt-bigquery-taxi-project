select

    vendor_id,
    pickup_datetime as pickup_at,
    dropoff_datetime as dropoff_at,
    passenger_count,
    trip_distance,
    total_amount,
    date(pickup_datetime) as trip_date,
    timestamp_diff(
        dropoff_datetime,
        pickup_datetime,
        minute
    ) as trip_duration_min

from {{ source('taxi', 'tlc_yellow_trips_2022') }}

where trip_distance > 0
  and total_amount > 0

limit 1000