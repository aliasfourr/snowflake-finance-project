select 
o.order_id,
o.order_Date,
sum(total_price) as total_price
from {{ref('stg_orders')}} as o
left join {{ref('stg_order_items')}} as oi
on o.order_id=oi.order_id
group by 1,2