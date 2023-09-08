{{
    config(materialized='table')
}}


select * 
from {{ source('globalmart','orders')}}
where shipmode not in ('Unknown')