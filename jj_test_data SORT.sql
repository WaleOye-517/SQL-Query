SELECT name_of_spot, state, color, longitude, latitude
FROM jjc_test_data.state_coordinates
WHERE submission_date BETWEEN '2020-31-01' AND '2021-31-01'
ORDER BY state;