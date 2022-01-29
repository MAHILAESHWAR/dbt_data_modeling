{{ config(materialized='table') }}
with source_data as (
    select PROVINCE,sum(POPULATION) as POPULATION,SUM(TOTAL_DISTRICTS) as TOTAL_DISTRICTS,SUM(TOTAL_CITIES) as TOTAL_CITIES,SUM(TOTAL_CASES) as TOTAL_CASES,SUM(TOTAL_ACTIVE_CASES) as TOTAL_ACTIVE_CASES,SUM(TOTAL_RECOVERED) as TOTAL_RECOVERED,SUM(TOTAL_DEATHS) as TOTAL_DEATHS 
    from {{ ref('COVID19_INDONESIA') }}
    group by PROVINCE
)
select * from source_data
