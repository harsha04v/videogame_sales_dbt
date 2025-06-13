with source as (
    select * from {{source('raw', 'vgsales_dbt')}}
),

renamed as (
    select 
        cast(Rank as int64) as rank,
        Name as game_name,
        Platform as platform,
        Genre as genre,
        cast(Year as int64) as release_year,
        cast(NA_Sales as float64) as na_sales,
        cast(EU_Sales as float64) as eu_sales,
        cast(JP_Sales as float64) as jp_sales,
        cast(Other_Sales as float64) as other_sales,
        cast(Global_Sales as float64) as global_sales,
        current_timestamp() as load_timestamp,
        Publisher as publisher
    from source
)

select * from renamed