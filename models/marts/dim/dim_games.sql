with base as (
    select * from {{ref('int_sales_enriched')}}
),

dim_games as(
    select distinct 
        game_name,
        platform,
        release_year,
        genre,
        publisher,
        release_decade
    from base

)

select * from dim_games