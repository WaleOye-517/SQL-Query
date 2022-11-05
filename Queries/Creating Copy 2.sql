USE sql_store;
INSERT INTO order_achives
SELECT*
FROM orders
WHERE order_date < '2019-01-01'