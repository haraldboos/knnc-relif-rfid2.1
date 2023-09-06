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
-- Table structure for table `day_31_8_2023`
--

DROP TABLE IF EXISTS `day_31_8_2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_31_8_2023` (
  `tname` varchar(150) NOT NULL,
  `reason` varchar(45) NOT NULL,
  `leasson` int NOT NULL,
  `class` varchar(170) NOT NULL,
  `subject` varchar(160) NOT NULL,
  `concad` varchar(45) NOT NULL,
  `subteacher` varchar(150) NOT NULL,
  `atamp` int NOT NULL DEFAULT '0',
  `relifno` int NOT NULL AUTO_INCREMENT,
  `atmtime` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`relifno`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_31_8_2023`
--

LOCK TABLES `day_31_8_2023` WRITE;
/*!40000 ALTER TABLE `day_31_8_2023` DISABLE KEYS */;
INSERT INTO `day_31_8_2023` VALUES ('Mrs.Bavany Nixson','Unknown reason',1,'Grade 10F','Ta','-','SELVANAYAGAM THARSHAN',0,1,NULL),('Mr.Gnaneswaran varunan','Unknown reason',1,'Grade 9F','Mat','-','Mrs.Sumathi Kishotharan',0,2,NULL),('Mr.Thedsanamoorththy niroshan','Unknown reason',1,'Grade 11B','Mat','-','Mrs.Gowry Sriranjanathan',0,3,NULL),('Mrs Sinthuja Mandaleswaran','Unknown reason',1,'Grade 11D','Eng','-','Mrs.Logananthini Thirukumar',0,4,NULL),('Mr.paramanantham sankeerththan','Unknown reason',1,'Grade 11F','Mat','-','Mrs.M.B.Thayananthy',0,5,NULL),('Mr.kandasamy sarankan','Unknown reason',1,'Grade 12 BST','BTech','-','Ratheeskumar',0,6,NULL),('V.Thivya','Unknown reason',1,'Grade 9A','Ta','-','U JENSIKA',0,7,NULL),('Mr.Kunapalasingam Sutharshan','Unknown reason',1,'Grade 12 Maths B','CMa','-','Mrs.Rathykala Sathiyaseelan',0,8,NULL),('Miss. S.GOWSALA','Unknown reason',2,'Grade 9B','Geo','-','Mrs.Tharsha sathananthan',0,9,NULL),('Mr.Muthukumarasamy Sathananthakumaran','Unknown reason',1,'Grade 12 Maths A','CMa','-','Mr.T. Denin Christy',0,10,NULL),('Mr.kandasamy sarankan','Unknown reason',2,'Grade 12 BST','BTech','-','Ratheeskumar',0,11,NULL),('Mr.paramanantham sankeerththan','Unknown reason',2,'Grade 10D','Mat','-','Mrs.Logananthini Thirukumar',0,12,NULL),('Mr.Thedsanamoorththy niroshan','Unknown reason',2,'Grade 9A','Mat','-','S.Nivethini',0,13,NULL),('Mr.pararasasigam sasitharan','Unknown reason',2,'Grade 6C','His','-','Mr.Kathirvelu arudselvam',0,14,NULL),('Mrs Sinthuja Mandaleswaran','Unknown reason',2,'Grade 7E','Eng','-','V GOWTHAMY',0,15,NULL),('V.Thivya','Unknown reason',2,'Grade 10B','Ta','-','Mrs.Rathykala Sathiyaseelan',0,16,NULL),('Mr.Muthukumarasamy Sathananthakumaran','Unknown reason',2,'Grade 12 Maths A','CMa','-','Mr.R.Thilaxshan',0,17,NULL),('Mr.Kunapalasingam Sutharshan','Unknown reason',2,'Grade 12 Maths B','CMa','-','NITHTHIYAVATHANY IRASATHURAI',0,18,NULL),('Kasthuri','Unknown reason',3,'Grade 6D,Grade 6E,Grade 6F','Reli','-','Mrs.Tharsha sathananthan',0,19,NULL),('Miss. S.GOWSALA','Unknown reason',3,'Grade 8B','Geo','-','Miss.Sivanantnini sivagnanam',0,20,NULL),('Mrs.Bavany Nixson','Unknown reason',3,'Grade 7F (English Medium)','Ta','-','SELVANAYAGAM THARSHAN',0,21,NULL),('Mr.Gnaneswaran varunan','Unknown reason',3,'Grade 13 Maths B','Phy','-','L NISHANTHINY',0,22,NULL),('Mr.Thedsanamoorththy niroshan','Unknown reason',3,'Grade 8C','Mat','-','Mr.Arunasalam Sathiyanantham',0,23,NULL),('Mr.paramanantham sankeerththan','Unknown reason',3,'Grade 10D','Mat','-','Mr.Varathan Hajeepan',0,24,NULL),('Mr.pararasasigam sasitharan','Unknown reason',3,'Grade 12 Arts A,Grade 12 Arts B','Bas I','-','Mrs.Kowsalya piratheepan',0,25,NULL),('Pavuja Thevarajan','Unknown reason',3,'Grade 9F,Grade 9A,Grade 9B,Grade 9C,Grade 9E,Grade 9D','Bas II','no vlue add ','no vlue add ',0,26,NULL),('Miss. S.GOWSALA','Unknown reason',4,'Grade 9E','Geo','-','Mrs.Tharsha sathananthan',0,27,NULL),('V.Thivya','Unknown reason',3,'Grade 8E','Ta','-','Mrs Venthan Lavanya',0,28,NULL),('Kajanan','Unknown reason',3,'Grade 11A','Mat','-','Mrs.Gowry Sriranjanathan',0,29,NULL),('Mrs.kovalavan nalajeni','Unknown reason',3,'Grade 13 Commerce','G','-','Mrs.Rathika sinthujan',0,30,NULL),('Mrs Sinthuja Mandaleswaran','Unknown reason',3,'Grade 12 Maths B','Eng','-','Mr.Jevarasa Tharshan',0,31,NULL),('Mrs.Bavany Nixson','Unknown reason',4,'Grade 6C','Ta','-','U JENSIKA',0,32,NULL),('Mr.paramanantham sankeerththan','Unknown reason',4,'Grade 6F','Mat(E)','-','L NISHANTHINY',0,33,NULL),('Mr.Gnaneswaran varunan','Unknown reason',4,'Grade 13 Maths B','Phy','-','Mr.Jevarasa Tharshan',0,34,NULL),('Mr.pararasasigam sasitharan','Unknown reason',4,'Grade 12 Arts A,Grade 12 Arts B','Bas I','-','S.Nivethini',0,35,NULL),('Mrs Sinthuja Mandaleswaran','Unknown reason',4,'Grade 9A','Eng','-','Mr.Arunasalam Sathiyanantham',0,36,NULL),('V.Thivya','Unknown reason',4,'Grade 11D','Ta','-','Mrs.Somalakky Prashanthan',0,37,NULL),('Miss. S.GOWSALA','Unknown reason',5,'Grade 9A','Geo','-','V GOWTHAMY',0,38,NULL),('Mrs.Bavany Nixson','Unknown reason',5,'Grade 9E','Ta','-','SELVANAYAGAM THARSHAN',0,39,NULL),('Pavuja Thevarajan','Unknown reason',4,'Grade 7D,Grade 7A,Grade 7B,Grade 7E,Grade 7C,Grade 7F (English Medium)','Bas II','no vlue add ','no vlue add ',0,40,NULL),('Mr.Gnaneswaran varunan','Unknown reason',5,'Grade 12 Maths A','Phy','-','Ratheeskumar',0,41,NULL),('Mr.kandasamy sarankan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A','Bas II','no vlue add ','no vlue add ',0,42,NULL),('Mr.Thedsanamoorththy niroshan','Unknown reason',5,'Grade 6B','Mat','-','Mrs.Sumathi Kishotharan',0,43,NULL),('Mr.pararasasigam sasitharan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A','Bas II','no vlue add ','no vlue add ',0,44,NULL),('S.Jeyavarshini','Unknown reason',5,'Grade 13 BST','BTech','-','Mrs.Logananthini Thirukumar',0,45,NULL),('Mrs Sinthuja Mandaleswaran','Unknown reason',5,'Grade 6D','Eng','-','Miss.Sivanantnini sivagnanam',0,46,NULL),('Mr.Muthukumarasamy Sathananthakumaran','Unknown reason',5,'Grade 13  Maths A','CMa','-','Mrs.Kowsalya piratheepan',0,47,NULL),('Mr.Kunapalasingam Sutharshan','Unknown reason',5,'Grade 13 Maths B','CMa','-','Mr.Jevarasa Tharshan',0,48,NULL),('Pavuja Thevarajan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A','Bas II','no vlue add ','no vlue add ',0,49,NULL),('Kasthuri','Unknown reason',6,'Grade 7F (English Medium),Grade 7D,Grade 7E','Reli','no vlue add ','no vlue add ',0,50,NULL),('Mr.kandasamy sarankan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A','Bas II','no vlue add ','no vlue add ',0,51,NULL),('Mr.Gnaneswaran varunan','Unknown reason',6,'Grade 12 Maths A','Phy','-','Mrs Sujana Kugatheepan',0,52,NULL),('Mr.pararasasigam sasitharan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A','Bas II','no vlue add ','no vlue add ',0,53,NULL),('S.Jeyavarshini','Unknown reason',6,'Grade 13 BST','BTech','-','SELVANAYAGAM THARSHAN',0,54,NULL),('Mr.paramanantham sankeerththan','Unknown reason',6,'Grade 9D','Mat','-','Mr.Kathirvelu arudselvam',0,55,NULL),('Miss. S.GOWSALA','Unknown reason',7,'Grade 9D','Geo','-','Mrs.Sharminy thiyakaran',0,56,NULL),('Mr.Kunapalasingam Sutharshan','Unknown reason',6,'Grade 13 Maths B','CMa','-','Mrs.Kowsalya piratheepan',0,57,NULL),('Mr.Thedsanamoorththy niroshan','Unknown reason',6,'Grade 10F','Mat','-','S.Nivethini',0,58,NULL),('Mrs.Bavany Nixson','Unknown reason',7,'Grade 8C','Ta','-','N USHNA',0,59,NULL),('Mrs Sinthuja Mandaleswaran','Unknown reason',6,'Grade 10D','Eng','-','L NISHANTHINY',0,60,NULL),('Mr.Muthukumarasamy Sathananthakumaran','Unknown reason',6,'Grade 13  Maths A','CMa','-','T ARANY',0,61,NULL),('Pavuja Thevarajan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A','Bas II','no vlue add ','no vlue add ',0,62,NULL),('Mr.Thedsanamoorththy niroshan','Unknown reason',7,'Grade 10F','Mat','-','NITHARSHAN',0,63,NULL),('Mrs.kovalavan nalajeni','Unknown reason',7,'Grade 12  Commerce','Acc','-','S.Nivethini',0,64,NULL),('Mr.paramanantham sankeerththan','Unknown reason',7,'Grade 8B','Mat','-','Mr.K.Subankan',0,65,NULL),('Mrs Sinthuja Mandaleswaran','Unknown reason',7,'Grade 10D','Eng','-','Ratheeskumar',0,66,NULL),('V.Thivya','Unknown reason',7,'Grade 7E','Ta','-','Mrs.Tharsha sathananthan',0,67,NULL),('Kajanan','Unknown reason',7,'Grade 10C','Mat','-','Miss.Sivanantnini sivagnanam',0,68,NULL),('Mrs.Bavany Nixson','Unknown reason',8,'Grade 11E','Ta','-','Mr.Varathan Hajeepan',0,69,NULL),('S.Jeyavarshini','Unknown reason',7,'Grade 13 Maths B','G','-','Mrs.M.B.Thayananthy',0,70,NULL),('Mr.Thedsanamoorththy niroshan','Unknown reason',8,'Grade 7D','Mat','-','Mr.Mahendrarajah Lavanyan',1,71,'13:13:00'),('Miss. S.GOWSALA','Unknown reason',8,'Grade 9F','Geo','-','V GOWTHAMY',0,72,NULL),('Mr.paramanantham sankeerththan','Unknown reason',8,'Grade 7F (English Medium)','Mat(E)','-','L NISHANTHINY',1,73,'13:12:00'),('Mrs.kovalavan nalajeni','Unknown reason',8,'Grade 12  Commerce','Acc','-','Mrs.Rathika sinthujan',1,74,'13:12:00'),('Mrs Sinthuja Mandaleswaran','Unknown reason',8,'Grade 13 Maths B','Eng','-','Mrs.Sharminy thiyakaran',0,75,NULL),('Pavuja Thevarajan','Unknown reason',8,'Grade 8F,Grade 8B,Grade 8C,Grade 8D,Grade 8E,Grade 8A','Bas II','no vlue add ','no vlue add ',0,76,NULL),('Kajanan','Unknown reason',8,'Grade 10C','Mat','-','Mr.Selvakumar vithursan',0,77,NULL),('Mr.pararasasigam sasitharan','Unknown reason',8,'Grade 10D','His','-','Ratheeskumar',0,78,NULL);
/*!40000 ALTER TABLE `day_31_8_2023` ENABLE KEYS */;
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
