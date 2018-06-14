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
-- Dumping events for database 'truckind_innodb_norm'
--

--
-- Dumping routines for database 'truckind_innodb_norm'
--
/*!50003 DROP PROCEDURE IF EXISTS `maximm_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `maximm_transaction`()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
    SET autocommit = 0;
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	START TRANSACTION;
    SELECT @customer_id := max(id) FROM customers;
	SET @customer_id = @customer_id + 2;
	INSERT INTO customers (`name`, surname, company, description, priority,  discounts_id, email, phone) VALUES ('Maxim','Higgins','sqDApFbVLJ32','kk',1.0,14,'MaximAntoniuk2224410@gmail.com','PuILEZajqas1');
	INSERT INTO contracts (description, price, customers_id, `key`) VALUES ('I want to make order for carrying my luggage from airport',42120.76,@customer_id,'VotsSgiBosd');
	/*IF((SELECT count(*) FROM customers WHERE email ='MaximAntoniuk2224410@gmail.com' AND phone ='PuILEZajqas1') = 0) THEN
		--ROLLBACK;
	--END IF;*/
	SET autocommit = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `maximnm_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `maximnm_transaction`()
BEGIN
	DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
    SET autocommit = 0;
    SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	START TRANSACTION;
    SELECT @customer_id = 34578978;
	
	INSERT INTO customers (`name`, surname, company, description, priority,  discounts_id, email, phone) VALUES ('Maxim','Higgins','sqDApFbVLJ32','kk',1.0,14,'MaximAntoniuk2224410@gmail.com','PuILEZajqas1');
	INSERT INTO contracts (description, price, customers_id, `key`) VALUES ('I want to make order for carrying my luggage from airport',42120.76,@customer_id,'VotsSgiBosd');
	/*IF((SELECT count(*) FROM customers WHERE email ='MaximAntoniuk2224410@gmail.com' AND phone ='PuILEZajqas1') = 0) THEN
		--ROLLBACK;
	--END IF;*/
	SET autocommit = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `maxim_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `maxim_transaction`()
BEGIN
	SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	START TRANSACTION;
		INSERT IGNORE INTO customers (`name`, surname, company, description, priority,  discounts_id, email, phone) 
		VALUES ('Max','Hig','sqDApsdfJ32','ktk',1.0,14,'Max2imAntonefwefv@gmail.com','PuILEZajqas1');
	IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
	ELSE
		INSERT IGNORE INTO contracts (description, price, customers_id, `key`)
		VALUES ('I want to make order for carrying my luggage from airport',42120.76,LAST_INSERT_ID(),'VotsSgiBosd');
	END IF;
    IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `max_transaction` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `max_transaction`()
BEGIN
	START TRANSACTION;
		INSERT IGNORE INTO customers (`name`, surname, company, description, priority,  discounts_id, email, phone) 
		VALUES ('Max','Hig','sqDApsdfJ32','ktk',1.0,14,'MaximAntonefwefv@gmail.com','PuILEZajqas1');
	
    IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
    ELSE
		INSERT IGNORE INTO contracts (description, price, customers_id, `key`)
		VALUES ('I want to make order for carrying my luggage from airport',42120.76,1000000000000,'VotsSgiBosd');
	END IF;
	IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
	ELSE
		UPDATE employees SET `name` = "dafd" where id = 2;
	END IF;
    IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tr` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tr`()
BEGIN
	SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	START TRANSACTION;
		INSERT IGNORE INTO customers (`name`, surname, company, description, priority,  discounts_id, email, phone) 
		VALUES ('Max','Hig','sqDApsdfJ32','ktk',1.0,14,'MaximAntonefwefv@gmail.com','PuILEZajqas1');
	
    IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
    ELSE
		INSERT IGNORE INTO contracts (description, price, customers_id, `key`)
		VALUES ('I want to make order for carrying my luggage from airport',42120.76,last_insert_id(),'VotsSgiBosd');
	END IF;
	IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
	ELSE
		UPDATE employees SET `name` = "dafd" where id = 2;
	END IF;
    IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `trf` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `trf`()
BEGIN
	SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
	START TRANSACTION;
		INSERT IGNORE INTO truckind_innodb_norm.customers (`name`, surname, company, description, priority,  discounts_id, email, phone) 
		VALUES ('Max','Hig','sqDApsdfJ32','ktk',1.0,14,'MaximAntonefwefv@gmail.com','PuILEZajqas1');
	
    IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
    ELSE
		INSERT IGNORE INTO truckind_innodb_norm.contracts (description, price, customers_id, `key`)
		VALUES ('I want to make order for carrying my luggage from airport',42120.76,last_insert_id(),'VotsSgiBosd');
	END IF;
	IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
	ELSE
		UPDATE truckind_innodb_norm.employees SET `name` = "dafd" where id = 2;
	END IF;
    IF(ROW_COUNT() = 0) THEN
		ROLLBACK;
	ELSE
		COMMIT;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-14 13:27:13
