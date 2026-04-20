{{ config(materialized='table') }}

select distinct
    trip_type
from {{ ref('stg_trips') }}