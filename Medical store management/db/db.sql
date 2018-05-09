-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: medicamex
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `addtocart`
--

DROP TABLE IF EXISTS `addtocart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addtocart` (
  `Product_Name` varchar(20) DEFAULT NULL,
  `Quantity` varchar(10) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `B_NO` int(8) NOT NULL,
  PRIMARY KEY (`B_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addtocart`
--

LOCK TABLES `addtocart` WRITE;
/*!40000 ALTER TABLE `addtocart` DISABLE KEYS */;
INSERT INTO `addtocart` VALUES ('CALPOL','2','34',478596),('Coenzyme','2','518',1547896);
/*!40000 ALTER TABLE `addtocart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminlogin` (
  `Username` varchar(10) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminlogin`
--

LOCK TABLES `adminlogin` WRITE;
/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
INSERT INTO `adminlogin` VALUES ('admin','12345');
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emplogin`
--

DROP TABLE IF EXISTS `emplogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emplogin` (
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `Counter` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emplogin`
--

LOCK TABLES `emplogin` WRITE;
/*!40000 ALTER TABLE `emplogin` DISABLE KEYS */;
INSERT INTO `emplogin` VALUES ('emp','emp',1);
/*!40000 ALTER TABLE `emplogin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicine` (
  `Product_Name` varchar(20) NOT NULL,
  `Company_Name` varchar(20) DEFAULT NULL,
  `Product_Category` varchar(8) DEFAULT NULL,
  `Quantity` varchar(10) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `EXP` varchar(12) DEFAULT NULL,
  `MFD` varchar(12) DEFAULT NULL,
  `Total_Price` varchar(12) DEFAULT NULL,
  `B_No` varchar(10) NOT NULL,
  PRIMARY KEY (`B_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES ('Coenzyme','CaQ','TAB','63','259','may 2020','june 2017','20277','1547896'),('erdf','oijgh','TAB','45','8','may 2022','may 2018','360','47589'),('CALPOL','GSK','TAB','12','17','may 2020','june 2017','14','478596'),('abcdf','ffhj','SYRUP','5','85','may 2020','may 2019','425','75588');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellrecord`
--

DROP TABLE IF EXISTS `sellrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sellrecord` (
  `Date` datetime DEFAULT NULL,
  `SoldBy` varchar(25) DEFAULT NULL,
  `Product_Name` varchar(20) DEFAULT NULL,
  `Quantity` varchar(10) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `B_NO` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellrecord`
--

LOCK TABLES `sellrecord` WRITE;
/*!40000 ALTER TABLE `sellrecord` DISABLE KEYS */;
INSERT INTO `sellrecord` VALUES ('2018-04-20 12:45:00','emp','Coenzyme','2','518','1547896'),('2018-04-20 12:45:00','emp','CALPOL','6','90','478596'),('2018-04-21 09:55:00','emp','Coenzyme','2','518','1547896'),('2018-04-21 09:55:00','emp','CALPOL','8','136','478596'),('2018-04-21 10:10:00','emp','Coenzyme','2','518','1547896'),('2018-04-21 10:14:00','emp','CALPOL','2','34','478596');
/*!40000 ALTER TABLE `sellrecord` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-22  7:10:21
