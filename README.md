# 🚕 NYC Taxi Analytics Engineering Project

End-to-end analytics engineering project built with **dbt Cloud** and **BigQuery** using the public **NYC Yellow Taxi Trips** dataset.

---

## Project Overview

This project was created to practice the core concepts of analytics engineering with dbt:

- declaring sources
- building a layered modeling structure
- cleaning and transforming raw data
- adding data quality tests
- documenting models
- creating business-facing marts
- versioning the project with GitHub

The project uses public New York City taxi trip data available in BigQuery and transforms it into analytics-ready datasets.

---

## Business Goal

The goal is to answer simple but realistic business questions such as:

- How many trips happen each day?
- What is the daily revenue?
- What is the average trip duration?
- How can trips be segmented into categories?

This simulates the work of an Analytics Engineer who takes raw operational data and turns it into trusted datasets for reporting and decision-making.

---

## Tech Stack

- **dbt Cloud**
- **BigQuery**
- **GitHub**
- **dbt_utils**
- **Data Studio (dashboard)**

---

## Dataset

Source dataset:

- **Project**: `bigquery-public-data`
- **Dataset**: `new_york_taxi_trips`
- **Table**: `tlc_yellow_trips_2022`

This dataset contains raw information about New York yellow taxi trips, including pickup and dropoff timestamps, distance, passenger count, and total amount paid.

---

## Project Structure

```text
dbt-bigquery-taxi-project/
├── models/
│   ├── staging/
│   │   ├── src_taxi.yml
│   │   ├── schema.yml
│   │   └── stg_trips.sql
│   ├── intermediate/
│   │   └── int_trips_enriched.sql
│   └── marts/
│       ├── dim_trip_type.sql
│       ├── fct_daily_trips.sql
│       └── schema.yml
├── macros/
├── seeds/
├── snapshots/
├── tests/
├── .gitignore
├── dbt_project.yml
├── packages.yml
├── README.md
└── dashboard.pdf
