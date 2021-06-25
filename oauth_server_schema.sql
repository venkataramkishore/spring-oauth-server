CREATE DATABASE  IF NOT EXISTS `oauth_server` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `oauth_server`;
-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: oauth_server
-- ------------------------------------------------------
-- Server version	8.0.24

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
-- Table structure for table `OAUTH_CLIENT_DETAILS`
--

DROP TABLE IF EXISTS `OAUTH_CLIENT_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OAUTH_CLIENT_DETAILS` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `CLIENT_SECRET` varchar(255) NOT NULL,
  `RESOURCE_IDS` varchar(255) DEFAULT NULL,
  `SCOPE` varchar(255) DEFAULT NULL,
  `AUTHORIZED_GRANT_TYPES` varchar(255) DEFAULT NULL,
  `WEB_SERVER_REDIRECT_URI` varchar(255) DEFAULT NULL,
  `AUTHORITIES` varchar(255) DEFAULT NULL,
  `ACCESS_TOKEN_VALIDITY` int DEFAULT NULL,
  `REFRESH_TOKEN_VALIDITY` int DEFAULT NULL,
  `ADDITIONAL_INFORMATION` varchar(4096) DEFAULT NULL,
  `AUTOAPPROVE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OAUTH_CLIENT_DETAILS`
--

LOCK TABLES `OAUTH_CLIENT_DETAILS` WRITE;
/*!40000 ALTER TABLE `OAUTH_CLIENT_DETAILS` DISABLE KEYS */;
INSERT INTO `OAUTH_CLIENT_DETAILS` VALUES ('USER_CLIENT_APP','{bcrypt}$2a$10$EOs8VROb14e7ZnydvXECA.4LoIhPOoFHKvVF/iBZ/ker17Eocz4Vi','USER_CLIENT_RESOURCE,USER_ADMIN_RESOURCE','role_admin,role_user','authorization_code,password,refresh_token,implicit',NULL,NULL,900,3600,'{}',NULL);
/*!40000 ALTER TABLE `OAUTH_CLIENT_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERMISSION`
--

DROP TABLE IF EXISTS `PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERMISSION` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERMISSION`
--

LOCK TABLES `PERMISSION` WRITE;
/*!40000 ALTER TABLE `PERMISSION` DISABLE KEYS */;
INSERT INTO `PERMISSION` VALUES (1,'can_create_user'),(4,'can_delete_user'),(3,'can_read_user'),(2,'can_update_user');
/*!40000 ALTER TABLE `PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PERMISSION_ROLE`
--

DROP TABLE IF EXISTS `PERMISSION_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERMISSION_ROLE` (
  `PERMISSION_ID` int DEFAULT NULL,
  `ROLE_ID` int DEFAULT NULL,
  KEY `PERMISSION_ID` (`PERMISSION_ID`),
  KEY `ROLE_ID` (`ROLE_ID`),
  CONSTRAINT `permission_role_ibfk_1` FOREIGN KEY (`PERMISSION_ID`) REFERENCES `PERMISSION` (`ID`),
  CONSTRAINT `permission_role_ibfk_2` FOREIGN KEY (`ROLE_ID`) REFERENCES `ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PERMISSION_ROLE`
--

LOCK TABLES `PERMISSION_ROLE` WRITE;
/*!40000 ALTER TABLE `PERMISSION_ROLE` DISABLE KEYS */;
INSERT INTO `PERMISSION_ROLE` VALUES (1,1),(2,1),(3,1),(4,1),(3,2);
/*!40000 ALTER TABLE `PERMISSION_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLE` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NAME` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
INSERT INTO `ROLE` VALUES (1,'role_admin'),(2,'role_user');
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE_USER`
--

DROP TABLE IF EXISTS `ROLE_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLE_USER` (
  `ROLE_ID` int DEFAULT NULL,
  `USER_ID` int DEFAULT NULL,
  KEY `ROLE_ID` (`ROLE_ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `ROLE` (`ID`),
  CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE_USER`
--

LOCK TABLES `ROLE_USER` WRITE;
/*!40000 ALTER TABLE `ROLE_USER` DISABLE KEYS */;
INSERT INTO `ROLE_USER` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `ROLE_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(24) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `ENABLED` bit(1) NOT NULL,
  `ACCOUNT_EXPIRED` bit(1) NOT NULL,
  `CREDENTIALS_EXPIRED` bit(1) NOT NULL,
  `ACCOUNT_LOCKED` bit(1) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USERNAME` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (1,'admin','{bcrypt}$2a$10$EOs8VROb14e7ZnydvXECA.4LoIhPOoFHKvVF/iBZ/ker17Eocz4Vi','william@gmail.com',_binary '',_binary '\0',_binary '\0',_binary '\0'),(2,'user','{bcrypt}$2a$10$EOs8VROb14e7ZnydvXECA.4LoIhPOoFHKvVF/iBZ/ker17Eocz4Vi','john@gmail.com',_binary '',_binary '\0',_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-25  0:00:41
