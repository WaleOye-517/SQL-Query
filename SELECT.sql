SELECT
last_name,
(points  + 10) * 100 AS 'discount factor',
points,
first_name
FROM customers


