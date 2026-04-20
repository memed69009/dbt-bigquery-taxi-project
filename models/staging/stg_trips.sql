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
    ) as trip_duration_min,

    case
        when trip_distance < 2 then 'short'
        when trip_distance < 10 then 'medium'
        else 'long'
    end as trip_type
    
from {{ source('taxi', 'tlc_yellow_trips_2022') }}

where trip_distance > 0
  and total_amount > 0
  and timestamp_diff(dropoff_datetime, pickup_datetime, minute) >= 0

limit 1000