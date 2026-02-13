select 
ID as PRODUCT_ID,
PRODUCT_NAME,
CATEGORY as Product_category,
PRICE as product_price
from {{  source('raw_data','product')   }}