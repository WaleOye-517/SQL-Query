SELECT *
FROM jjc_test_data.`source`
UNION
SELECT *
FROM jjc_test_data.target
WHERE id NOT IN (SELECT id FROM jjc_test_data.`source`)
ORDER BY id ASC;