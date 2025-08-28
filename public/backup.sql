-- MySQL dump 10.13  Distrib 8.4.6, for Linux (x86_64)
--
-- Host: localhost    Database: pcbuilder
-- ------------------------------------------------------
-- Server version	8.4.6

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cpulist`
--

DROP TABLE IF EXISTS `cpulist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpulist` (
  `productid` varchar(6) NOT NULL,
  `brand` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int NOT NULL,
  `socket` varchar(7) NOT NULL,
  `clockspeed` varchar(23) NOT NULL,
  `cache` varchar(47) NOT NULL,
  `cores` int NOT NULL,
  `threads` int NOT NULL,
  `igpu` varchar(3) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpulist`
--

LOCK TABLES `cpulist` WRITE;
/*!40000 ALTER TABLE `cpulist` DISABLE KEYS */;
INSERT INTO `cpulist` VALUES ('CPU001','Intel','Intel Core i3-12100 12th Gen Alder Lake Processor',11500,'LGA1700','3.30 GHz Up to 4.30 GHz','12MB',4,8,'Yes'),('CPU002','Intel','Intel Core i5-12400F 12th Gen Alder Lake Processor',12500,'LGA1700','2.50 GHz Up to 4.40 GHz','18MB',6,12,'No'),('CPU003','Intel','Intel Core i5-12500 12th Gen Alder Lake Processor',18500,'LGA1700','3.00 GHz Up to 4.60 GHz','18MB',6,12,'Yes'),('CPU004','Intel','Intel Core i5-12600K 12th Gen Alder Lake Processor',25000,'LGA1700','2.8 GHz Up to 4.9 GHz','20MB',10,16,'Yes'),('CPU005','Intel','Intel Core i7-12700K 12th Gen Alder Lake Processor',30200,'LGA1700','3.60 GHz Up to 5.0 GHz','25MB',12,20,'Yes'),('CPU006','Intel','Intel Core Ultra 5 245K Arrow Lake Processor',33500,'LGA1851','3.6 GHz up to 5.2GHz','24 MB',14,14,'Yes'),('CPU007','Intel','Intel Core Ultra 7 265K Arrow Lake Processor',40500,'LGA1851','3.3GHz up to 5.5GHz','30 MB',20,20,'Yes'),('CPU008','Intel','Intel Core Ultra 9 285K Arrow Lake Processor',70500,'LGA1851','3.2GHz up to 5.7GHz','36 MB',24,24,'Yes'),('CPU009','AMD','AMD Ryzen 5 8400F Processor',11000,'AM5','3.8GHz Up to 5.1GHz','3.8GHz Up to 5.1GHz',6,12,'No'),('CPU010','AMD','AMD Ryzen 5 7400F Processor',14800,'AM5','3.7GHz Up to 4.7GHz','L2 Cache: 6MB, L3 Cache: 32MB',6,12,'No'),('CPU011','AMD','AMD Ryzen 5 7500F Processor',15800,'AM5','3.8GHz Up to 5.1GHz','L2 Cache: 6MB, L3 Cache: 32MB',6,12,'No'),('CPU012','AMD','AMD Ryzen 5 7600 Processor',20700,'AM5','3.8GHz Up to 5.1GHz','3.8GHz Up to 5.1GHz',6,12,'Yes'),('CPU013','AMD','AMD Ryzen 5 7700 Processor',23000,'AM5','3.8GHz Up to 5.3GHz','L2 Cache: 8MB, L3 Cache: 32MB',8,16,'Yes'),('CPU014','AMD','AMD Ryzen 5 8500G Processor with Radeon Graphics',21500,'AM5','3.5GHz up to 5.0GHz','L2 Cache: 6MB, L3 Cache: 16MB',6,12,'Yes'),('CPU015','AMD','AMD Ryzen 7 8700G Processor with Radeon Graphics',29900,'AM5','4.2GHz Up to 5.1GHz','8MB, L3 Cache: 16MB',8,16,'Yes'),('CPU016','AMD','AMD Ryzen 7 7600X Processor',21000,'AM5','4.7GHz Up to 5.3GHz','L2 Cache: 6MB, L3 Cache: 32MB',6,12,'Yes'),('CPU017','AMD','AMD Ryzen 7 7700X Processor',33000,'AM5','4.5GHz Up to 5.4GHz','L2 Cache: 8MB, L3 Cache: 32MB',8,16,'Yes'),('CPU018','AMD','AMD Ryzen 7 9900X Processor',39500,'AM5','4.4GHz Up to 5.6GHz','L1 Cache: 960KB, L2 Cache: 12MB, L3 Cache: 64MB',12,24,'Yes'),('CPU019','AMD','AMD Ryzen 7 7950X Processor',50500,'AM5','4.5GHz Up to 5.7GHz','L2 Cache: 16MB, L3 Cache: 64MB',16,32,'Yes'),('CPU020','AMD','AMD Ryzen 9 9950X3D Gaming Processor',83500,'AM5','4.3GHz Up to 5.7GHz','128 MB',16,32,'Yes'),('CPU021','AMD','AMD Ryzen 9 9900X3D Gaming Processor',71000,'AM5','4.4GHz Up to 5.5GHz','128 MB',12,24,'Yes'),('CPU022','AMD','AMD Ryzen 9 7900X3D Gaming Processor',48500,'AM5','4.4GHz Up to 5.6GHz','128 MB',12,24,'Yes'),('CPU023','AMD','AMD Ryzen 9 9800X3D Gaming Processor',50500,'AM5','4.7 GHz','96 MB',8,16,'Yes'),('CPU024','AMD','AMD Ryzen 9 7800X3D Gaming Processor',45500,'AM5','4.2 GHz','96 MB',8,16,'Yes'),('CPU025','AMD','AMD Ryzen 5 5600 Processor',11500,'AM4','3.5GHz up to 4.4GHz','L2: 3MB, L3: 32MB',6,12,'No'),('CPU026','AMD','AMD Ryzen 5 5700X3D Processor',27500,'AM4','3.0GHz up to 4.1GHz','L2: 4MB, L3: 96MB',8,16,'No'),('CPU027','AMD','AMD Ryzen 5 5700X Processor',13000,'AM4','3.4GHz Up to 4.6GHz','L2: 4MB, L3: 32MB',8,16,'No'),('CPU028','AMD','AMD Ryzen 5 5600G Processor',13500,'AM4','3.9GHz up to 4.4GHz','L2: 3MB, L3: 16MB',6,12,'Yes'),('CPU029','AMD','AMD Ryzen 5 5700G Processor',15500,'AM4','3.8GHz up to 4.6GHz','L2: 4MB, L3: 16MB',8,16,'Yes'),('CPU030','AMD','AMD Ryzen 5 5900X Processor',30000,'AM4','3.7GHz Up to 4.8GHz','L2: 6MB, L3: 64MB',12,24,'No');
/*!40000 ALTER TABLE `cpulist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mobolist`
--

DROP TABLE IF EXISTS `mobolist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mobolist` (
  `productid` varchar(5) NOT NULL,
  `brand` varchar(8) DEFAULT NULL,
  `name` varchar(59) DEFAULT NULL,
  `price` varchar(5) DEFAULT NULL,
  `socket` varchar(7) DEFAULT NULL,
  `formfactor` varchar(9) DEFAULT NULL,
  `ramtype` varchar(4) DEFAULT NULL,
  `ramslot` varchar(2) DEFAULT NULL,
  `pcie` varchar(1) DEFAULT NULL,
  `supportedcpu` varchar(65) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mobolist`
--

LOCK TABLES `mobolist` WRITE;
/*!40000 ALTER TABLE `mobolist` DISABLE KEYS */;
INSERT INTO `mobolist` VALUES ('MB001','MSI','MSI A520M-A Pro AM4 AMD Micro-ATX Motherboar','8000','AM4','Micro-ATX','DDR4','2x','3','AMD Ryzen 5000/4000G Series & AMD Ryzen 3rd Generation Processors'),('MB002','MSI','MSI B450M-A PRO MAX II AMD AM4 Motherboard','8500','AM4','Micro-ATX','DDR4','2x','3','AMD Ryzen 5000/4000G Series & AMD Ryzen 3rd Generation Processors'),('MB003','MSI','MSI PRO H610M-S DDR4 m-ATX Motherboard','10000','LGA1700','Micro-ATX','DDR4','2x','4','14th/13th/12th Gen Intel Processors'),('MB004','MSI','MSI PRO H610M-E mATX Motherboard','11000','LGA1700','Micro-ATX','DDR5','2x','4','14th/13th/12th Gen Intel Processors'),('MB005','MSI','MSI B550M-A PRO DDR4 AMD AM4 Micro ATX Motherboard','12000','AM4','Micro-ATX','DDR4','4x','4','AMD Ryzen 5000 & 3000 Series desktop processors'),('MB006','Asus','ASUS TUF GAMING B760M-PLUS II LGA1700 Micro-ATX Motherboard','22300','LGA1700','Micro-ATX','DDR5','4x','4','14th, 13th Gen & 12th Gen Processors'),('MB007','Gigabyte','GIGABYTE Z790 D DDR4 ATX Motherboar','26800','LGA1700','ATX','DDR5','4x','4','14th, 13th Gen & 12th Gen Processors'),('MB008','MSI','MSI PRO H810M-B DDR5 LGA1851 mATX Motherboard','17000','LGA1851','Micro-ATX','DDR5','2x','5','Intel Core Ultra Processors (Series 2),'),('MB009','Asus','Asus PRIME B860-PLUS WIFI-CSM LGA 1851 ATX Motherboard','29000','LGA1851','ATX','DDR5','4x','5','Intel Core Ultra Processors (Series 2),'),('MB010','Gigabyte','Gigabyte Z890 UD LGA 1851 ATX Motherboard','31000','LGA1851','ATX','DDR5','4x','5','Intel Core Ultra Processors (Series 2),'),('MB011','MSI','MSI PRO A620M-E AMD AM5 mATX Motherboard','11300','AM5','Micro-ATX','DDR5','2x','4','Ryzen 9000/ 8000 / 7000 Series Processors'),('MB012','Gigabyte','GIGABYTE B650M K AMD AM5 Micro-ATX Motherboard','14000','AM5','Micro-ATX','DDR5','4x','4','Ryzen 8000 & 7000 Series Processors for Socket AM5'),('MB013','MSI','MSI PRO B840-P WIFI AMD AM5 ATX Motherboard','22600','AM5','ATX','DDR5','4x','5','Ryzen 9000/ 8000 / 7000 Series Processors'),('MB014','AsRock','ASRock X870 Pro RS WiFi AM5 DDR5 ATX Motherboard','35500','AM5','ATX','DDR5','4x','5','Ryzen 9000/ 8000 / 7000 Series Processors'),('MB015','Asus','Asus TUF GAMING B850M-PLUS WIFI micro-ATX Motherboard','36500','AM5','Micro-ATX','DDR5','4x','5','Ryzen 9000/ 8000 / 7000 Series Processors'),('MB016','Gigabyte','GIGABYTE A620M H AM5 Micro-ATX Motherboard','12000','AM5','Micro-ATX','DDR5','2x','4','Ryzen 9000/ 8000 / 7000 Series Processors'),('MB017','Gigabyte','GIGABYTE B650M D3HP DDR5 AM5 Motherboard','17500','AM5','ATX','DDR5','4x','4','Ryzen 9000/ 8000 / 7000 Series Processors'),('MB018','MSI','MSI PRO B650M-B DDR5 AMD AM5 m-ATX Motherboard','12800','AM5','Micro-ATX','DDR5','2x','4','Ryzen 9000/ 8000 / 7000 Series Processors'),('MB019','AsRock','ASRock B850M-X WiFi AM5 DDR5 Micro ATX Motherboard','18500','AM5','Micro-ATX','DDR5','2x','4','Ryzen 9000/ 8000 / 7000 Series Processors');
/*!40000 ALTER TABLE `mobolist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-28 16:46:45
