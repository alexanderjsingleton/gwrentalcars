-- MySQL dump 10.13  Distrib 5.7.17, for osx10.12 (x86_64)
--
-- Host: gwrental.cg8qnwa72czw.us-west-2.rds.amazonaws.com    Database: GWMSIST
-- ------------------------------------------------------
-- Server version	5.6.27-log

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
-- Current Database: `GWMSIST`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `GWMSIST` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `GWMSIST`;

--
-- Table structure for table `ACCESSORY`
--

DROP TABLE IF EXISTS `ACCESSORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ACCESSORY` (
  `SerialNumber` int(11) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Cost` decimal(20,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  PRIMARY KEY (`SerialNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ACCESSORY`
--

LOCK TABLES `ACCESSORY` WRITE;
/*!40000 ALTER TABLE `ACCESSORY` DISABLE KEYS */;
INSERT INTO `ACCESSORY` VALUES (1234,'Phone Charger',10.00,1),(9876,'Phone Charger',10.00,1),(12345,'GPS',25.00,1),(56789,'Power Inverter',50.00,1),(67890,'GPS',25.00,1);
/*!40000 ALTER TABLE `ACCESSORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `CustomerID` int(11) NOT NULL,
  `CustomerFName` varchar(100) NOT NULL,
  `CustomerLName` varchar(100) NOT NULL,
  `CustomerEmail` varchar(200) NOT NULL,
  `DriversLicense` varchar(50) NOT NULL,
  `RewardNumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `DriversLicense` (`DriversLicense`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (1,'John','Constantine','jconstantine@jld.org','999990013',13),(2,'Hal','Jordan','hjordan@glcorps.org','999990001',1),(3,'Barry','Allen','ballen@jla.org','999990002',2),(4,'Dinah','Lance','dlance@jla.org','999990003',3),(5,'Felicity','Smoak','fsmoak@palmer_tech.com','999990004',4),(6,'Zatanna','Zatara','zzatara@jld.org','999990005',5);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER_PHONE_NO`
--

DROP TABLE IF EXISTS `CUSTOMER_PHONE_NO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER_PHONE_NO` (
  `CustomerPhoneNo` varchar(20) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  PRIMARY KEY (`CustomerPhoneNo`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `CUSTOMER_PHONE_NO_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER_PHONE_NO`
--

LOCK TABLES `CUSTOMER_PHONE_NO` WRITE;
/*!40000 ALTER TABLE `CUSTOMER_PHONE_NO` DISABLE KEYS */;
INSERT INTO `CUSTOMER_PHONE_NO` VALUES ('(555)555-1313',1),('(555)555-1919',1),('(555)555-0101',2),('(555)555-9999',2),('(555)555-0001',3),('(555)555-8888',4),('(555)555-1612',5),('(555)555-6666',6);
/*!40000 ALTER TABLE `CUSTOMER_PHONE_NO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `EmployeeFName` varchar(100) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `EmployeeLName` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `SSN` int(11) NOT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `SSN` (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES ('Victor',1,'Stone','Office Manager',999990006),('Arthur',2,'Curry','Office Manager',999990007),('Kara',3,'Danvers','Office Manager',999990008),('Pamela',4,'Isley','Office Manager',999990009),('Barbara',5,'Gordon','Customer Care Specialist',999990010),('Harleen',6,'Quinzel','Customer Care Specialist',999990011),('John',7,'Jones','Customer Care Specialist',999990012),('Oliver',8,'Queen','Customer Care Specialist',999990014),('Bruce',9,'Wayne','Mechanic',999990015),('Clark',10,'Kent','Mechanic',999990016),('Lex',11,'Luthor','Mechanic',999990017),('Edward',12,'Nygma','Mechanic',999990018);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYING`
--

DROP TABLE IF EXISTS `EMPLOYING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYING` (
  `RentalOfficeID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  PRIMARY KEY (`RentalOfficeID`,`EmployeeID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `EMPLOYING_ibfk_1` FOREIGN KEY (`RentalOfficeID`) REFERENCES `RENTAL_OFFICE_LOCATION` (`RentalOfficeID`),
  CONSTRAINT `EMPLOYING_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `EMPLOYEE` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYING`
--

LOCK TABLES `EMPLOYING` WRITE;
/*!40000 ALTER TABLE `EMPLOYING` DISABLE KEYS */;
INSERT INTO `EMPLOYING` VALUES (1,1),(2,2),(3,3),(4,4),(1,5),(2,6),(3,7),(4,8),(1,9),(2,10),(3,11),(4,12);
/*!40000 ALTER TABLE `EMPLOYING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INCLUDES`
--

DROP TABLE IF EXISTS `INCLUDES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INCLUDES` (
  `SerialNumber` int(11) NOT NULL,
  `ReservationID` int(11) NOT NULL,
  PRIMARY KEY (`SerialNumber`,`ReservationID`),
  KEY `ReservationID` (`ReservationID`),
  CONSTRAINT `INCLUDES_ibfk_1` FOREIGN KEY (`SerialNumber`) REFERENCES `ACCESSORY` (`SerialNumber`),
  CONSTRAINT `INCLUDES_ibfk_2` FOREIGN KEY (`ReservationID`) REFERENCES `RESERVATION` (`ReservationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INCLUDES`
--

LOCK TABLES `INCLUDES` WRITE;
/*!40000 ALTER TABLE `INCLUDES` DISABLE KEYS */;
INSERT INTO `INCLUDES` VALUES (12345,1),(67890,2),(1234,3),(56789,4);
/*!40000 ALTER TABLE `INCLUDES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAINTENANCE_LOG`
--

DROP TABLE IF EXISTS `MAINTENANCE_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAINTENANCE_LOG` (
  `Maintenance_ID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `VIN` varchar(30) NOT NULL,
  `Maintenance_Date` date NOT NULL,
  `Maintenance_Procedure` varchar(200) NOT NULL,
  PRIMARY KEY (`Maintenance_ID`),
  KEY `VIN` (`VIN`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `MAINTENANCE_LOG_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `VEHICLE` (`VIN`),
  CONSTRAINT `MAINTENANCE_LOG_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `EMPLOYEE` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAINTENANCE_LOG`
--

LOCK TABLES `MAINTENANCE_LOG` WRITE;
/*!40000 ALTER TABLE `MAINTENANCE_LOG` DISABLE KEYS */;
INSERT INTO `MAINTENANCE_LOG` VALUES (1,9,'11111AAAAA','2016-05-08','Oil Change'),(2,10,'22222BBBBB','2016-07-27','Tire Replacement'),(3,11,'33333CCCCC','2016-11-27','Annual Maintenance'),(4,12,'44444DDDDD','2017-02-08','Alignment Check');
/*!40000 ALTER TABLE `MAINTENANCE_LOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RENTAL_OFFICE_LOCATION`
--

DROP TABLE IF EXISTS `RENTAL_OFFICE_LOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RENTAL_OFFICE_LOCATION` (
  `RentalOfficeID` int(11) NOT NULL,
  `StreetAddress` varchar(200) NOT NULL,
  `City` varchar(100) NOT NULL,
  `State` varchar(100) NOT NULL,
  `ZipCode` int(11) NOT NULL,
  PRIMARY KEY (`RentalOfficeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RENTAL_OFFICE_LOCATION`
--

LOCK TABLES `RENTAL_OFFICE_LOCATION` WRITE;
/*!40000 ALTER TABLE `RENTAL_OFFICE_LOCATION` DISABLE KEYS */;
INSERT INTO `RENTAL_OFFICE_LOCATION` VALUES (1,'123 Paper Street','Portland','OR',12345),(2,'19 Tower Lane','Gilead','NY',19991),(3,'237 Overlook View','Estes Park','CO',98765),(4,'1 Pennywise Circle','Derry','ME',66666);
/*!40000 ALTER TABLE `RENTAL_OFFICE_LOCATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESERVATION`
--

DROP TABLE IF EXISTS `RESERVATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESERVATION` (
  `ReservationID` int(11) NOT NULL,
  `Pick_Up_Date` date NOT NULL,
  `Return_Date` date NOT NULL,
  `Daily_Rate` decimal(20,2) NOT NULL,
  `Total` decimal(20,2) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `RentalOfficeID` int(11) NOT NULL,
  PRIMARY KEY (`ReservationID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `RentalOfficeID` (`RentalOfficeID`),
  CONSTRAINT `RESERVATION_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `CUSTOMER` (`CustomerID`),
  CONSTRAINT `RESERVATION_ibfk_2` FOREIGN KEY (`RentalOfficeID`) REFERENCES `RENTAL_OFFICE_LOCATION` (`RentalOfficeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESERVATION`
--

LOCK TABLES `RESERVATION` WRITE;
/*!40000 ALTER TABLE `RESERVATION` DISABLE KEYS */;
INSERT INTO `RESERVATION` VALUES (1,'2017-06-06','2017-06-13',125.00,875.00,1,3),(2,'2017-03-01','2017-03-03',95.00,285.00,2,1),(3,'2017-04-05','2017-04-19',80.00,1120.00,3,4),(4,'2017-06-06','2017-06-13',125.00,875.00,4,2),(5,'2017-07-22','2017-07-27',115.00,575.00,5,3),(6,'2017-08-19','2017-08-23',95.00,380.00,6,2);
/*!40000 ALTER TABLE `RESERVATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESERVES`
--

DROP TABLE IF EXISTS `RESERVES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESERVES` (
  `VIN` varchar(30) NOT NULL,
  `ReservationID` int(11) NOT NULL,
  PRIMARY KEY (`VIN`,`ReservationID`),
  KEY `ReservationID` (`ReservationID`),
  CONSTRAINT `RESERVES_ibfk_1` FOREIGN KEY (`VIN`) REFERENCES `VEHICLE` (`VIN`),
  CONSTRAINT `RESERVES_ibfk_2` FOREIGN KEY (`ReservationID`) REFERENCES `RESERVATION` (`ReservationID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESERVES`
--

LOCK TABLES `RESERVES` WRITE;
/*!40000 ALTER TABLE `RESERVES` DISABLE KEYS */;
INSERT INTO `RESERVES` VALUES ('11111AAAAA',1),('22222BBBBB',2),('33333CCCCC',3),('44444DDDDD',4),('55555EEEEE',5),('33333CCCCC',6);
/*!40000 ALTER TABLE `RESERVES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VEHICLE`
--

DROP TABLE IF EXISTS `VEHICLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VEHICLE` (
  `VIN` varchar(30) NOT NULL,
  `Make` varchar(30) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Year` int(11) NOT NULL,
  `Color` char(30) NOT NULL,
  `LicensePlate` varchar(20) NOT NULL,
  `Mileage` int(11) NOT NULL,
  PRIMARY KEY (`VIN`),
  UNIQUE KEY `LicensePlate` (`LicensePlate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VEHICLE`
--

LOCK TABLES `VEHICLE` WRITE;
/*!40000 ALTER TABLE `VEHICLE` DISABLE KEYS */;
INSERT INTO `VEHICLE` VALUES ('11111AAAAA','Honda','Accord',2014,'Gold','AA11BB22',27365),('22222BBBBB','Hyundai','Veloster',2016,'Blue','BB22CC33',13569),('33333CCCCC','Chevy','Tahoe',2012,'Black','CC33DD44',19999),('44444DDDDD','Audi','A4',2017,'Silver','DD44EE55',567),('55555EEEEE','Dodge','Charger',2015,'Purple','EE55FF66',32641);
/*!40000 ALTER TABLE `VEHICLE` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-27 21:29:10
