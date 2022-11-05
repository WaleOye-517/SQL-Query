USE sql_store;
SELECT 
customer_id,
first_name,
points,
'Bronze' AS Type
FROM customers
WHERE points < 2000
UNION
SELECT
customer_id,
first_name,
points,
'Silver' AS Type
FROM customers
WHERE points >= 2000 AND points < 3000
UNION
SELECT 
customer_id,
first_name,
points,
'Gold' AS Type
FROM customers
WHERE points > 3000
ORDER BY first_name