select 
ID as order_item_id
,ORDER_ID
,PRODUCT_ID
,QUANTITY
,UNIT_PRICE
,(QUANTITY*UNIT_PRICE) as total_price
from {{ source('raw_data','order_items')  }}