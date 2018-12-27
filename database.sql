-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: saleswebmvcappdb
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `department` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computers'),(2,'Electronics'),(3,'Fashion'),(4,'Books');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seller` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `BirthDate` datetime(6) NOT NULL,
  `BaseSalary` double NOT NULL,
  `DepartmentId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_Seller_DepartmentId` (`DepartmentId`),
  CONSTRAINT `FK_Seller_Department_DepartmentId` FOREIGN KEY (`DepartmentId`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'Bob Brown','bob@gmail.com','1998-04-21 00:00:00.000000',1000,1),(2,'Maria Green','maria@gmail.com','1979-12-31 00:00:00.000000',3500,2),(3,'Alex Grey','alex@gmail.com','1988-01-15 00:00:00.000000',2200,1),(4,'Martha Red','martha@gmail.com','1993-11-30 00:00:00.000000',3000,4),(5,'Donald Blue','donald@gmail.com','2000-01-09 00:00:00.000000',4000,3),(6,'Alex Pink','bob@gmail.com','1997-03-04 00:00:00.000000',3000,2);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-30 14:28:19
