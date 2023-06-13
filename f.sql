-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: famosos
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

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
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `ID_Foto` int(11) NOT NULL,
  `ID_user` int(11) DEFAULT NULL,
  `Descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID_Foto`),
  KEY `ID_user` (`ID_user`),
  CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `user` (`ID_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
INSERT INTO `foto` VALUES (1,1,'Meet me at midnight'),(2,1,'Anti-hero but make it acoustic'),(3,2,'NULL'),(4,2,'NULL'),(5,2,'<3'),(6,3,'Great team spirit!'),(7,4,'NULL'),(8,4,'NULL'),(9,4,'NULL'),(10,4,'NULL'),(11,4,'NULL');
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguido`
--

DROP TABLE IF EXISTS `seguido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguido` (
  `ID_Seguido` int(11) NOT NULL,
  `ID_user` int(11) DEFAULT NULL,
  `Seguidos` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`ID_Seguido`),
  KEY `ID_user` (`ID_user`),
  CONSTRAINT `seguido_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `user` (`ID_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguido`
--

LOCK TABLES `seguido` WRITE;
/*!40000 ALTER TABLE `seguido` DISABLE KEYS */;
INSERT INTO `seguido` VALUES (1,1,'NULL'),(2,2,'j.m'),(3,2,'rkive'),(4,2,'thv'),(5,3,'earling.haaland'),(6,3,'xavi'),(7,4,'eminem'),(8,4,'bryancranston');
/*!40000 ALTER TABLE `seguido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follow` (
  `ID_follow` int(11) NOT NULL,
  `ID_user` int(11) DEFAULT NULL,
  `followes` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_follow`),
  KEY `ID_user` (`ID_user`),
  CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`ID_user`) REFERENCES `user` (`ID_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
INSERT INTO `follow` VALUES (1,1,'selenagomez'),(2,1,'gigihadid'),(3,1,'j.m.'),(4,2,'uarmyhope'),(5,2,'bts.bighitofficial'),(6,3,'waynerooney'),(7,3,'leomessi'),(8,4,'toni.starr');
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID_user` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) DEFAULT NULL,
  `Nombre` varchar(100) DEFAULT NULL,
  `Tel` int(25) DEFAULT NULL,
  PRIMARY KEY (`ID_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Taylorswift','Taylor Swift',2147483647),(2,'Jin','Jin de BTS',2147483647),(3,'Cristiano','Cristiano Ronalfo',2147483647),(4,'Robertpattionsonv','Robert Pattinson',2147483647);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-29 19:16:44
