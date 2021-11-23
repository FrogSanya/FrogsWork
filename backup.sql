-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: classic
-- ------------------------------------------------------
-- Server version	10.3.29-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `text_log` char(100) DEFAULT NULL,
  `type` char(100) DEFAULT NULL,
  `table_name` char(100) DEFAULT NULL,
  `date_mess` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'insert','insert','seller','2021-11-11'),(2,'insert','insert','seller','2021-11-23'),(3,'insert','insert','seller','2021-11-23'),(4,'insert','insert','seller','2021-11-23'),(5,'insert','insert','zakaz_provider','2021-11-23'),(6,'update','update','zakaz_provider','2021-11-23'),(7,'delete','delete','zakaz_provider','2021-11-23');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `id` int(35) NOT NULL AUTO_INCREMENT,
  `name` char(125) DEFAULT NULL,
  `type` char(125) DEFAULT NULL,
  `country` char(125) DEFAULT NULL,
  `city` char(125) DEFAULT NULL,
  `adress` char(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'Vadim','moloko','Russia','Moskov','big'),(2,'Max','shpak','Yzbekistan','Tashkent','Erevana'),(3,'Viktor','Meet','Poland','Krakov','Kurwa'),(4,'Alena','cat','USA','NY','insaiders'),(5,'Masha','Beer','Kavkaz',NULL,NULL);
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_insert_provider AFTER insert ON provider FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('insert', 'insert', 'zakaz_provider', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_update_provider AFTER insert ON provider FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('update', 'update', 'zakaz_provider', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_delete_provider AFTER insert ON provider FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('delete', 'delete', 'zakaz_provider', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seller` (
  `id` int(35) NOT NULL AUTO_INCREMENT,
  `First_name` char(125) DEFAULT NULL,
  `Second_name` char(125) DEFAULT NULL,
  `Last_name` char(125) DEFAULT NULL,
  `type_trade_point` char(125) DEFAULT NULL,
  `year_born` date DEFAULT NULL,
  `sex` char(15) DEFAULT NULL,
  `adress_Living` char(125) DEFAULT NULL,
  `city_living` char(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'Sergey','Kaban','Alexsandrovich','Larek','1997-11-21','male','ylica_jopa','Moskov'),(2,'F','I','O',NULL,NULL,NULL,NULL,NULL),(3,'z','a',NULL,NULL,NULL,NULL,NULL,NULL),(4,'z','a',NULL,NULL,NULL,NULL,NULL,NULL),(5,'z','a',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_SOZDANII_SELLER AFTER INSERT ON seller FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('insert', 'insert', 'seller', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_UPDATE_SELLER AFTER UPDATE ON seller FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('update', 'update', 'seller', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_udalie_SELLER AFTER DELETE ON seller FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('delete', 'delete', 'seller', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `trade_org`
--

DROP TABLE IF EXISTS `trade_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_org` (
  `name` char(125) DEFAULT NULL,
  `adres` char(125) DEFAULT NULL,
  `FIO` char(125) DEFAULT NULL,
  `nalog_number` int(35) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nalog_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_org`
--

LOCK TABLES `trade_org` WRITE;
/*!40000 ALTER TABLE `trade_org` DISABLE KEYS */;
INSERT INTO `trade_org` VALUES ('Valfex','Vyazniki_Lenina_9','Tumenev_Viktor_Viktorovich',1);
/*!40000 ALTER TABLE `trade_org` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trade_point`
--

DROP TABLE IF EXISTS `trade_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trade_point` (
  `id` int(35) NOT NULL AUTO_INCREMENT,
  `name` char(125) DEFAULT NULL,
  `type` char(125) DEFAULT NULL,
  `trade_org` char(125) DEFAULT NULL,
  `adres` char(125) DEFAULT NULL,
  `FIO_zaved` char(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trade_point`
--

LOCK TABLES `trade_point` WRITE;
/*!40000 ALTER TABLE `trade_point` DISABLE KEYS */;
INSERT INTO `trade_point` VALUES (1,'jopi_kota','Magazin','Valfex','Vyazniki_Lenina_9','Chief_Keef');
/*!40000 ALTER TABLE `trade_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view1`
--

DROP TABLE IF EXISTS `view1`;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view1` (
  `id` tinyint NOT NULL,
  `First_name` tinyint NOT NULL,
  `Second_name` tinyint NOT NULL,
  `Last_name` tinyint NOT NULL,
  `type_trade_point` tinyint NOT NULL,
  `year_born` tinyint NOT NULL,
  `sex` tinyint NOT NULL,
  `adress_Living` tinyint NOT NULL,
  `city_living` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view2`
--

DROP TABLE IF EXISTS `view2`;
/*!50001 DROP VIEW IF EXISTS `view2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view2` (
  `id` tinyint NOT NULL,
  `data_zakaz` tinyint NOT NULL,
  `trade_point` tinyint NOT NULL,
  `provider` tinyint NOT NULL,
  `name_product` tinyint NOT NULL,
  `kol_vo_product` tinyint NOT NULL,
  `price` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view3`
--

DROP TABLE IF EXISTS `view3`;
/*!50001 DROP VIEW IF EXISTS `view3`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view3` (
  `id` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `country` tinyint NOT NULL,
  `city` tinyint NOT NULL,
  `adress` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view4`
--

DROP TABLE IF EXISTS `view4`;
/*!50001 DROP VIEW IF EXISTS `view4`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view4` (
  `type_trade_point` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view5`
--

DROP TABLE IF EXISTS `view5`;
/*!50001 DROP VIEW IF EXISTS `view5`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view5` (
  `avg(price)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view6`
--

DROP TABLE IF EXISTS `view6`;
/*!50001 DROP VIEW IF EXISTS `view6`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view6` (
  `sum(price)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view7`
--

DROP TABLE IF EXISTS `view7`;
/*!50001 DROP VIEW IF EXISTS `view7`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view7` (
  `count(nalog_number)` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view8`
--

DROP TABLE IF EXISTS `view8`;
/*!50001 DROP VIEW IF EXISTS `view8`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view8` (
  `name` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_0`
--

DROP TABLE IF EXISTS `view_0`;
/*!50001 DROP VIEW IF EXISTS `view_0`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_0` (
  `txt` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_1`
--

DROP TABLE IF EXISTS `view_1`;
/*!50001 DROP VIEW IF EXISTS `view_1`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `view_1` (
  `txt_1` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zakaz_provider`
--

DROP TABLE IF EXISTS `zakaz_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zakaz_provider` (
  `id` int(35) NOT NULL AUTO_INCREMENT,
  `data_zakaz` date DEFAULT NULL,
  `trade_point` char(125) DEFAULT NULL,
  `provider` char(125) DEFAULT NULL,
  `name_product` char(125) DEFAULT NULL,
  `kol_vo_product` float(5,2) DEFAULT NULL,
  `price` int(125) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zakaz_provider`
--

LOCK TABLES `zakaz_provider` WRITE;
/*!40000 ALTER TABLE `zakaz_provider` DISABLE KEYS */;
INSERT INTO `zakaz_provider` VALUES (1,'2021-05-25','Larek','Viktor','Meet',25.50,666);
/*!40000 ALTER TABLE `zakaz_provider` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_insert_zakaz AFTER insert ON zakaz_provider FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('insert', 'insert', 'zakaz_provider', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_update_zakaz AFTER update ON zakaz_provider FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('update', 'update', 'zakaz_provider', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER PRI_delete_zakaz AFTER delete ON zakaz_provider FOR EACH ROW BEGIN INSERt INTO logs (text_log, type, table_name, date_mess) VALUES ('delete', 'delete', 'zakaz_provider', NOW()); end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view1`
--

/*!50001 DROP TABLE IF EXISTS `view1`*/;
/*!50001 DROP VIEW IF EXISTS `view1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view1` AS select `seller`.`id` AS `id`,`seller`.`First_name` AS `First_name`,`seller`.`Second_name` AS `Second_name`,`seller`.`Last_name` AS `Last_name`,`seller`.`type_trade_point` AS `type_trade_point`,`seller`.`year_born` AS `year_born`,`seller`.`sex` AS `sex`,`seller`.`adress_Living` AS `adress_Living`,`seller`.`city_living` AS `city_living` from `seller` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view2`
--

/*!50001 DROP TABLE IF EXISTS `view2`*/;
/*!50001 DROP VIEW IF EXISTS `view2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view2` AS select `zakaz_provider`.`id` AS `id`,`zakaz_provider`.`data_zakaz` AS `data_zakaz`,`zakaz_provider`.`trade_point` AS `trade_point`,`zakaz_provider`.`provider` AS `provider`,`zakaz_provider`.`name_product` AS `name_product`,`zakaz_provider`.`kol_vo_product` AS `kol_vo_product`,`zakaz_provider`.`price` AS `price` from `zakaz_provider` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view3`
--

/*!50001 DROP TABLE IF EXISTS `view3`*/;
/*!50001 DROP VIEW IF EXISTS `view3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view3` AS select `provider`.`id` AS `id`,`provider`.`name` AS `name`,`provider`.`type` AS `type`,`provider`.`country` AS `country`,`provider`.`city` AS `city`,`provider`.`adress` AS `adress` from `provider` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view4`
--

/*!50001 DROP TABLE IF EXISTS `view4`*/;
/*!50001 DROP VIEW IF EXISTS `view4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view4` AS select `view1`.`type_trade_point` AS `type_trade_point` from `view1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view5`
--

/*!50001 DROP TABLE IF EXISTS `view5`*/;
/*!50001 DROP VIEW IF EXISTS `view5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view5` AS select avg(`zakaz_provider`.`price`) AS `avg(price)` from `zakaz_provider` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view6`
--

/*!50001 DROP TABLE IF EXISTS `view6`*/;
/*!50001 DROP VIEW IF EXISTS `view6`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view6` AS select sum(`zakaz_provider`.`price`) AS `sum(price)` from `zakaz_provider` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view7`
--

/*!50001 DROP TABLE IF EXISTS `view7`*/;
/*!50001 DROP VIEW IF EXISTS `view7`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view7` AS select count(`trade_org`.`nalog_number`) AS `count(nalog_number)` from `trade_org` where `trade_org`.`name` = 'OOO Imperium' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view8`
--

/*!50001 DROP TABLE IF EXISTS `view8`*/;
/*!50001 DROP VIEW IF EXISTS `view8`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view8` AS select `view3`.`name` AS `name` from `view3` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_0`
--

/*!50001 DROP TABLE IF EXISTS `view_0`*/;
/*!50001 DROP VIEW IF EXISTS `view_0`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_0` AS select 'Once, for the position of middle back-end developer, I interviewed a person who was probably at the peak of self-confidence. He convinced that in any project he comes to, a service station will soon become, and one left makes projects much cooler than what we need. The guy was so energetic, optimistic and funny in his confidence that we gave him a chance and called him for a test period. Besides, on the second day of testing he fell into the "pit of suffering" and could not get out of it.' AS `txt` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_1`
--

/*!50001 DROP TABLE IF EXISTS `view_1`*/;
/*!50001 DROP VIEW IF EXISTS `view_1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_1` AS select 'Once, for the position of middle back-end developer, I interviewed a person who was probably at the peak of self-confidence. He convinced that in any project he comes to, a service station will soon become, and one left makes projects much cooler than what we need. The guy was so energetic, optimistic and funny in his confidence that we gave him a chance and called him for a test period. Besides, on the second day of testing he fell into the "pit of suffering" and could not get out of it.' AS `txt_1` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-23  6:41:03
