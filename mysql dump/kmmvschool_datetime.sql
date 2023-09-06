-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: 192.168.57.3    Database: kmmvschool
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `datetime`
--

DROP TABLE IF EXISTS `datetime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datetime` (
  `date` varchar(15) NOT NULL,
  `1st` time NOT NULL,
  `2nd` time NOT NULL,
  `3rd` time NOT NULL,
  `4th` time NOT NULL,
  `5th` time NOT NULL,
  `6th` time NOT NULL,
  `7th` time NOT NULL,
  `8th` time NOT NULL,
  `dateno` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`dateno`,`date`),
  UNIQUE KEY `dateno_UNIQUE` (`dateno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datetime`
--

LOCK TABLES `datetime` WRITE;
/*!40000 ALTER TABLE `datetime` DISABLE KEYS */;
INSERT INTO `datetime` VALUES ('day_18_8_2023','08:03:00','09:15:00','10:05:00','10:45:00','11:05:00','12:02:00','12:24:00','13:30:00',1),('day_31_8_2023','08:30:00','09:30:00','10:15:00','11:40:00','12:15:00','12:40:00','12:50:00','01:15:00',2),('day_31_8_2023','08:08:00','09:10:00','09:30:00','10:30:00','11:40:00','12:50:00','22:00:00','13:08:00',4);
/*!40000 ALTER TABLE `datetime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-05 10:02:37
