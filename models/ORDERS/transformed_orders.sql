with base_orders as (

    select
        order_id,
        customer_id,
        order_date,
        product_category,
        -- Alias raw names to clean names here
        amount as order_amount_usd,
        status as order_status
    -- Fixed typo 'biqguery' to 'bigquery'
    from {{ source('bigquery_source', 'orders') }}
        
),

transformed_orders as (

    select
        order_id,
        customer_id,
        order_date,
        product_category,
        order_amount_usd,
        order_status,
    
        -- Derived metrics & flags
        case 
            when order_status in ('completed', 'shipped') then true
            else false
        end as is_revenue_confirmed,
        
        case 
            when order_amount_usd >= 500 then 'high-tier'
            when order_amount_usd >= 100 then 'mid-tier'
            else 'low-tier'
        end as order_value_tier,
        
        -- Date extraction helpers
        extract(year from order_date) as order_year,
        extract(month from order_date) as order_month

    from base_orders

)

select * from transformed_orders