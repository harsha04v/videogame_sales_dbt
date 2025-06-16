with base as (
    select * from {{ ref('stg_video_game_sales')}}
)

enriched as (
    select * ,
            case
                when global_sales >= 10 then 'Blockbuster'
                when global_sales >= 1 then 'Hit'
                else 'Low Performer'
            end as sales_category,
            extract(decade from date_from_unix_date(365 * release_year)) as release_decade
    from base
)

select * from enriched