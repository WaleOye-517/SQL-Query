UPDATE practice_work.restaurant
SET verified_on = str_to_date(verified_on, '%d/%m/%Y');
SELECT SUM(rating) AS total_ratings
FROM restaurant 
WHERE 
verified_on BETWEEN '2019-06-06' AND '2019-06-15'

