{{ config(materialized='table') }}

select

    trip_date,

    count(*) as total_trips,

    sum(total_amount) as total_revenue,

    avg(trip_duration_min) as avg_trip_duration

from {{ ref('stg_trips') }}

group by trip_date
order by trip_date