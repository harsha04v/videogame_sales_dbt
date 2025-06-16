with base as (
    select * from {{ref('int_sales_enriched')}}
),

fact_sales as (
    select 
        game_name,
        platform,
        release_year,
        na_sales,
        eu_sales,
        jp_sales,
        other_sales,
        global_sales,
        sales_category
    from base


)

select * from fact_sales