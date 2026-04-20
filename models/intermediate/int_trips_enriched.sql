{{ config(materialized='view') }}

select

    *,

    case
        when trip_duration_min < 10 then 'short'
        when trip_duration_min < 30 then 'medium'
        else 'long'
    end as duration_bucket,

    case
        when total_amount < 10 then 'low'
        when total_amount < 30 then 'medium'
        else 'high'
    end as revenue_bucket

from {{ ref('stg_trips') }}