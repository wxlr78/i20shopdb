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
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'sneakersAdidasAnn.jpg','Кросовки Adidas анонс'),(2,'sneakersNikeAnn.jpg','Кросовки Nike анонс'),(3,'sneakersPumaAnn.jpg','Кросовки Puma анонс'),(4,'shortsAdidasAnn.jpg','Шорты Adidas анонс'),(5,'shortsNikeAnn.jpg','Шорты Nike анонс'),(6,'shortsPumaAnn.jpg','Шорты Puma анонс'),(7,'shirtAdidasAnn.jpg','Футболка Adidas анонс'),(8,'shirtNikeAnn.jpg','Футболка Nike анонс'),(9,'shirtPumaAnn.jpg','Футболка Puma анонс'),(10,'windbreakerAdidasAnn.jpg','Ветровка Adidas анонс'),(11,'windbreakerNikeAnn.jpg','Ветровка Nike анонс'),(12,'windbreakerPumaAnn.jpg','Ветровка Puma анонс'),(13,'sneakersAdidasAdd.jpg','Кросовки Adidas доп'),(14,'sneakersNikeAdd.jpg','Кросовки Nike доп'),(15,'sneakersPumaAdd.jpg','Кросовки Puma доп'),(16,'shortsAdidasAdd.jpg','Шорты Adidas доп'),(17,'shortsNikeAdd.jpg','Шорты Nike доп'),(18,'shortsPumaAdd.jpg','Шорты Puma доп'),(19,'shirtAdidasAdd.jpg','Футболка Adidas доп'),(20,'shirtNikeAdd.jpg','Футболка Nike доп'),(21,'shirtPumaAdd.jpg','Футболка Puma доп'),(22,'windbreakerAdidasAdd.jpg','Ветровка Adidas доп'),(23,'windbreakerNikeAdd.jpg','Ветровка Nike доп'),(24,'windbreakerPumaAdd.jpg','Ветровка Puma доп');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Кросовки Adidas','Очень хорошие кросовки Adidas',1,10000,9000,8000),(2,'Кросовки Nike','Очень хорошие кросовки Nike',1,10000,9000,8000),(3,'Кросовки Puma','Очень хорошие кросовки Puma',1,10000,9000,8000),(4,'Шорты Adidas','Очень хорошие шорты Adidas',1,1000,900,800),(5,'Шорты Nike','Очень хорошие шорты Nike',1,1000,900,800),(6,'Шорты Puma','Очень хорошие шорты Puma',1,1000,900,800),(7,'Футболка Adidas','Очень хорошая футболка Adidas',1,1100,1000,900),(8,'Футболка Nike','Очень хорошая футболка Nike',1,1100,1000,900),(9,'Футболка Puma','Очень хорошая футболка Puma',1,1100,1000,900),(10,'Ветровка Adidas','Очень хорошая ветровка Adidas',1,1200,1100,1000),(11,'Ветровка Nike','Очень хорошая ветровка Nike',1,1200,1100,1000),(12,'Ветровка Puma','Очень хорошая ветровка Puma',1,1200,1100,1000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image_additional`
--

LOCK TABLES `product_image_additional` WRITE;
/*!40000 ALTER TABLE `product_image_additional` DISABLE KEYS */;
INSERT INTO `product_image_additional` VALUES (1,1,2),(2,2,14),(3,3,15),(4,4,16),(5,5,17),(6,6,18),(7,7,19),(8,8,20),(9,9,21),(10,10,22),(11,11,23),(12,12,24);
/*!40000 ALTER TABLE `product_image_additional` ENABLE KEYS */;
UNLOCK TABLES;

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
  UNIQUE KEY `Product_id` (`Product_id`),
  KEY `Image_id` (`Image_id`),
  CONSTRAINT `product_image_main_ibfk_1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`),
  CONSTRAINT `product_image_main_ibfk_2` FOREIGN KEY (`Image_id`) REFERENCES `image` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image_main`
--

LOCK TABLES `product_image_main` WRITE;
/*!40000 ALTER TABLE `product_image_main` DISABLE KEYS */;
INSERT INTO `product_image_main` VALUES (1,1,2),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12);
/*!40000 ALTER TABLE `product_image_main` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'Adidas','Очень хорошие вещи Adidas'),(2,'Nike','Очень хорошие вещи Nike'),(3,'Puma','Очень хорошие вещи Puma'),(4,'Кроссовки','Очень хорошие кроссовки'),(5,'Шорты','Очень хорошие шорты'),(6,'Футболки','Очень хорошие футболки'),(7,'Ветровки','Очень хорошие ветровки');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `section_product_additional`
--

LOCK TABLES `section_product_additional` WRITE;
/*!40000 ALTER TABLE `section_product_additional` DISABLE KEYS */;
INSERT INTO `section_product_additional` VALUES (1,2,1),(2,4,2),(3,4,3),(4,5,4),(5,5,5),(6,5,6),(7,6,7),(8,6,8),(9,6,9),(10,7,10),(11,7,11),(12,7,12);
/*!40000 ALTER TABLE `section_product_additional` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `section_product_main`
--

LOCK TABLES `section_product_main` WRITE;
/*!40000 ALTER TABLE `section_product_main` DISABLE KEYS */;
INSERT INTO `section_product_main` VALUES (1,2,1),(2,2,2),(3,3,3),(4,1,4),(5,2,5),(6,3,6),(7,1,7),(8,2,8),(9,3,9),(10,1,10),(11,2,11),(12,3,12);
/*!40000 ALTER TABLE `section_product_main` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-20 10:31:17
