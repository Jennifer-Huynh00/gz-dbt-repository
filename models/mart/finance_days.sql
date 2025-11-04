select
    date_date,
    COUNT(orders_operational.orders_id) AS nb_transactions,
    ROUND(SUM(revenue),2) AS Total_revenue,
    ROUND(SUM(Operational_margin),2) AS Operational_margin,
    ROUND(SUM(purchase_cost),2) AS total_purchase_cost,
    ROUND(SUM(shipping_fee),2) AS total_shipping_fee,
    ROUND(SUM(logcost),2) AS total_logcost,
    ROUND(SUM(quantity),2) AS total_quantity,
from {{ref('int_orders_operational')}} AS orders_operational
join {{ref('int_orders_margin')}} AS orders_margin
USING (date_date)
GROUP BY (date_date)