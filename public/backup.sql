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
  `imageURL` varchar(128) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpulist`
--

LOCK TABLES `cpulist` WRITE;
/*!40000 ALTER TABLE `cpulist` DISABLE KEYS */;
INSERT INTO `cpulist` VALUES ('CPU001','Intel','Intel Core i3-12100 12th Gen Alder Lake Processor',11500,'LGA1700','3.30 GHz Up to 4.30 GHz','12MB',4,8,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/intel/i3-12100/i3-12100-228x228.jpg'),('CPU002','Intel','Intel Core i5-12400F 12th Gen Alder Lake Processor',12500,'LGA1700','2.50 GHz Up to 4.40 GHz','18MB',6,12,'No','https://www.startech.com.bd/image/cache/catalog/processor/intel/i5-12400/i5-12400-001-228x228.jpg'),('CPU003','Intel','Intel Core i5-12500 12th Gen Alder Lake Processor',18500,'LGA1700','3.00 GHz Up to 4.60 GHz','18MB',6,12,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/intel/i5-12500/i5-12500-01-228x228.jpg'),('CPU004','Intel','Intel Core i5-12600K 12th Gen Alder Lake Processor',25000,'LGA1700','2.8 GHz Up to 4.9 GHz','20MB',10,16,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/intel/i5-12600k/i5-12600k-01-228x228.jpg'),('CPU005','Intel','Intel Core i7-12700K 12th Gen Alder Lake Processor',30200,'LGA1700','3.60 GHz Up to 5.0 GHz','25MB',12,20,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/intel/i7-12700k/i7-12700k-01-228x228.jpg'),('CPU006','Intel','Intel Core Ultra 5 245K Arrow Lake Processor',33500,'LGA1851','3.6 GHz up to 5.2GHz','24 MB',14,14,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/intel/core-ultra-5-245k/intel-core-ultra-5-245k-processor-228x228.webp'),('CPU007','Intel','Intel Core Ultra 7 265K Arrow Lake Processor',40500,'LGA1851','3.3GHz up to 5.5GHz','30 MB',20,20,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/intel/core-ultra-7-265k/intel-core-ultra-7-265k-processor-228x228.webp'),('CPU008','Intel','Intel Core Ultra 9 285K Arrow Lake Processor',70500,'LGA1851','3.2GHz up to 5.7GHz','36 MB',24,24,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/intel/core-ultra-9-285k/intel-core-ultra-9-285k-processor-228x228.webp'),('CPU009','AMD','AMD Ryzen 5 8400F Processor',11000,'AM5','3.8GHz Up to 5.1GHz','3.8GHz Up to 5.1GHz',6,12,'No','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-8400f/ryzen-5-8400f-01-228x228.webp'),('CPU010','AMD','AMD Ryzen 5 7400F Processor',14800,'AM5','3.7GHz Up to 4.7GHz','L2 Cache: 6MB, L3 Cache: 32MB',6,12,'No','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-7400f/ryzen-5-7400f-228x228.webp'),('CPU011','AMD','AMD Ryzen 5 7500F Processor',15800,'AM5','3.8GHz Up to 5.1GHz','L2 Cache: 6MB, L3 Cache: 32MB',6,12,'No','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-7600/ryzen-5-7600-01-228x228.webp'),('CPU012','AMD','AMD Ryzen 5 7600 Processor',20700,'AM5','3.8GHz Up to 5.1GHz','3.8GHz Up to 5.1GHz',6,12,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-7600/ryzen-5-7600-01-228x228.webp'),('CPU013','AMD','AMD Ryzen 5 7700 Processor',23000,'AM5','3.8GHz Up to 5.3GHz','L2 Cache: 8MB, L3 Cache: 32MB',8,16,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-7-7700/ryzen-7-7700-01-228x228.webp'),('CPU014','AMD','AMD Ryzen 5 8500G Processor with Radeon Graphics',21500,'AM5','3.5GHz up to 5.0GHz','L2 Cache: 6MB, L3 Cache: 16MB',6,12,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/8500g/8500g-01-228x228.webp'),('CPU015','AMD','AMD Ryzen 7 8700G Processor with Radeon Graphics',29900,'AM5','4.2GHz Up to 5.1GHz','8MB, L3 Cache: 16MB',8,16,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/AMD/ryzen-7-8700g/ryzen-7-8700g-01-228x228.webp'),('CPU016','AMD','AMD Ryzen 7 7600X Processor',21000,'AM5','4.7GHz Up to 5.3GHz','L2 Cache: 6MB, L3 Cache: 32MB',6,12,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-5-7600x/ryzen-5-7600x-01-228x228.webp'),('CPU017','AMD','AMD Ryzen 7 7700X Processor',33000,'AM5','4.5GHz Up to 5.4GHz','L2 Cache: 8MB, L3 Cache: 32MB',8,16,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-7-7700x/ryzen-7-7700x-01-228x228.webp'),('CPU018','AMD','AMD Ryzen 7 9900X Processor',39500,'AM5','4.4GHz Up to 5.6GHz','L1 Cache: 960KB, L2 Cache: 12MB, L3 Cache: 64MB',12,24,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-9-9900x/ryzen-9-9950x-228x228.webp'),('CPU019','AMD','AMD Ryzen 7 7950X Processor',50500,'AM5','4.5GHz Up to 5.7GHz','L2 Cache: 16MB, L3 Cache: 64MB',16,32,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-9-7950x/ryzen-9-7950x-01-228x228.webp'),('CPU020','AMD','AMD Ryzen 9 9950X3D Gaming Processor',83500,'AM5','4.3GHz Up to 5.7GHz','128 MB',16,32,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-9-9950x3d/ryzen-9-9950x3d-01-228x228.webp'),('CPU021','AMD','AMD Ryzen 9 9900X3D Gaming Processor',71000,'AM5','4.4GHz Up to 5.5GHz','128 MB',12,24,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/amd/ryzen-9-9900x3d/ryzen-9-9900x3d-228x228.webp'),('CPU022','AMD','AMD Ryzen 9 7900X3D Gaming Processor',48500,'AM5','4.4GHz Up to 5.6GHz','128 MB',12,24,'Yes','https://www.startech.com.bd/image/cache/catalog/processor/AMD/ryzen-9-7900x3d/ryzen-9-7900x3d-01-228x228.webp'),('CPU023','AMD','AMD Ryzen 9 9800X3D Gaming Processor',50500,'AM5','4.7 GHz','96 MB',8,16,'Yes','https://techlandbd.com/cache/images/uploads/products/P0592506113/cover_cache_optimize-70.webp'),('CPU024','AMD','AMD Ryzen 9 7800X3D Gaming Processor',45500,'AM5','4.2 GHz','96 MB',8,16,'Yes','https://techlandbd.com/cache/images/uploads/products/P0592506057/cover_cache_optimize-70.webp');
/*!40000 ALTER TABLE `cpulist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26  2:15:20
