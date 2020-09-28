with 

customers as (

    select * from {{ ref('stg_customers') }}

),

orders as (

    select * from {{ ref('stg_orders') }}

),

payment as (

    select * from {{ ref('stg_payment') }}

),

order_payment as (

    select
        payment.customer_id,
        payment.order_id,
        payment.amount
        
    from payment

    left join customers using (customer_id)

)

select * from order_payment