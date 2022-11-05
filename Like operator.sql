USE sql_store;
SELECT *
FROM customers
WHERE last_name LIKE 'b____y'
-- % reps any number of characters
-- _ reps single character