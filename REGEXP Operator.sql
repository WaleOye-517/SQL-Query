USE sql_store;
SELECT*
FROM customers
WHERE last_name REGEXP  'e[a-h]'
-- ^ reps beginning
-- $ reps end
-- | reps logical OR
-- [abcd] reps characters before or after
-- [a-f] reps range of characters
