-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: d56058sd119734
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `sarp_card_types`
--

DROP TABLE IF EXISTS `sarp_card_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sarp_card_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_estonian_ci NOT NULL,
  `does_expire` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `added` datetime NOT NULL,
  `added_by` int(10) unsigned NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) unsigned NOT NULL,
  `deleted` datetime DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sarp_worker_cards`
--

DROP TABLE IF EXISTS `sarp_worker_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sarp_worker_cards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(6) COLLATE utf8_estonian_ci NOT NULL,
  `worker_id` int(10) unsigned NOT NULL,
  `card_type_id` int(10) unsigned NOT NULL,
  `number` varchar(50) COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `date_expire` date NOT NULL,
  `has_picture` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `deleted` datetime DEFAULT NULL,
  `deleted_by` int(10) unsigned DEFAULT NULL,
  `added` datetime NOT NULL,
  `added_by` int(10) unsigned NOT NULL,
  `changed` datetime NOT NULL,
  `changed_by` int(10) unsigned NOT NULL,
  `db_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_estonian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-13  8:34:17
