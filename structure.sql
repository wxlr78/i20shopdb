CREATE DATABASE  IF NOT EXISTS `i20shopdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `i20shopdb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: i20shopdb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Link` varchar(30) DEFAULT NULL,
  `Alt` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(30) DEFAULT NULL,
  `Short_description` varchar(300) DEFAULT NULL,
  `Is_active` tinyint(1) DEFAULT NULL,
  `Old_price` double DEFAULT NULL,
  `Current_price` double DEFAULT NULL,
  `Promo_price` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_image_additional`
--

DROP TABLE IF EXISTS `product_image_additional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image_additional` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Product_id` int DEFAULT NULL,
  `Image_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Product_id` (`Product_id`),
  KEY `Image_id` (`Image_id`),
  CONSTRAINT `product_image_additional_ibfk_1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`),
  CONSTRAINT `product_image_additional_ibfk_2` FOREIGN KEY (`Image_id`) REFERENCES `image` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_image_main`
--

DROP TABLE IF EXISTS `product_image_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_image_main` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Product_id` int DEFAULT NULL,
  `Image_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Image_id` (`Image_id`),
  KEY `Product_id` (`Product_id`),
  CONSTRAINT `product_image_main_ibfk_1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`),
  CONSTRAINT `product_image_main_ibfk_2` FOREIGN KEY (`Image_id`) REFERENCES `image` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(30) DEFAULT NULL,
  `Short_description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `section_product_additional`
--

DROP TABLE IF EXISTS `section_product_additional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_product_additional` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Section_id` int DEFAULT NULL,
  `Product_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Section_id` (`Section_id`),
  KEY `Product_id` (`Product_id`),
  CONSTRAINT `section_product_additional_ibfk_1` FOREIGN KEY (`Section_id`) REFERENCES `section` (`Id`),
  CONSTRAINT `section_product_additional_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `section_product_main`
--

DROP TABLE IF EXISTS `section_product_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_product_main` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Section_id` int DEFAULT NULL,
  `Product_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Product_id` (`Product_id`),
  KEY `Section_id` (`Section_id`),
  CONSTRAINT `section_product_main_ibfk_1` FOREIGN KEY (`Section_id`) REFERENCES `section` (`Id`),
  CONSTRAINT `section_product_main_ibfk_2` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-20  0:06:11
