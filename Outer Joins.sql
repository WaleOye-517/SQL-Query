USE sql_store;
SELECT c.first_name,o.order_id,c.customer_id
FROM customers c 
LEFT JOIN orders o
ON c.customer_id = o.customer_id
ORDER BY  c.customer_id