USE practice_work;
DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees`(
`employee_id` int NOT NULL,
`employee_name` VARCHAR(100),
`department_name` VARCHAR(100)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `employees` VALUES (123, 'John Doe', 'Sales');
INSERT INTO `employees` VALUES (211, 'Jane Smith', 'Sales');
INSERT INTO `employees` VALUES (556, 'Billy Bob', 'HR');
INSERT INTO `employees` VALUES (711, 'Robert Hayek', 'Sales');
INSERT INTO `employees` VALUES (235, 'Edward Jorgson', 'Marketing');
INSERT INTO `employees` VALUES (236, 'Christine Packard', 'Marketing');

CREATE TABLE `salaries`(
`salary` int NOT NULL,
`employee_id` int NOT NULL,
`employee_name` VARCHAR(100)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `salaries` VALUES (500, 123, 'John Doe');
INSERT INTO `salaries` VALUES (600, 211, 'Jane Smith');
INSERT INTO `salaries` VALUES (1000, 556, 'Billy Bob');
INSERT INTO `salaries` VALUES (400, 711, 'Robert Hayek');
INSERT INTO `salaries` VALUES (1200, 235, 'Edward Jorgson');
INSERT INTO `salaries` VALUES (1200, 236, 'Christine Packard');