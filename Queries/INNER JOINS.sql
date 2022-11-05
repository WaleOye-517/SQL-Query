USE sql_store;
SELECT order_id,first_name,last_name,O.customer_id
FROM orders O
JOIN customers C
ON O.customer_id = C.customer_id