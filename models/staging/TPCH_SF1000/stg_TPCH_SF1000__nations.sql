with source as (
    select * from {{source("TPCH_SF1000",'nation')}}
),

nations as (
    select
        N_NATIONKEY as nation_id,
        N_REGIONKEY as region_id,
        N_NAME as nation_name
    
    from source

)
select * from nations
