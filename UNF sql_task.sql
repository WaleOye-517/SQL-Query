SELECT *
FROM jjc_test_data.`target`
WHERE val IS NOT NULL OR (id NOT IN (SELECT id FROM jjc_test_data.`source`)
AND val IS NULL)
UNION
SELECT *
FROM source
WHERE id IN (SELECT id FROM jjc_test_data.`target` WHERE val IS NULL)
ORDER BY id ASC;