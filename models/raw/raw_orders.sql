{{
    config(materialized='table')
}}


select * 
from {{ source('globalmartss','orders')}}
where shipmode not in ('Unknown')