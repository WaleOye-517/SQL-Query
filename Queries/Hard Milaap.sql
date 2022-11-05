USE milaap;
SELECT em.employee_id, em.employee_name, dm.department,
       dem.designation, ea.at_date_in, ea.timestamp_in, ea.at_date_out, ea.timestamp_out
       FROM employee_master AS em
JOIN department_master AS dm
ON em.department_id = dm.department_id
JOIN designation_master AS dem
ON  em.designation_id = dem.designation_id
JOIN employee_attendance AS ea
ON em.employee_id = ea.employee_id
ORDER BY em.employee_id ASC, working_hours ASC;

WITH working_hours AS (SELECT TIMESTAMPDIFF(SECOND, ea.timestamp_in, ea.timestamp_out) AS seconds FROM employee_attendance),
 
differences AS (SELECT
    MOD(seconds, 60) AS seconds_part,
    MOD(seconds, 3600) AS minutes_part,
    MOD(seconds, 3600 * 24) AS hours_part
  FROM difference_in_seconds
)

SELECT
  CONCAT(
    FLOOR(hours_part / 3600), ' hours ',
    FLOOR(minutes_part / 60), ' minutes ',
    seconds_part, ' seconds'
  ) AS working_hours
FROM differences;