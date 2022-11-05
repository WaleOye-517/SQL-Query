USE sql_store;
SELECT 
order_id,
c.first_name
FROM orders 
NATURAL JOIN customers c