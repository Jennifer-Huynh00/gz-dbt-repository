select
orders_id,
date_date,
margin,
shipping_fee,
logcost,
ship_cost,
ROUND(margin + shipping_fee - logcost - CAST (ship_cost AS FLOAT64),2) AS Operational_margin,
from {{ref('int_orders_margin')}}
join {{ref('stg_gz_raw_data__ship')}}
USING (orders_id)