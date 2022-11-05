USE jjc_test_data;
CREATE TABLE `target` (
`id` int(50) NOT NULL,
`val` varchar(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `target` VALUES (1,'A');
INSERT INTO `target` VALUES (2,'A');
INSERT INTO `target` VALUES (3,NULL);
INSERT INTO `target` VALUES (5,'A');
INSERT INTO `target` VALUES (8,'A');
INSERT INTO `target` VALUES (9,NULL);
INSERT INTO `target` VALUES (10,NULL);

CREATE TABLE `source` (
`id` int(50) NOT NULL,
`val` varchar(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `source` VALUES (1, NULL);
INSERT INTO `source` VALUES (2, 'B');
INSERT INTO `source` VALUES (4, 'B');
INSERT INTO `source` VALUES (8, 'B');
INSERT INTO `source` VALUES (9, 'B');
INSERT INTO `source` VALUES (10, NULL);
INSERT INTO `source` VALUES (11, NULL);