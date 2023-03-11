-- Adminer 4.8.1 MySQL 8.0.32 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

CREATE DATABASE `eav_example` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eav_example`;

DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `entity_id` int unsigned NOT NULL,
  `attribute_id` int unsigned NOT NULL,
  `value_id` int unsigned NOT NULL,
  UNIQUE KEY `entity_attribute_value` (`entity_id`,`attribute_id`,`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `cars`;
INSERT INTO `cars` (`entity_id`, `attribute_id`, `value_id`) VALUES
(1,	1,	1),
(1,	2,	8),
(1,	3,	9),
(1,	4,	10),
(1,	5,	5),
(1,	5,	10),
(2,	1,	1),
(2,	2,	2),
(2,	3,	3),
(2,	4,	4),
(2,	5,	5),
(3,	1,	12),
(3,	2,	13);

DROP TABLE IF EXISTS `eav_attributes`;
CREATE TABLE `eav_attributes` (
  `attribute_id` int unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `attribute_name` (`attribute_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `eav_attributes`;
INSERT INTO `eav_attributes` (`attribute_id`, `attribute_name`) VALUES
(4,	'color'),
(2,	'make'),
(3,	'model'),
(1,	'type'),
(5,	'year');

DROP TABLE IF EXISTS `eav_entities`;
CREATE TABLE `eav_entities` (
  `entity_id` int unsigned NOT NULL AUTO_INCREMENT,
  `entity_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `entity_name` (`entity_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `eav_entities`;
INSERT INTO `eav_entities` (`entity_id`, `entity_name`) VALUES
(2,	'car_XFV001'),
(1,	'car_XFV002'),
(3,	'car_XFV003');

DROP TABLE IF EXISTS `eav_values`;
CREATE TABLE `eav_values` (
  `value_id` int unsigned NOT NULL AUTO_INCREMENT,
  `value_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `value_name` (`value_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

TRUNCATE `eav_values`;
INSERT INTO `eav_values` (`value_id`, `value_name`) VALUES
(5,	'2011'),
(4,	'black'),
(13,	'ferrari'),
(10,	'grey'),
(3,	'lancer'),
(2,	'mitsubishi'),
(12,	'new'),
(1,	'used'),
(9,	'V50'),
(8,	'volvo');

-- 2023-03-11 05:44:56
