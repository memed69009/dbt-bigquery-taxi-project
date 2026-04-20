{{ config(
    materialized='incremental',
    unique_key='trip_date'
) }}

select

    trip_date,

    count(*) as total_trips,

    sum(total_amount) as total_revenue,

    avg(trip_duration_min) as avg_trip_duration

from {{ ref('int_trips_enriched') }}

{% if is_incremental() %}
where trip_date > (select max(trip_date) from {{ this }})
{% endif %}

group by trip_date
order by trip_date