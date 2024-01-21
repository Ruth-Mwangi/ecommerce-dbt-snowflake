with 
nations as (
    select * from {{ref("stg_TPCH_SF1000__nations")}}
),

regions as (
    select * from {{ref("stg_TPCH_SF1000__regions")}}
),

nations_with_regions as (
    select
        nations.nation_id,
        nations.nation_name,
        regions.region_name
    from nations
    left join regions on regions.region_id=nations.region_id

)

select * from nations_with_regions