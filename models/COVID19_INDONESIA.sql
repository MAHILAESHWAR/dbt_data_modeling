{{ config(materialized='table') }}
with source_data as (
    select *,cast(date as datetime) as date_col from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_MAHILAESHWAR_M"  
)
select * from source_data
