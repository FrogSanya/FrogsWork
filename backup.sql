-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: fire
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
-- Table structure for table `shark`
--

DROP TABLE IF EXISTS `shark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shark` (
  `id` int(35) NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `import_date` date DEFAULT NULL,
  `srok` date DEFAULT NULL,
  `kall` int(220) DEFAULT NULL,
  `price` int(249) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shark`
--

LOCK TABLES `shark` WRITE;
/*!40000 ALTER TABLE `shark` DISABLE KEYS */;
INSERT INTO `shark` VALUES (1,'kolbaska','1980-11-02','1980-11-12',69,1488),(2,'meat','1999-12-23','1999-12-27',56,3333),(3,'child','2003-05-26','2003-02-17',146,693),(4,'milk','2007-05-11','2001-04-11',196,9673),(5,'milf','2002-02-12','2005-05-19',15,555),(6,'salmon_shark','2001-03-24','2006-06-20',19,566),(7,'asian','2006-11-29','2008-12-01',25,666),(8,'hammerhead_shark','2006-09-20','2007-10-07',27,116),(9,'red_squard_shirt','2007-06-07','2009-01-23',1,68999),(10,'lemon_shark','2011-09-09','2012-02-28',8,6669),(11,'black_jeans','2020-02-19','2021-01-29',19,7000),(12,'zebra_shark','2015-07-16','2017-05-29',11,7680),(13,'pencil','2005-07-26','2006-06-19',51,3633),(14,'angel_shark','2006-05-27','2007-10-20',59,3553),(15,'mouse','2002-01-16','2008-01-18',19,33333);
/*!40000 ALTER TABLE `shark` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-06 10:56:41
