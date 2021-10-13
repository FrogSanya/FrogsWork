-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db1
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'Vadim','moloko','Russia','Moskov','big'),(2,'Max','shpak','Yzbekistan','Tashkent','Erevana'),(3,'Viktor','Meet','Poland','Krakov','Kurwa'),(4,'Alena','cat','USA','NY','insaiders');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'Sergey','Kaban','Alexsandrovich','Larek','1997-11-21','male','ylica_jopa','Moskov');
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-13  6:36:22
