with source as (
    select * from {{source("TPCH_SF1000",'region')}}
),

regions as (
    select
        R_REGIONKEY as region_id,
        R_NAME as region_name
    
    from source
)

select * from regions