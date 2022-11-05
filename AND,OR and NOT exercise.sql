USE sql_store;
SELECT
order_id,
product_id,
unit_price,
quantity,
(quantity*unit_price) AS total_price
FROM order_items 
WHERE quantity*unit_price > 30 AND order_id = 6
