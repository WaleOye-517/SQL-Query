DROP DATABASE IF EXISTS `practice_work`;
CREATE DATABASE `practice_work`;
USE `practice_work`;

DROP TABLE IF EXISTS `btc_usdt`;
CREATE TABLE `btc_usdt`(
`date_time` BIGINT(20) NOT NULL,
`open` double NOT NULL,
`high` double NOT NULL,
`low` double NOT NULL,
`close` double NOT NULL,
`volume` double NOT NULL,
`close_time` BIGINT(20) NOT NULL,
`asset_volume` double NOT NULL,
`number_of_trades` int(10) NOT NULL,
`taker_buy_base_volume` double NOT NULL,
`taker_buy_quote_volume` double NOT NULL,
`ignore` varchar(50) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
