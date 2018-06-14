CREATE DATABASE  IF NOT EXISTS `truckind_innodb_denorm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `truckind_innodb_denorm`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: truckind_innodb_denorm
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Table structure for table `cars_has_journeys`
--

DROP TABLE IF EXISTS `cars_has_journeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars_has_journeys` (
  `cars_id` int(11) NOT NULL,
  `journeys_id` int(11) NOT NULL,
  `is_accepted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cars_id`,`journeys_id`),
  KEY `fk_cars_has_journeys_journeys1_idx` (`journeys_id`),
  KEY `fk_cars_has_journeys_cars1_idx` (`cars_id`),
  CONSTRAINT `fk_cars_has_journeys_cars1` FOREIGN KEY (`cars_id`) REFERENCES `cars` (`id`),
  CONSTRAINT `fk_cars_has_journeys_journeys1` FOREIGN KEY (`journeys_id`) REFERENCES `journeys` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars_has_journeys`
--

LOCK TABLES `cars_has_journeys` WRITE;
/*!40000 ALTER TABLE `cars_has_journeys` DISABLE KEYS */;
/*!40000 ALTER TABLE `cars_has_journeys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-14 13:27:18
