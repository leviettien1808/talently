-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: talently
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `employer_id` int DEFAULT NULL,
  `message` text NOT NULL,
  `date_sent` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
INSERT INTO `conversations` VALUES (1,9,1,'I am very interested in the software engineer position.','2023-10-01 03:00:00'),(2,10,2,'I would like to apply for the project manager role.','2023-10-02 04:30:00'),(3,11,3,'Can you provide more details about the data analyst position?','2023-10-03 07:15:00'),(4,12,4,'I am excited about the teaching opportunity.','2023-10-04 02:45:00'),(5,13,5,'I have experience in financial analysis and would love to join your team.','2023-10-05 09:20:00'),(6,14,6,'I am passionate about travel and would like to apply for the marketing role.','2023-10-06 05:30:00'),(7,15,7,'I am interested in the business development position.','2023-10-07 01:00:00'),(8,16,8,'I have a background in graphic design and would love to work with you.','2023-10-08 08:45:00');
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employers`
--

DROP TABLE IF EXISTS `employers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(300) NOT NULL,
  `company_address` varchar(300) NOT NULL,
  `yearly_revenue` float DEFAULT NULL,
  `is_hiring` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `employers_chk_1` CHECK ((`yearly_revenue` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employers`
--

LOCK TABLES `employers` WRITE;
/*!40000 ALTER TABLE `employers` DISABLE KEYS */;
INSERT INTO `employers` VALUES (1,'Tech Innovations','123 Tech Lane, Silicon Valley',120,1),(2,'Green Solutions','456 Eco St, Green City',90,0),(3,'HealthCare Corp','789 Wellness Blvd, Health Town',110,1),(4,'EduTech Ltd.','101 Learning Ave, Knowledge City',95,1),(5,'Finance Experts','202 Money St, Finance District',130,0),(6,'Travel Ventures','303 Adventure Rd, Travel Land',85,1),(7,'Global Enterprises','404 Business Park, Global City',140,1),(8,'Creative Minds','505 Art St, Creative Town',80,1);
/*!40000 ALTER TABLE `employers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `full_name` varchar(400) GENERATED ALWAYS AS (concat(`first_name`,_utf8mb4' ',`last_name`)) STORED,
  `yearly_salary` int DEFAULT NULL,
  `current_status` enum('employed','self-employed','unemployed') NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `users_chk_1` CHECK ((`yearly_salary` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `last_name`, `yearly_salary`, `current_status`) VALUES (9,'Alice','Smith',50000,'employed'),(10,'Bob','Johnson',60000,'self-employed'),(11,'Charlie','Brown',NULL,'unemployed'),(12,'Diana','Prince',70000,'employed'),(13,'Ethan','Hunt',80000,'self-employed'),(14,'Fiona','Apple',NULL,'unemployed'),(15,'George','Lucas',90000,'employed'),(16,'Hannah','Montana',100000,'self-employed');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-15 20:32:17
