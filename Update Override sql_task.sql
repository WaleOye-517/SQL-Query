SELECT *
FROM jjc_test_data.`target`
WHERE id NOT IN (SELECT id FROM jjc_test_data.`source`) OR 
id IN (SELECT id FROM jjc_test_data.`source` WHERE val IS NULL)
UNION
SELECT *
FROM jjc_test_data.`source`
WHERE id IN (SELECT id FROM jjc_test_data.`target`) AND val IS NOT NULL
ORDER BY id ASC;