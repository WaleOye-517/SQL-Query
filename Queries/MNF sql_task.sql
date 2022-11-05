SELECT *
FROM jjc_test_data.`target`
WHERE val IS NOT NULL OR (id NOT IN 
(SELECT ID FROM jjc_test_data.`source`) AND val IS NULL)
UNION
SELECT *
FROM jjc_test_data.`source`
WHERE id IN (SELECT id FROM target WHERE val IS NULL) 
OR id NOT IN (SELECT id FROM target)
ORDER BY id ASC;