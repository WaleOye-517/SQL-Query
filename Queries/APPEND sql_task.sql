SELECT *
FROM jjc_test_data.`target`
UNION ALL
SELECT *
FROM jjc_test_data.`source`
ORDER BY id ASC;
