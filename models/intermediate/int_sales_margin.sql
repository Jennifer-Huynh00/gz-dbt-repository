select
*,
quantity*purchase_price AS purchase_cost,
ROUND(revenue - (quantity*purchase_price),2) AS margin
from {{ ref('stg_gz_raw_data__sales')}}
join {{ref('stg_gz_raw_data__product')}}
USING(products_id)