-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: Resturant_Billing
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
-- Table structure for table `food_product`
--

DROP TABLE IF EXISTS `food_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_product` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(10) DEFAULT NULL,
  `price` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_product`
--

LOCK TABLES `food_product` WRITE;
/*!40000 ALTER TABLE `food_product` DISABLE KEYS */;
INSERT INTO `food_product` VALUES (1,'CHOWMIN','60'),(2,'BIRIYANI','150'),(3,'MOMO','70');
/*!40000 ALTER TABLE `food_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginadmin`
--

DROP TABLE IF EXISTS `loginadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginadmin` (
  `e_mail` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`e_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginadmin`
--

LOCK TABLES `loginadmin` WRITE;
/*!40000 ALTER TABLE `loginadmin` DISABLE KEYS */;
INSERT INTO `loginadmin` VALUES ('admin','12345'),('admin2','12345'),('amartya','abcd');
/*!40000 ALTER TABLE `loginadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginemployee`
--

DROP TABLE IF EXISTS `loginemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginemployee` (
  `e_mail` varchar(50) NOT NULL,
  `Password` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`e_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginemployee`
--

LOCK TABLES `loginemployee` WRITE;
/*!40000 ALTER TABLE `loginemployee` DISABLE KEYS */;
INSERT INTO `loginemployee` VALUES ('emp','12344');
/*!40000 ALTER TABLE `loginemployee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderdetails` (
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `itemname` varchar(8) DEFAULT NULL,
  `quantity` varchar(8) DEFAULT NULL,
  `Price` varchar(8) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES ('2018-03-16','00:00:00','CHOWMIN','5','300',1),('2018-03-16','09:35:34','BIRIYANI','5','800',2),('2018-03-16','10:32:40','BIRIYANI','8','1280',3),('2018-03-19','07:41:42','MOMO','4','240',4);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-20 23:19:52
