CREATE DATABASE  IF NOT EXISTS `truckind_innodb_norm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `truckind_innodb_norm`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: truckind_innodb_norm
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
-- Table structure for table `discounts`
--

DROP TABLE IF EXISTS `discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `percent` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discounts`
--

LOCK TABLES `discounts` WRITE;
/*!40000 ALTER TABLE `discounts` DISABLE KEYS */;
INSERT INTO `discounts` VALUES (1,'A8eDVYRHFp',0.0447453),(2,'bW1qWQBRaG',0.415331),(3,'RAAwr8ILa8',0.0662856),(4,'KyMeyz2Azq',0.330262),(5,'kv3h1LID5o',0.416399),(6,'G6twJBxLqD',0.0483404),(7,'Z6VQF7oF4Y',0.408544),(8,'QpNu3x3zOE',0.497679),(9,'FxoXqlpN5v',0.467097),(10,'Wn44MmTCnx',0.37214),(11,'QJNEdakLyh',0.0593916),(12,'oIUyyoLmf6',0.242103),(13,'ubz2b47Q7a',0.0884064),(14,'OXRtkyMHTS',0.169377),(15,'hmTBuDBH9O',0.326667),(16,'uZFysyMlWg',0.0369097),(17,'coOXYnA69k',0.149513),(18,'EycwN4BDyS',0.0904546),(19,'6xerJGQT6b',0.260411),(20,'K8NmqB7q2G',0.198898),(21,'gvZUHUlo8A',0.421945),(22,'k3WgVDnWC8',0.275233),(23,'g3ea2K4NpI',0.453533),(24,'EIvl5A3qeY',0.239526),(25,'DvCrV9mjh8',0.231099),(26,'dxQKNsJSEE',0.388746),(27,'IdscvX5LWK',0.331596),(28,'aaTUahIvGk',0.169335),(29,'oAFRYpsRbf',0.0873064),(30,'SITy8BMGb5',0.0724025),(31,'ezfRgtLueN',0.234182),(32,'J17yYefNh5',0.248574),(33,'KPZLFp64bk',0.377834),(34,'Nn1l9Facyl',0.261649),(35,'BxVzvUI6Hv',0.113041),(36,'relM2O2syt',0.269538),(37,'plIh3YO1g4',0.461036),(38,'QN8Xw48jYA',0.114777),(39,'n6mane7FrZ',0.0700319),(40,'1QO7mVG69D',0.452349);
/*!40000 ALTER TABLE `discounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-14 13:27:11
