SELECT ID, CREATED_AT, UPDATED_AT, CUSTOMER_ID
FROM {{ ref('orders_select_columns') }}
WHERE ID IN (SELECT ORDER_ID FROM {{ ref('warranty_order_ids')}})