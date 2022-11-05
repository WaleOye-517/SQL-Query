SELECT *
FROM jjc_test_data.`source`
WHERE id IN (SELECT id FROM jjc_test_data.`target`)
UNION
SELECT *
FROM target
WHERE id NOT IN (SELECT id FROM jjc_test_data.`source`)
ORDER BY id ASC;