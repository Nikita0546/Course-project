-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mdk1101
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `legal_entity` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,_binary '\0'),(2,_binary ''),(3,_binary '\0'),(4,_binary '\0'),(5,_binary ''),(6,_binary '\0');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `SNILS` char(11) DEFAULT NULL,
  `TIN` char(12) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `PTS` char(15) NOT NULL,
  `STS` char(10) NOT NULL,
  `Client_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Contact_Client1_idx` (`Client_id`),
  CONSTRAINT `fk_Contact_Client1` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Давыдов Н. А.','56396590477','7526913584','88003422212','A007AA197','77ОТ243201',1),(2,'Терешин А. И.','54762048569','5724924647','89991234466','B224AB584','85ВА687562',2),(3,'Кривохижин В. Н.','85654389302','8310893582','89891566738','T76XX4926','96PX983748',3),(4,'Ершов Р. М.','63273962064','4736368543','89959676197','O28HB4638','73BH637295',4),(5,'Шаров С. Д.','95282764598','9524278454','89451002222','A28AH1922','95AX654812',5),(6,'Сурков А. А.','59372916857','4579284675','8900111111','A11AA1111','69KC554466',6);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `date_mrp`
--

DROP TABLE IF EXISTS `date_mrp`;
/*!50001 DROP VIEW IF EXISTS `date_mrp`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `date_mrp` AS SELECT 
 1 AS `id`,
 1 AS `source_path`,
 1 AS `date_start`,
 1 AS `date_end`,
 1 AS `Client_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mrp`
--

DROP TABLE IF EXISTS `mrp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mrp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source_path` varchar(255) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `Client_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_MRP_Client1_idx` (`Client_id`),
  CONSTRAINT `fk_MRP_Client1` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mrp`
--

LOCK TABLES `mrp` WRITE;
/*!40000 ALTER TABLE `mrp` DISABLE KEYS */;
INSERT INTO `mrp` VALUES (1,'565ef23bc','2024-05-01 00:00:00','2024-06-11 00:00:00',2),(2,'485qe56hj','2024-06-09 00:00:00','2024-07-19 00:00:00',5);
/*!40000 ALTER TABLE `mrp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passport`
--

DROP TABLE IF EXISTS `passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passport` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `series_number` char(10) NOT NULL,
  `issued` varchar(255) NOT NULL,
  `dpt_code` char(6) NOT NULL,
  `daye_issued` date NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `gender` char(1) NOT NULL,
  `date_of_birth` date NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `Contact_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Passport_Contact1_idx` (`Contact_id`),
  CONSTRAINT `fk_Passport_Contact1` FOREIGN KEY (`Contact_id`) REFERENCES `contact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passport`
--

LOCK TABLES `passport` WRITE;
/*!40000 ALTER TABLE `passport` DISABLE KEYS */;
INSERT INTO `passport` VALUES (1,'3628768960','УМВД РОССИИ ПО ТВЕРСКОЙ ОБЛАСТИ','690004','2024-10-18','Давыдов Н. А.','М','2005-05-23','РОССИЯ г. ТВЕРЬ',1),(2,'5716983468','УФМС РОССИИ ПО МОСКОВСКОЙ ОБЛАСТИ','500003','2018-08-15','Терешин А. И.','М','1998-08-08','РОССИЯ г. МОСКВА',2),(3,'3465927658','УМВД РОССИИ ПО ТВЕРСКОЙ ОБЛАСТИ','690004','2005-04-22','Кривохижин В. Н.','М','1985-09-10','РОССИЯ г. ТВЕРЬ',3),(4,'9157364825','УМВД РОССИИ ПО ТВЕРСКОЙ ОБЛАСТИ','690004','2009-01-06','Ершов Р. М.','М','1995-02-13','РОССИЯ г. ТВЕРЬ',4),(5,'2671537827','УФМС РОССИИ ПО МОСКОВСКОЙ ОБЛАСТИ','500003','2011-03-25','Шаров С. Д.','М','1991-07-18','РОССИЯ г. МОСКВА',5),(6,'6173851975','УМВД РОССИИ ПО ТВЕРСКОЙ ОБЛАСТИ','690004','2013-04-22','Сурков А. А.','М','1993-04-10','РОССИЯ г. ТВЕРЬ',6);
/*!40000 ALTER TABLE `passport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tachograph`
--

DROP TABLE IF EXISTS `tachograph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tachograph` (
  `id` int NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `serial_number` varchar(16) NOT NULL,
  `Client_id` int unsigned NOT NULL,
  `Vehicle_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Tachograph_Client1_idx` (`Client_id`),
  KEY `fk_Tachograph_Vehicle1_idx` (`Vehicle_id`),
  CONSTRAINT `fk_Tachograph_Client1` FOREIGN KEY (`Client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `fk_Tachograph_Vehicle1` FOREIGN KEY (`Vehicle_id`) REFERENCES `vehicle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tachograph`
--

LOCK TABLES `tachograph` WRITE;
/*!40000 ALTER TABLE `tachograph` DISABLE KEYS */;
INSERT INTO `tachograph` VALUES (2,'ООО АТОЛ ДРАЙВ','Drive Smart','A754T481RES75154',1,1),(3,'ООО НТЦ Измеритель',' ШТРИХ-ТахоRUS','B557R74ER754WE45',2,2);
/*!40000 ALTER TABLE `tachograph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `VIN` char(17) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'DAF','LF','Z94CB41AACR123456'),(2,'Volvo','FH16','F45RB6A74YGP89452'),(3,'IVECO','EUROCARGO','J5PO56D456O945276');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `date_mrp`
--

/*!50001 DROP VIEW IF EXISTS `date_mrp`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `date_mrp` AS select `mrp`.`id` AS `id`,`mrp`.`source_path` AS `source_path`,`mrp`.`date_start` AS `date_start`,`mrp`.`date_end` AS `date_end`,`mrp`.`Client_id` AS `Client_id` from `mrp` where (`mrp`.`date_end` > curdate()) */;
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

-- Dump completed on 2024-06-18 12:23:14
