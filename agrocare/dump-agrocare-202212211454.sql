-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: localhost    Database: agrocare
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.24-MariaDB

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
-- Table structure for table `answer_rate`
--

DROP TABLE IF EXISTS `answer_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answer_rate` (
  `answer_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answer_rate`
--

LOCK TABLES `answer_rate` WRITE;
/*!40000 ALTER TABLE `answer_rate` DISABLE KEYS */;
INSERT INTO `answer_rate` VALUES (2,5),(4,16),(2,16);
/*!40000 ALTER TABLE `answer_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(200) NOT NULL,
  `first_name` varchar(40) DEFAULT NULL,
  `count` int(11) DEFAULT 0,
  `is_deleted` tinyint(1) DEFAULT 0 COMMENT 'is product deleted',
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (2,'Hi, I am fine','Test 1',3,0),(3,'Hi, I am fine','Test 1',0,0),(6,'Hi, I am fine','Test 1',0,0),(9,'ANSWER FOR Q ID 6 ','Test 1',0,0),(14,'ANSWER FOR Q ID 6 ','Test 1',0,0);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_bill`
--

DROP TABLE IF EXISTS `product_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_bill` (
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_bill`
--

LOCK TABLES `product_bill` WRITE;
/*!40000 ALTER TABLE `product_bill` DISABLE KEYS */;
INSERT INTO `product_bill` VALUES (3,7,2,1),(4,7,1,2),(3,7,2,5),(4,7,1,6),(4,7,1,7),(4,7,1,8),(3,19,2,9),(4,19,2,10);
/*!40000 ALTER TABLE `product_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_details`
--

DROP TABLE IF EXISTS `product_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_details` (
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` double DEFAULT NULL,
  `available_from` datetime DEFAULT NULL,
  `available_until` datetime DEFAULT NULL,
  `product_name` varchar(40) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'is product deleted',
  `unit_price` double NOT NULL,
  `type` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`,`seller_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_details`
--

LOCK TABLES `product_details` WRITE;
/*!40000 ALTER TABLE `product_details` DISABLE KEYS */;
INSERT INTO `product_details` VALUES (5,3,2.220446049250313e-16,'2022-11-01 00:00:00','2022-11-03 00:00:00','Beet',0,500,'farmer'),(5,4,2.220446049250313e-16,'2022-11-01 00:00:00','2022-11-03 00:00:00','Carrot',0,500,'farmer'),(0,5,5,'2022-11-01 00:00:00','2022-11-03 00:00:00','fertilizer',0,500,'owner'),(8,6,10,'2022-12-21 05:30:00','2022-12-29 05:30:00','carrot',0,100,'farmer'),(18,7,5.7,'2022-11-01 00:00:00','2022-11-03 00:00:00','Beet',1,500,'owner');
/*!40000 ALTER TABLE `product_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_answer`
--

DROP TABLE IF EXISTS `question_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question_answer` (
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0 COMMENT 'is message deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_answer`
--

LOCK TABLES `question_answer` WRITE;
/*!40000 ALTER TABLE `question_answer` DISABLE KEYS */;
INSERT INTO `question_answer` VALUES (3,2,0),(4,3,0),(5,6,0),(6,9,0),(6,14,0);
/*!40000 ALTER TABLE `question_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `question` varchar(400) NOT NULL,
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `farmer_id` int(11) NOT NULL,
  `is_deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`question_id`,`farmer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('Hi. How are you?',3,5,0),('Hi. How are you?',4,16,0),('Hi. How are you2?',5,16,0),('MY QUESTION 2?',6,16,0);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `shop_owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `shops_UN` (`shop_owner`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (7,'mahesha','Main road, Sri lanka','0777123123',0),(8,'mahesha','Main road, Sri lanka','0777123123',18);
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `nic` varchar(40) NOT NULL COMMENT 'characters10 or 11',
  `mobile_no` char(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL COMMENT 'minimum 6',
  `user_type` varchar(100) NOT NULL,
  `nearest_city` varchar(200) DEFAULT NULL,
  `district` varchar(200) DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'is user deleted',
  `province` varchar(100) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Test 1','Test 2','98121b591V','0112345678','owner@gmal.com','$2b$10$18lvFlGK6h9KI/xMXpZod.hC22ZcvG.iL1HYwyAMUh7F5.bVxBot.','owner','Colombo','Badulla',0,'Uva',0),('Test 1','Test 2','98121b591V','0112345678','farmer@gmal.com','$2b$10$VU252I.cQIt5QWyRQcecPOjiTjBZEX1VMtxHjRuuF.XG8Bc9bI9uy','farmer','Colombo','Badulla',0,'Uva',5),('Test 1','Test 2','98121b591V','0112345678','expert@gmal.com','$2b$10$y1ZrwfdCIufbekXpwHnuw.45qp8lrapvpWt8NBLUPxB3VZXkGl7Hu','expert','Colombo','Badulla',0,'Uva',6),('Test 7','Test 2','98121b591V','0112345678','customer@gmal.com','$2b$10$3o4mO1jyC4sHglsYWde.tetOhjhljDFyGsAjIWFxiJeXfWNe36hNS','customer','Colombo','Badulla',0,'Uva',7),('Test 1','Test 2','981234590V','0112345678','abc@gmal.com','$2b$10$53HKLGCXQjwagrLxsNWt4Oqcn9yeVrjVoMoH3ofQKApBX0mm4LXu.','farmer','Colombo','Badulla',0,'Uva',8),('Test 1','Test 2','981234590V','0112345678','abc@gmal.com','$2b$10$qTiYpLSWI8PgIXn3s.sdk.rqFrHO2DdZyR3O/TR0EQOPdi/fjUhhC','farmer','Colombo','Badulla',0,'Uva',9),('Test 3','Test 4','981234590V','0112376678','abcd@gmail.com','$2b$10$wtJcaX5mjHGaZFGPX/usOeQoZw4TRxdqOsVT71f20SUX2sYdWHpvK','farmer','Colombo','Badulla',0,'Uva',10),('Mahesha','Cheshani','123456789V','0713063073','mck@gmail.com','$2b$10$YcwcRyW16W.vlzVcL9flJucy52fJ4oNgVj8R4gVD0qAXjVMbc8rkK','Farmer','bandarawela','badulla',0,'uva',11),('Mahesha','Cheshani','123456799V','0713063074','abc123@gmail.com','$2b$10$AgRd2rlvWHge6BRyMwiezeUgU4HcOzfIcmx5UzsL3Nu.yOEHs7q1y','Farmer','bandarawela','badulla',1,'uva',12),('Test 3','Test 4','981234590V','0112376678','abcd@gmail.com','$2b$10$nyAuezlt2b5H80j.F6YV6uwdfarH.aTVUpp3LhYLPPgjJYMuIbWkm','farmer','Colombo','Badulla',0,'Uva',13),('Test 1','Test 2','981234590V','0112345678','abc@gmal.com','$2b$10$qGuyYQXZn4vCRretVewAm.KxQ.hlvF4IbrCaKHGDI4PV0QC37U3zG','farmer','Colombo','Badulla',0,'Uva',14),('Test 1','Test 2','981234590V','0112345678','abc@gmal.com','$2b$10$IG75Xo3eYvW.RVq4Jr6BU.c2t1.M5cFQ5KZ5EeHCJ.E3Q8OZYDdYm','farmer','Colombo','Badulla',1,'Uva',15),('Test 1','Test 2','981234590V','0112345678','abc@gmail.com','$2b$10$DRlJBoORnVPYMRqexaQem.k/qJu3fTZxGKzjh66bL3zkIDSsqt9Ju','farmer','Colombo','Badulla',0,'Uva',16),('Test 1','Test 2','981234590V','0112345678','abc@gmail.com','$2b$10$wC3FvXCYcjT1YxBrpqvDJO8jU1q7cRF8ftGAr4JbbZrv0WM3lj146','farmer','Colombo','Badulla',0,'Uva',17),('Test 1','Test 2','981234590V','0112345678','owners@gmail.com','$2b$10$rc.jUHRmLVUNM2zXXqHLE.uuYyVeW83k5B0USw84RUbaEDMEqJpDS','owner','Colombo','Badulla',0,'Uva',18),('Test 1','Test 2','981234590V','0112345678','customer@gmail.com','$2b$10$rvY9F1AjDYEt6jT6SWObBuRf0gPq63EEjfFx.RZbv1QwtpTfuJo6S','customer','Colombo','Badulla',0,'Uva',19),('Test 1','Test 2','981234590V','0112345678','expert@gmail.com','$2b$10$ChpMuUzpC6djYM6jhmbPGeC9faaXC4wn6GfsQCKr4VfTNw75wqMF2','expert','Colombo','Badulla',0,'Uva',20);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'agrocare'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-21 14:54:28
