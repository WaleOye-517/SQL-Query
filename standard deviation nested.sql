WITH summary_table AS (SELECT i.restaurant_id, COUNT(*) AS num_of_dishes, r.name
FROM
practice_work.item AS i
LEFT JOIN 
practice_work.restaurant AS r
ON 
r.id = i.restaurant_id
GROUP BY i.restaurant_id
ORDER BY num_of_dishes DESC)

SELECT *
FROM
summary_table
WHERE restaurant_id
IN (SELECT restaurant_id
FROM summary_table
WHERE num_of_dishes > 
(SELECT (AVG(num_of_dishes) + STDDEV(num_of_dishes)) FROM summary_table)
OR num_of_dishes < (SELECT (AVG(num_of_dishes) - STDDEV(num_of_dishes)) FROM summary_table))


