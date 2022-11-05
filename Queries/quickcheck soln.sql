WITH summary_table AS 
(SELECT e.department_name, max(salary) AS max_salary, min(salary) AS min_salary
FROM employees AS e  
LEFT JOIN salaries AS s 
ON e.employee_id = s.employee_id
GROUP BY e.department_name
HAVING AVG(salary) BETWEEN 1000 AND 3000)

SELECT department_name, s.employee_name AS employee_salary_max, so.employee_name AS employee_salary_min
FROM summary_table AS st
LEFT JOIN salaries AS s
ON st.max_salary = s.salary
LEFT JOIN salaries AS so
ON st.min_salary = so.salary
GROUP BY department_name
