-- MariaDB dump 10.19  Distrib 10.11.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: uz
-- ------------------------------------------------------
-- Server version	10.11.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `arrivalstations`
--

DROP TABLE IF EXISTS `arrivalstations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arrivalstations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stations` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arrivalstations`
--

LOCK TABLES `arrivalstations` WRITE;
/*!40000 ALTER TABLE `arrivalstations` DISABLE KEYS */;
INSERT INTO `arrivalstations` VALUES
(2,'Львів','2023-05-23 07:08:45','2023-05-23 07:08:45'),
(3,'Київ','2023-05-23 07:08:53','2023-05-23 07:08:53'),
(4,'Запоріжжя','2023-05-23 07:09:09','2023-05-23 07:09:09'),
(5,'Дніпро','2023-05-23 07:09:16','2023-05-23 07:09:16');
/*!40000 ALTER TABLE `arrivalstations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departurestations`
--

DROP TABLE IF EXISTS `departurestations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departurestations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stations` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departurestations`
--

LOCK TABLES `departurestations` WRITE;
/*!40000 ALTER TABLE `departurestations` DISABLE KEYS */;
INSERT INTO `departurestations` VALUES
(1,'Львів','2023-05-22 21:45:51','2023-05-22 21:46:54'),
(2,'Київ','2023-05-23 07:06:14','2023-05-23 07:06:14'),
(3,'Дніпро','2023-05-23 07:06:26','2023-05-23 07:06:26'),
(4,'Харків','2023-05-23 07:06:32','2023-05-23 07:06:32'),
(5,'Запоріжжя','2023-05-23 07:06:41','2023-05-23 07:06:41'),
(6,'Сумми','2023-05-23 07:06:49','2023-05-23 07:06:49');
/*!40000 ALTER TABLE `departurestations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trips` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Departure` text DEFAULT NULL,
  `CreateAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdateAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Arrival` text DEFAULT NULL,
  `train` char(4) NOT NULL,
  `day` text DEFAULT NULL,
  `departedAt` time NOT NULL,
  `arrivalAt` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES
(2,'Львів','2023-05-23 07:13:29','2023-05-23 14:44:56','Київ','92К','1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31','22:58:00','06:23:00'),
(3,'Львів','2023-05-23 07:18:01','2023-05-24 20:44:44','Запоріжжя','086Л','1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31','10:40:00','07:55:00'),
(4,'Львів','2023-05-23 07:13:29','2023-05-23 14:44:56','Київ','101П','1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31','12:05:00','22:21:00'),
(5,'Львів','2023-05-24 20:39:25','2023-05-24 20:39:25','Київ','056Л','2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30','23:45:00','09:28:00'),
(6,'Львів','2023-05-24 20:41:35','2023-05-24 20:41:35','Київ','029Л','5, 10, 15, 20, 25, 30','00:30:00','08:07:00'),
(7,'Львів','2023-05-24 20:44:44','2023-05-24 20:44:44','Дніпро','086Л','1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31','10:40:00','05:18:00'),
(8,'Київ','2023-05-24 21:37:09','2023-05-24 21:37:09','Львів','93К','1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31','22:58:00','06:23:00'),
(9,'Запоріжжя','2023-05-23 07:18:01','2023-05-24 20:44:44','Львів','087Л','1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31','12:40:00','02:48:00');
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-25 17:19:26
