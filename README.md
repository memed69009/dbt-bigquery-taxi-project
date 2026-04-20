# dbt BigQuery Taxi Project

Analytics engineering project built with dbt Cloud and BigQuery using the public NYC Yellow Taxi dataset.

## Project goal

This project demonstrates a beginner-friendly but realistic analytics engineering workflow:

- declare raw sources
- build a clean staging layer
- add data quality tests
- create business-facing marts
- document the project
- use GitHub for version control

## Tech stack

- dbt Cloud
- BigQuery
- GitHub
- dbt_utils package

## Dataset

Source: NYC Yellow Taxi public dataset in BigQuery

- project: `bigquery-public-data`
- dataset: `new_york_taxi_trips`
- table: `tlc_yellow_trips_2022`

## Project structure

```text
models/
├── staging/
│   ├── src_taxi.yml
│   ├── schema.yml
│   └── stg_trips.sql
├── marts/
│   ├── schema.yml
│   ├── dim_trip_type.sql
│   └── fct_daily_trips.sql