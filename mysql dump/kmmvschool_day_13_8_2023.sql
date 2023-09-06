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
-- Table structure for table `day_13_8_2023`
--

DROP TABLE IF EXISTS `day_13_8_2023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `day_13_8_2023` (
  `tname` varchar(150) NOT NULL,
  `reason` varchar(45) NOT NULL,
  `leasson` int NOT NULL,
  `class` varchar(170) NOT NULL,
  `subject` varchar(160) NOT NULL,
  `concad` varchar(45) NOT NULL,
  `subteacher` varchar(150) NOT NULL,
  `atamp` int NOT NULL DEFAULT '0',
  `relifno` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`relifno`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `day_13_8_2023`
--

LOCK TABLES `day_13_8_2023` WRITE;
/*!40000 ALTER TABLE `day_13_8_2023` DISABLE KEYS */;
INSERT INTO `day_13_8_2023` VALUES ('Mr.Arunasalam Sathiyanantham','Unknown reason',1,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,1),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',1,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,2),('Mr.Kugenthiran Anushan','Unknown reason',1,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,3),('Mrs.Thilkka Jude Anitas','Unknown reason',1,'Grade 9D ','Ta','-','Selvakumar Thavarasa',0,4),('Mrs.Nilanthiny Subaraj','Unknown reason',1,'Grade 7D ','Ta','-','Mr.sivasothy Ginojan',0,5),('Mrs.Karthiga Subothan','Unknown reason',1,'Grade 8D ','Mat','-','Mrs.Gowry Sriranjanathan',0,6),('Miss.Mahishija Perinpanayagam','Unknown reason',1,'Grade 6C ','Eng','-','SANTHIRAKUMAR THIKALAVAN',0,7),('Mr.Kajenderavarathan Mayuran','Unknown reason',1,'Grade 6F ','Eng','-','U JENSIKA',0,8),('Mr.kandasamy sarankan','Unknown reason',1,'Grade 12 BST ','BTech','-','Mr.T. Denin Christy',0,9),('Mrs.Dilakshi jereem niroshan','Unknown reason',1,'Grade 8A ','Eng','-','Mrs.D.sinthuya',0,10),('Mr.paramanantham sankeerththan','Unknown reason',1,'Grade 11F ','Mat','-','Mr.Rasaratnam kandeepan',0,11),('Mrs.Kowsalya piratheepan','Unknown reason',1,'Grade 11E ','Eng','-','DONSALA MARIYANAYAGAM',0,12),('Mrs.S.Thushany','Unknown reason',1,'Grade 6A ','Sci','-','Mrs.M.B.Thayananthy',0,13),('Mr.R.Thilaxshan','Unknown reason',1,'Grade 10D ','Sci','-','Miss. S.GOWSALA',0,14),('Mr.Arunasalam Sathiyanantham','Unknown reason',2,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,15),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',2,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,16),('Mrs.Gosalai Suganthan','Unknown reason',2,'Grade 8D ','Eng','-','Selvakumar Thavarasa',0,17),('Mr.Kugenthiran Anushan','Unknown reason',2,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,18),('Mrs.J Mary Immaculin Jesuthas','Unknown reason',2,'Grade 10F ','Sci','-','Mr.sivasothy Ginojan',0,19),('Mrs.Karthiga Subothan','Unknown reason',2,'Grade 11C ','Mat','-','V GOWTHAMY',0,20),('Mrs.Logananthini Thirukumar','Unknown reason',2,'Grade 8B ','Hyg','-','S.Nivethini',0,21),('Mr.Kajenderavarathan Mayuran','Unknown reason',2,'Grade 11B ','Eng','-','Mr.T. Denin Christy',0,22),('Mr.kandasamy sarankan','Unknown reason',2,'Grade 12 BST ','BTech','-','Miss.Sivanantnini sivagnanam',0,23),('Mrs.Dilakshi jereem niroshan','Unknown reason',2,'Grade 11F ','Eng','-','Mr.Selvakumar vithursan ',0,24),('Mr.paramanantham sankeerththan','Unknown reason',2,'Grade 9D ','Mat','-','Mr.Kathirvelu arudselvam',0,25),('S.Jeyavarshini','Unknown reason',2,'Grade 8A ','Lib','-','NITHTHIYAVATHANY IRASATHURAI',0,26),('Mrs.S.Thushany','Unknown reason',2,'Grade 9B ','PTS','-','Mrs.Rathykala Sathiyaseelan',0,27),('DONSALA MARIYANAYAGAM','Unknown reason',2,'Grade 11A ','Lib','-','->',0,28),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',3,'Grade 12 Maths B ','Phy','-','Mr.K.Subankan',0,29),('Mrs.Vijayanithy Selvananthan','Unknown reason',3,'Grade 10F,Grade 10E,Grade 10D,Grade 10C,Grade 10B,Grade 10A ','Bas III','no vlue add ','no vlue add ',0,30),('Mrs.Vasantharani Vimalenthiran','Unknown reason',3,'Grade 9F,Grade 9D,Grade 9E ','Reli','no vlue add ','no vlue add ',0,31),('Mrs.Gosalai Suganthan','Unknown reason',3,'Grade 7B ','Eng','-','Selvakumar Thavarasa',0,32),('Mr.Kugenthiran Anushan','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,33),('Mrs.Thilkka Jude Anitas','Unknown reason',3,'Grade 9F,Grade 9D,Grade 9E ','Reli','no vlue add ','no vlue add ',0,34),('Mrs.Nilanthiny Subaraj','Unknown reason',3,'Grade 9F,Grade 9D,Grade 9E ','Reli','no vlue add ','no vlue add ',0,35),('Mrs.Karthiga Subothan','Unknown reason',3,'Grade 6A ','Mat','-','Mr.Muthukumarasamy Sathananthakumaran',0,36),('Mrs.Logananthini Thirukumar','Unknown reason',3,'Grade 10F,Grade 10E,Grade 10D,Grade 10C,Grade 10B,Grade 10A ','Bas III','no vlue add ','no vlue add ',0,37),('Miss.Mahishija Perinpanayagam','Unknown reason',3,'Grade 8F ','Eng','-','Mrs.Somalakky Prashanthan',0,38),('Mrs Sujana Kugatheepan','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,39),('Mrs.Dilakshi jereem niroshan','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,40),('Mr.paramanantham sankeerththan','Unknown reason',3,'Grade 6F ','Mat(E)','-','U JENSIKA',0,41),('Mrs.Kowsalya piratheepan','Unknown reason',3,'Grade 13  Maths A ','Eng','-','V GOWTHAMY',0,42),('Mrs.S.Thushany','Unknown reason',3,'Grade 10F,Grade 10E,Grade 10D,Grade 10C,Grade 10B,Grade 10A ','Bas III','no vlue add ','no vlue add ',0,43),('DONSALA MARIYANAYAGAM','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,44),('T ARANY','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,45),('no vlue add ','?',3,'Grade 6F ','Mat(E)','->','no vlue add ',0,46),('Mrs.Vijayanithy Selvananthan','Unknown reason',4,'Grade 9D ','Hyg','-','Mr.sivasothy Ginojan',0,47),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',4,'Grade 12 Maths B ','Phy','-','Selvakumar Thavarasa',0,48),('Mrs.Vasantharani Vimalenthiran','Unknown reason',4,'Grade 8A,Grade 8B,Grade 8C ','Reli','no vlue add ','no vlue add ',0,49),('Mrs.Gosalai Suganthan','Unknown reason',4,'Grade 6E ','Eng','-','Mr.K.Subankan',0,50),('Mr.Kugenthiran Anushan','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,51),('Mrs.J Mary Immaculin Jesuthas','Unknown reason',4,'Grade 11E ','Sci','-','Mr.Muthukumarasamy Sathananthakumaran',0,52),('Mrs.Thilkka Jude Anitas','Unknown reason',4,'Grade 8A,Grade 8B,Grade 8C ','Reli','no vlue add ','no vlue add ',0,53),('Mrs.Nilanthiny Subaraj','Unknown reason',4,'Grade 8A,Grade 8B,Grade 8C ','Reli','no vlue add ','no vlue add ',0,54),('Miss.Mahishija Perinpanayagam','Unknown reason',4,'Grade 11A ','Eng','-','Mrs Vinothini Mathavan',0,55),('Mrs Sujana Kugatheepan','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,56),('Mr.Kajenderavarathan Mayuran','Unknown reason',4,'Grade 9F ','Eng','-','Mr.Thevakadadcham Gabaskar',0,57),('Mrs.Dilakshi jereem niroshan','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,58),('Mrs.Majitha vijayakumar','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,59),('Mrs.S.Thushany','Unknown reason',4,'Grade 8F ','PTS','-','Mr.Kunapalasingam Sutharshan',0,60),('Mr.R.Thilaxshan','Unknown reason',4,'Grade 11B ','Sci','-','Mr.T. Denin Christy',0,61),('DONSALA MARIYANAYAGAM','Unknown reason',4,'Grade 11D ','Lib','-','->',0,62),('T ARANY','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,63),('Mr.Arunasalam Sathiyanantham','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,64),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,65),('Mr.Kugenthiran Anushan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,66),('Mrs.J Mary Immaculin Jesuthas','Unknown reason',5,'Grade 11E ','Sci','-','Mrs.Somalakky Prashanthan',0,67),('Mrs.Thilkka Jude Anitas','Unknown reason',5,'Grade 7F (English Medium),Grade 7D,Grade 7E ','Reli','no vlue add ','no vlue add ',0,68),('Mrs.Nilanthiny Subaraj','Unknown reason',5,'Grade 7F (English Medium),Grade 7D,Grade 7E ','Reli','no vlue add ','no vlue add ',0,69),('Mrs.Karthiga Subothan','Unknown reason',5,'Grade 7B ','Mat','-','Mrs.Ushnanthiny Thiruvarankan',0,70),('Miss.Mahishija Perinpanayagam','Unknown reason',5,'Grade 9E ','Eng','-','Mrs.Rathykala Sathiyaseelan',0,71),('Mr.Kajenderavarathan Mayuran','Unknown reason',5,'Grade 13 Commerce ','Eng','-','Mrs.Gowry Sriranjanathan',0,72),('Mr.kandasamy sarankan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,73),('Mrs.Dilakshi jereem niroshan','Unknown reason',5,'Grade 12 Maths A ','Eng','-','Selvakumar Thavarasa',0,74),('Mrs.Kowsalya piratheepan','Unknown reason',5,'Grade 13 Arts A ','Eng','-','Mr.sivasothy Ginojan',0,75),('Mrs.Majitha vijayakumar','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,76),('DONSALA MARIYANAYAGAM','Unknown reason',5,'Grade 11F ','Lib','-','->',0,77),('Pavuja Thevarajan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,78),('Mr.Arunasalam Sathiyanantham','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,79),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,80),('Mrs.Vasantharani Vimalenthiran','Unknown reason',6,'Grade 7A,Grade 7B,Grade 7C ','Reli','no vlue add ','no vlue add ',0,81),('Mrs.Gosalai Suganthan','Unknown reason',6,'Grade 13 Arts B ','Eng','-','SANTHIRAKUMAR THIKALAVAN',0,82),('Mr.Kugenthiran Anushan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,83),('Mrs.Thilkka Jude Anitas','Unknown reason',6,'Grade 7A,Grade 7B,Grade 7C ','Reli','no vlue add ','no vlue add ',0,84),('Mrs.Nilanthiny Subaraj','Unknown reason',6,'Grade 7A,Grade 7B,Grade 7C ','Reli','no vlue add ','no vlue add ',0,85),('Mrs.Logananthini Thirukumar','Unknown reason',6,'Grade 9E ','Hyg','-','V GOWTHAMY',0,86),('Mr.Kajenderavarathan Mayuran','Unknown reason',6,'Grade 6F ','Geo(E)','-','L NISHANTHINY',0,87),('Mr.kandasamy sarankan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,88),('Mrs.Dilakshi jereem niroshan','Unknown reason',6,'Grade 7D ','Eng','-','U JENSIKA',0,89),('Mr.paramanantham sankeerththan','Unknown reason',6,'Grade 10D ','Mat','-','S.Nivethini',0,90),('S.Jeyavarshini','Unknown reason',6,'Grade 13 Maths B ','G','-','Mrs.Ushnanthiny Thiruvarankan',0,91),('Mrs.Kowsalya piratheepan','Unknown reason',6,'Grade 8E ','Eng','-','Mr.vijayaratnam paheerathan',0,92),('Mrs.Majitha vijayakumar','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,93),('Mrs.S.Thushany','Unknown reason',6,'Grade 6A ','PTS','-','Mr.Kamalakkannarukmanan sivagnanam',0,94),('Mr.R.Thilaxshan','Unknown reason',6,'Grade 7F (English Medium) ','Sci(E)','-','Mr.Rasaratnam kandeepan',0,95),('Pavuja Thevarajan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,96),('Mrs.Vijayanithy Selvananthan','Unknown reason',7,'Grade 6C ','Geo','-','Mr.Muthukumarasamy Sathananthakumaran',0,97),('Mrs.Vasantharani Vimalenthiran','Unknown reason',7,'Grade 11E,Grade 11F,Grade 11D ','Reli','no vlue add ','no vlue add ',0,98),('Mrs.Gosalai Suganthan','Unknown reason',7,'Grade 11C ','Eng','-','Mrs.Somalakky Prashanthan',0,99),('Mrs.Thilkka Jude Anitas','Unknown reason',7,'Grade 11E,Grade 11F,Grade 11D ','Reli','no vlue add ','no vlue add ',0,100),('Mrs.Nilanthiny Subaraj','Unknown reason',7,'Grade 11E,Grade 11F,Grade 11D ','Reli','no vlue add ','no vlue add ',0,101),('Mrs.Karthiga Subothan','Unknown reason',7,'Grade 10A ','Mat','-','Mrs.Sharminy thiyakaran',0,102),('Mrs.Logananthini Thirukumar','Unknown reason',7,'Grade 9C ','Hyg','-','Mr.K.Subankan',0,103),('Miss.Mahishija Perinpanayagam','Unknown reason',7,'Grade 12 Arts B ','Eng','-','Mr.Mahendrarajah Lavanyan',0,104),('Mr.Kajenderavarathan Mayuran','Unknown reason',7,'Grade 12 Arts A ','Eng','-','Mr.Thevakadadcham Gabaskar',0,105),('Mrs.Dilakshi jereem niroshan','Unknown reason',7,'Grade 9D ','Eng','-','Mrs.Gowry Sriranjanathan',0,106),('Mr.paramanantham sankeerththan','Unknown reason',7,'Grade 8B ','Mat','-','Mr.Shanmuganathan perinpathas',0,107),('S.Jeyavarshini','Unknown reason',7,'Grade 13 BST ','BTech','-','Mr.Selvakumar vithursan ',0,108),('Mrs.Kowsalya piratheepan','Unknown reason',7,'Grade 10C ','Eng','-','Mr.jeyabala jeyasulakshan',0,109),('Mrs.S.Thushany','Unknown reason',7,'Grade 10E ','Lib','-','Mrs.Rathika sinthujan',0,110),('Mr.R.Thilaxshan','Unknown reason',7,'Grade 10D ','Sci','-','NITHTHIYAVATHANY IRASATHURAI',0,111),('Mrs.Vijayanithy Selvananthan','Unknown reason',8,'Grade 8E ','Hyg','-','Miss. S.GOWSALA',0,112),('Mrs.Vasantharani Vimalenthiran','Unknown reason',8,'Grade 11A,Grade 11B,Grade 11C ','Reli','no vlue add ','no vlue add ',0,113),('Mr.Kugenthiran Anushan','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,114),('Mrs.Thilkka Jude Anitas','Unknown reason',8,'Grade 11A,Grade 11B,Grade 11C ','Reli','no vlue add ','no vlue add ',0,115),('Mrs.Nilanthiny Subaraj','Unknown reason',8,'Grade 11A,Grade 11B,Grade 11C ','Reli','no vlue add ','no vlue add ',0,116),('Mrs.Karthiga Subothan','Unknown reason',8,'Grade 9C ','Mat','-','Miss.Sivanantnini sivagnanam',0,117),('Miss.Mahishija Perinpanayagam','Unknown reason',8,'Grade 10A ','Eng','-','Mrs.Rathika sinthujan',0,118),('Mrs Sujana Kugatheepan','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,119),('Mr.paramanantham sankeerththan','Unknown reason',8,'Grade 7F (English Medium) ','Mat(E)','-','Selvakumar Thavarasa',0,120),('S.Jeyavarshini','Unknown reason',8,'Grade 13 BST ','BTech','-','V GOWTHAMY',0,121),('Mrs.Majitha vijayakumar','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,122),('Mr.R.Thilaxshan','Unknown reason',8,'Grade 7A ','Sci','-','V.Thivya',0,123),('DONSALA MARIYANAYAGAM','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,124),('Pavuja Thevarajan','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,125),('T ARANY','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,126),('Mr.Arunasalam Sathiyanantham','Unknown reason',1,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,127),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',1,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,128),('Mr.Kugenthiran Anushan','Unknown reason',1,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,129),('Mrs.Thilkka Jude Anitas','Unknown reason',1,'Grade 9D ','Ta','-','Selvakumar Thavarasa',0,130),('Mrs.Nilanthiny Subaraj','Unknown reason',1,'Grade 7D ','Ta','-','Mr.sivasothy Ginojan',0,131),('Mrs.Karthiga Subothan','Unknown reason',1,'Grade 8D ','Mat','-','Mrs.Gowry Sriranjanathan',0,132),('Miss.Mahishija Perinpanayagam','Unknown reason',1,'Grade 6C ','Eng','-','SANTHIRAKUMAR THIKALAVAN',0,133),('Mr.Kajenderavarathan Mayuran','Unknown reason',1,'Grade 6F ','Eng','-','U JENSIKA',0,134),('Mr.kandasamy sarankan','Unknown reason',1,'Grade 12 BST ','BTech','-','Mr.T. Denin Christy',0,135),('Mrs.Dilakshi jereem niroshan','Unknown reason',1,'Grade 8A ','Eng','-','Mrs.D.sinthuya',0,136),('Mr.paramanantham sankeerththan','Unknown reason',1,'Grade 11F ','Mat','-','Mr.Rasaratnam kandeepan',0,137),('Mrs.Kowsalya piratheepan','Unknown reason',1,'Grade 11E ','Eng','-','DONSALA MARIYANAYAGAM',0,138),('Mrs.S.Thushany','Unknown reason',1,'Grade 6A ','Sci','-','Mrs.M.B.Thayananthy',0,139),('Mr.R.Thilaxshan','Unknown reason',1,'Grade 10D ','Sci','-','Miss. S.GOWSALA',0,140),('Mr.Arunasalam Sathiyanantham','Unknown reason',2,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,141),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',2,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,142),('Mrs.Gosalai Suganthan','Unknown reason',2,'Grade 8D ','Eng','-','Selvakumar Thavarasa',0,143),('Mr.Kugenthiran Anushan','Unknown reason',2,'Grade 13 ET,Grade 13 Arts A,Grade 13 BST,Grade 13 Maths B,Grade 13 Arts B,Grade 13 Commerce,Grade 13 Bio ','Bas II','no vlue add ','no vlue add ',0,144),('Mrs.J Mary Immaculin Jesuthas','Unknown reason',2,'Grade 10F ','Sci','-','Mr.sivasothy Ginojan',0,145),('Mrs.Karthiga Subothan','Unknown reason',2,'Grade 11C ','Mat','-','V GOWTHAMY',0,146),('Mrs.Logananthini Thirukumar','Unknown reason',2,'Grade 8B ','Hyg','-','S.Nivethini',0,147),('Mr.Kajenderavarathan Mayuran','Unknown reason',2,'Grade 11B ','Eng','-','Mr.T. Denin Christy',0,148),('Mr.kandasamy sarankan','Unknown reason',2,'Grade 12 BST ','BTech','-','Miss.Sivanantnini sivagnanam',0,149),('Mrs.Dilakshi jereem niroshan','Unknown reason',2,'Grade 11F ','Eng','-','Mr.Selvakumar vithursan ',0,150),('Mr.paramanantham sankeerththan','Unknown reason',2,'Grade 9D ','Mat','-','Mr.Kathirvelu arudselvam',0,151),('S.Jeyavarshini','Unknown reason',2,'Grade 8A ','Lib','-','NITHTHIYAVATHANY IRASATHURAI',0,152),('Mrs.S.Thushany','Unknown reason',2,'Grade 9B ','PTS','-','Mrs.Rathykala Sathiyaseelan',0,153),('DONSALA MARIYANAYAGAM','Unknown reason',2,'Grade 11A ','Lib','-','->',0,154),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',3,'Grade 12 Maths B ','Phy','-','Mr.K.Subankan',0,155),('Mrs.Vijayanithy Selvananthan','Unknown reason',3,'Grade 10F,Grade 10E,Grade 10D,Grade 10C,Grade 10B,Grade 10A ','Bas III','no vlue add ','no vlue add ',0,156),('Mrs.Vasantharani Vimalenthiran','Unknown reason',3,'Grade 9F,Grade 9D,Grade 9E ','Reli','no vlue add ','no vlue add ',0,157),('Mrs.Gosalai Suganthan','Unknown reason',3,'Grade 7B ','Eng','-','Selvakumar Thavarasa',0,158),('Mr.Kugenthiran Anushan','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,159),('Mrs.Thilkka Jude Anitas','Unknown reason',3,'Grade 9F,Grade 9D,Grade 9E ','Reli','no vlue add ','no vlue add ',0,160),('Mrs.Nilanthiny Subaraj','Unknown reason',3,'Grade 9F,Grade 9D,Grade 9E ','Reli','no vlue add ','no vlue add ',0,161),('Mrs.Karthiga Subothan','Unknown reason',3,'Grade 6A ','Mat','-','Mr.Muthukumarasamy Sathananthakumaran',0,162),('Mrs.Logananthini Thirukumar','Unknown reason',3,'Grade 10F,Grade 10E,Grade 10D,Grade 10C,Grade 10B,Grade 10A ','Bas III','no vlue add ','no vlue add ',0,163),('Miss.Mahishija Perinpanayagam','Unknown reason',3,'Grade 8F ','Eng','-','Mrs.Somalakky Prashanthan',0,164),('Mrs Sujana Kugatheepan','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,165),('Mrs.Dilakshi jereem niroshan','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,166),('Mr.paramanantham sankeerththan','Unknown reason',3,'Grade 6F ','Mat(E)','-','U JENSIKA',0,167),('Mrs.Kowsalya piratheepan','Unknown reason',3,'Grade 13  Maths A ','Eng','-','V GOWTHAMY',0,168),('Mrs.S.Thushany','Unknown reason',3,'Grade 10F,Grade 10E,Grade 10D,Grade 10C,Grade 10B,Grade 10A ','Bas III','no vlue add ','no vlue add ',0,169),('DONSALA MARIYANAYAGAM','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,170),('T ARANY','Unknown reason',3,'Grade 11A,Grade 11B,Grade 11C,Grade 11D,Grade 11E,Grade 11F ','Bas II','no vlue add ','no vlue add ',0,171),('no vlue add ','?',3,'Grade 6F ','Mat(E)','->','no vlue add ',0,172),('Mrs.Vijayanithy Selvananthan','Unknown reason',4,'Grade 9D ','Hyg','-','Mr.sivasothy Ginojan',0,173),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',4,'Grade 12 Maths B ','Phy','-','Selvakumar Thavarasa',0,174),('Mrs.Vasantharani Vimalenthiran','Unknown reason',4,'Grade 8A,Grade 8B,Grade 8C ','Reli','no vlue add ','no vlue add ',0,175),('Mrs.Gosalai Suganthan','Unknown reason',4,'Grade 6E ','Eng','-','Mr.K.Subankan',0,176),('Mr.Kugenthiran Anushan','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,177),('Mrs.J Mary Immaculin Jesuthas','Unknown reason',4,'Grade 11E ','Sci','-','Mr.Muthukumarasamy Sathananthakumaran',0,178),('Mrs.Thilkka Jude Anitas','Unknown reason',4,'Grade 8A,Grade 8B,Grade 8C ','Reli','no vlue add ','no vlue add ',0,179),('Mrs.Nilanthiny Subaraj','Unknown reason',4,'Grade 8A,Grade 8B,Grade 8C ','Reli','no vlue add ','no vlue add ',0,180),('Miss.Mahishija Perinpanayagam','Unknown reason',4,'Grade 11A ','Eng','-','Mrs Vinothini Mathavan',0,181),('Mrs Sujana Kugatheepan','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,182),('Mr.Kajenderavarathan Mayuran','Unknown reason',4,'Grade 9F ','Eng','-','Mr.Thevakadadcham Gabaskar',0,183),('Mrs.Dilakshi jereem niroshan','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,184),('Mrs.Majitha vijayakumar','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,185),('Mrs.S.Thushany','Unknown reason',4,'Grade 8F ','PTS','-','Mr.Kunapalasingam Sutharshan',0,186),('Mr.R.Thilaxshan','Unknown reason',4,'Grade 11B ','Sci','-','Mr.T. Denin Christy',0,187),('DONSALA MARIYANAYAGAM','Unknown reason',4,'Grade 11D ','Lib','-','->',0,188),('T ARANY','Unknown reason',4,'Grade 10A,Grade 10B,Grade 10C,Grade 10D,Grade 10E,Grade 10F ','Bas II','no vlue add ','no vlue add ',0,189),('Mr.Arunasalam Sathiyanantham','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,190),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,191),('Mr.Kugenthiran Anushan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,192),('Mrs.J Mary Immaculin Jesuthas','Unknown reason',5,'Grade 11E ','Sci','-','Mrs.Somalakky Prashanthan',0,193),('Mrs.Thilkka Jude Anitas','Unknown reason',5,'Grade 7F (English Medium),Grade 7D,Grade 7E ','Reli','no vlue add ','no vlue add ',0,194),('Mrs.Nilanthiny Subaraj','Unknown reason',5,'Grade 7F (English Medium),Grade 7D,Grade 7E ','Reli','no vlue add ','no vlue add ',0,195),('Mrs.Karthiga Subothan','Unknown reason',5,'Grade 7B ','Mat','-','Mrs.Ushnanthiny Thiruvarankan',0,196),('Miss.Mahishija Perinpanayagam','Unknown reason',5,'Grade 9E ','Eng','-','Mrs.Rathykala Sathiyaseelan',0,197),('Mr.Kajenderavarathan Mayuran','Unknown reason',5,'Grade 13 Commerce ','Eng','-','Mrs.Gowry Sriranjanathan',0,198),('Mr.kandasamy sarankan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,199),('Mrs.Dilakshi jereem niroshan','Unknown reason',5,'Grade 12 Maths A ','Eng','-','Selvakumar Thavarasa',0,200),('Mrs.Kowsalya piratheepan','Unknown reason',5,'Grade 13 Arts A ','Eng','-','Mr.sivasothy Ginojan',0,201),('Mrs.Majitha vijayakumar','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,202),('DONSALA MARIYANAYAGAM','Unknown reason',5,'Grade 11F ','Lib','-','->',0,203),('Pavuja Thevarajan','Unknown reason',5,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,204),('Mr.Arunasalam Sathiyanantham','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,205),('Mr.Kirupakaramoorthy Ananthakopan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,206),('Mrs.Vasantharani Vimalenthiran','Unknown reason',6,'Grade 7A,Grade 7B,Grade 7C ','Reli','no vlue add ','no vlue add ',0,207),('Mrs.Gosalai Suganthan','Unknown reason',6,'Grade 13 Arts B ','Eng','-','SANTHIRAKUMAR THIKALAVAN',0,208),('Mr.Kugenthiran Anushan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,209),('Mrs.Thilkka Jude Anitas','Unknown reason',6,'Grade 7A,Grade 7B,Grade 7C ','Reli','no vlue add ','no vlue add ',0,210),('Mrs.Nilanthiny Subaraj','Unknown reason',6,'Grade 7A,Grade 7B,Grade 7C ','Reli','no vlue add ','no vlue add ',0,211),('Mrs.Logananthini Thirukumar','Unknown reason',6,'Grade 9E ','Hyg','-','V GOWTHAMY',0,212),('Mr.Kajenderavarathan Mayuran','Unknown reason',6,'Grade 6F ','Geo(E)','-','L NISHANTHINY',0,213),('Mr.kandasamy sarankan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,214),('Mrs.Dilakshi jereem niroshan','Unknown reason',6,'Grade 7D ','Eng','-','U JENSIKA',0,215),('Mr.paramanantham sankeerththan','Unknown reason',6,'Grade 10D ','Mat','-','S.Nivethini',0,216),('S.Jeyavarshini','Unknown reason',6,'Grade 13 Maths B ','G','-','Mrs.Ushnanthiny Thiruvarankan',0,217),('Mrs.Kowsalya piratheepan','Unknown reason',6,'Grade 8E ','Eng','-','Mr.vijayaratnam paheerathan',0,218),('Mrs.Majitha vijayakumar','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,219),('Mrs.S.Thushany','Unknown reason',6,'Grade 6A ','PTS','-','Mr.Kamalakkannarukmanan sivagnanam',0,220),('Mr.R.Thilaxshan','Unknown reason',6,'Grade 7F (English Medium) ','Sci(E)','-','Mr.Rasaratnam kandeepan',0,221),('Pavuja Thevarajan','Unknown reason',6,'Grade 12 Maths B,Grade 12 BST,Grade 12 ET,Grade 12 Arts B,Grade 12  Commerce,Grade 12 Bio,Grade 12 Arts A ','Bas II','no vlue add ','no vlue add ',0,222),('Mrs.Vijayanithy Selvananthan','Unknown reason',7,'Grade 6C ','Geo','-','Mr.Muthukumarasamy Sathananthakumaran',0,223),('Mrs.Vasantharani Vimalenthiran','Unknown reason',7,'Grade 11E,Grade 11F,Grade 11D ','Reli','no vlue add ','no vlue add ',0,224),('Mrs.Gosalai Suganthan','Unknown reason',7,'Grade 11C ','Eng','-','Mrs.Somalakky Prashanthan',0,225),('Mrs.Thilkka Jude Anitas','Unknown reason',7,'Grade 11E,Grade 11F,Grade 11D ','Reli','no vlue add ','no vlue add ',0,226),('Mrs.Nilanthiny Subaraj','Unknown reason',7,'Grade 11E,Grade 11F,Grade 11D ','Reli','no vlue add ','no vlue add ',0,227),('Mrs.Karthiga Subothan','Unknown reason',7,'Grade 10A ','Mat','-','Mrs.Sharminy thiyakaran',0,228),('Mrs.Logananthini Thirukumar','Unknown reason',7,'Grade 9C ','Hyg','-','Mr.K.Subankan',0,229),('Miss.Mahishija Perinpanayagam','Unknown reason',7,'Grade 12 Arts B ','Eng','-','Mr.Mahendrarajah Lavanyan',0,230),('Mr.Kajenderavarathan Mayuran','Unknown reason',7,'Grade 12 Arts A ','Eng','-','Mr.Thevakadadcham Gabaskar',0,231),('Mrs.Dilakshi jereem niroshan','Unknown reason',7,'Grade 9D ','Eng','-','Mrs.Gowry Sriranjanathan',0,232),('Mr.paramanantham sankeerththan','Unknown reason',7,'Grade 8B ','Mat','-','Mr.Shanmuganathan perinpathas',0,233),('S.Jeyavarshini','Unknown reason',7,'Grade 13 BST ','BTech','-','Mr.Selvakumar vithursan ',0,234),('Mrs.Kowsalya piratheepan','Unknown reason',7,'Grade 10C ','Eng','-','Mr.jeyabala jeyasulakshan',0,235),('Mrs.S.Thushany','Unknown reason',7,'Grade 10E ','Lib','-','Mrs.Rathika sinthujan',0,236),('Mr.R.Thilaxshan','Unknown reason',7,'Grade 10D ','Sci','-','NITHTHIYAVATHANY IRASATHURAI',0,237),('Mrs.Vijayanithy Selvananthan','Unknown reason',8,'Grade 8E ','Hyg','-','Miss. S.GOWSALA',0,238),('Mrs.Vasantharani Vimalenthiran','Unknown reason',8,'Grade 11A,Grade 11B,Grade 11C ','Reli','no vlue add ','no vlue add ',0,239),('Mr.Kugenthiran Anushan','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,240),('Mrs.Thilkka Jude Anitas','Unknown reason',8,'Grade 11A,Grade 11B,Grade 11C ','Reli','no vlue add ','no vlue add ',0,241),('Mrs.Nilanthiny Subaraj','Unknown reason',8,'Grade 11A,Grade 11B,Grade 11C ','Reli','no vlue add ','no vlue add ',0,242),('Mrs.Karthiga Subothan','Unknown reason',8,'Grade 9C ','Mat','-','Miss.Sivanantnini sivagnanam',0,243),('Miss.Mahishija Perinpanayagam','Unknown reason',8,'Grade 10A ','Eng','-','Mrs.Rathika sinthujan',0,244),('Mrs Sujana Kugatheepan','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,245),('Mr.paramanantham sankeerththan','Unknown reason',8,'Grade 7F (English Medium) ','Mat(E)','-','Selvakumar Thavarasa',0,246),('S.Jeyavarshini','Unknown reason',8,'Grade 13 BST ','BTech','-','V GOWTHAMY',0,247),('Mrs.Majitha vijayakumar','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,248),('Mr.R.Thilaxshan','Unknown reason',8,'Grade 7A ','Sci','-','V.Thivya',0,249),('DONSALA MARIYANAYAGAM','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,250),('Pavuja Thevarajan','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,251),('T ARANY','Unknown reason',8,'Grade 6D,Grade 6E,Grade 6C,Grade 6F,Grade 6B,Grade 6A ','Bas II','no vlue add ','no vlue add ',0,252);
/*!40000 ALTER TABLE `day_13_8_2023` ENABLE KEYS */;
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
