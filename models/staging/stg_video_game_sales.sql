with source as (
    select * from {{source('raw', 'vgsales_dbt')}}
),

renamed as (
    select 
        safe_cast(Rank as int64) as rank,
        Name as game_name,
        Platform as platform,
        Genre as genre,
        safe_cast(Year as int64) as release_year,
        safe_cast(NA_Sales as float64) as na_sales,
        safe_cast(EU_Sales as float64) as eu_sales,
        safe_cast(JP_Sales as float64) as jp_sales,
        safe_cast(Other_Sales as float64) as other_sales,
        safe_cast(Global_Sales as float64) as global_sales,
        current_timestamp() as load_timestamp,
        Publisher as publisher
    from source
)

select * from renamed