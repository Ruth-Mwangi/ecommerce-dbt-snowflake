with source as (
    select * from {{source("TPCH_SF1000",'customer')}} limit 1000
),

customers as (
    select
        C_CUSTKEY as customer_id,
        C_NATIONKEY as nation_id,

        C_NAME as customer_name,
        C_PHONE as phone_number,

        C_MKTSEGMENT as market_segment,

        C_ACCTBAL as account_balance
    
    from source
)

select * from customers