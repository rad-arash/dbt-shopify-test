SELECT *
FROM {{ ref('orders_select_columns') }}
WHERE SHIPPING_ADDRESS_CITY = (SELECT city FROM (SELECT city, COUNT(*) AS c
FROM {{ ref('warranty_order_customer_cities') }}
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1))