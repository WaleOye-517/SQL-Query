USE sql_store;
SELECT
o.order_id,
c.first_name,
sh.name AS shipper
FROM orders o
JOIN customers c
USING (customer_id)
LEFT JOIN shippers sh
 USING (shipper_id)
 -- USING only works if the columns have the same name