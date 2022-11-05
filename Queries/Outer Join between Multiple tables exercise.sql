USE sql_store;
SELECT 
o.order_date,
o.order_id,
c.first_name AS customer,
sh.name AS shipper,
os.name AS status
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
ON  sh.shipper_id = o.shipper_id
LEFT JOIN order_statuses os
ON os.order_status_id = o.status
ORDER BY status
