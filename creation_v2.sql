USE practice_work;
DROP TABLE IF EXISTS `restaurant`;

CREATE TABLE `restaurant`(
`id` int NOT NULL,
`name` VARCHAR(100),
`address` VARCHAR(100),
`rating` int NOT NULL,
`type` VARCHAR(50),
`delivers` VARCHAR(50),
`pick_ups` VARCHAR(50),
`state` VARCHAR(100),
`verified` VARCHAR(50),
`verified_on` VARCHAR(50) NOT NULL,
`closed` VARCHAR(50),
`open_date` VARCHAR(50) NOT NULL,
`owner_id` int,
`abn` BIGINT NOT NULL,
`is_gst_registered` int NOT NULL,
`website_url` VARCHAR(100),
`phone_number` VARCHAR(20),
`google_maps_id` BIGINT NOT NULL,
`min_delivery_value` VARCHAR(50),
`is_boosted` int
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;