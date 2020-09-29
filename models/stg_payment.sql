select 
id as customer_id, 
orderid as order_id,
paymentmethod as payment_method,
amount/100 as amount
from {{ source('stripe', 'payment') }}
where status ='success'