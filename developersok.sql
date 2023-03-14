CREATE DATABASE  IF NOT EXISTS `developers` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `developers`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: developrs
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
-- Table structure for table `hub`
--

DROP TABLE IF EXISTS `hub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `hub` (
  `id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provincia` char(2) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_hub_provincia_idx` (`provincia`),
  CONSTRAINT `fk_hub_provincia` FOREIGN KEY (`provincia`) REFERENCES `provincia` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hub`
--

LOCK TABLES `hub` WRITE;
/*!40000 ALTER TABLE `hub` DISABLE KEYS */;
INSERT INTO `hub` VALUES (1,'Campus Madrid by Google','28'),(2,'Impact Hub','29'),(3,'Silicon Alley','28'),(4,'TheCube','28');
/*!40000 ALTER TABLE `hub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programador`
--

DROP TABLE IF EXISTS `programador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `programador` (
  `idProgramador` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `dni` varchar(9) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombreP` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ap1` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ap2` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `salario` smallint unsigned NOT NULL,
  `hub` tinyint unsigned NOT NULL,
  `seccion` tinyint unsigned NOT NULL,
  PRIMARY KEY (`idProgramador`),
  UNIQUE KEY `dni` (`dni`),
  KEY `fk_programador_hub1_idx` (`hub`),
  KEY `fk_programador_seccion1_idx` (`seccion`),
  CONSTRAINT `fk1` FOREIGN KEY (`hub`) REFERENCES `hub` (`id`),
  CONSTRAINT `fk2` FOREIGN KEY (`seccion`) REFERENCES `seccion` (`idSeccion`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programador`
--

LOCK TABLES `programador` WRITE;
/*!40000 ALTER TABLE `programador` DISABLE KEYS */;
INSERT INTO `programador` VALUES (1,'25498262W','Javier','Galet','de las Heras',2000,1,2),(2,'11616417Z','Juan Carlos','Martín','Carrasco',2100,1,3),(3,'68646029E','Ángel','Vilchez',NULL,1900,2,4),(4,'13090296F','José María','Ostalé','Méndez',1500,1,5),(5,'54758032T','José Ángel','Valriberas','Pizarro',1950,2,6),(6,'05210827Q','David','Santana',NULL,2500,2,2),(7,'81308869M','Julio','Mata','Guerrero',2100,2,1),(8,'48721131R','Paula','Rodríguez','Terrón',2300,3,4),(9,'27296924H','Laura','Martínez','Dúo',2100,2,3),(10,'40122556E','Rocío','Sánchez','Ferrero',2150,1,0),(11,'63771254M','Yolanda','Benítez','Pérez',1900,4,0),(12,'32033875G','Nuria','Morales','Sánchez',1200,2,6),(13,'36474474Q','Clara','Pérez','Segado',1900,1,2),(14,'00000010x','Felip','Felipe',NULL,2233,88,120);
/*!40000 ALTER TABLE `programador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `provincia` (
  `codigo` char(2) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombreProvincia` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES ('01','Álava'),('02','Albacete'),('03','Alicante'),('04','Almería'),('05','Ávila'),('06','Badajoz'),('07','Islas Baleares'),('08','Barcelona'),('09','Burgos'),('10','Cáceres'),('11','Cádiz'),('12','Castellón'),('13','Ciudad Real'),('14','Córdoba'),('15','La Coruña'),('16','Cuenca'),('17','Gerona'),('18','Granada'),('19','Guadalajara'),('20','Guipúzcoa'),('21','Huelva'),('22','Huesca'),('23','Jaén'),('24','león'),('25','Lérida'),('26','La Rioja'),('27','Lugo'),('28','Madrid'),('29','Málaga'),('30','Murcia'),('31','Navarra'),('32','Orense'),('33','Asturias'),('34','Palencia'),('35','Las Palmas'),('36','Pontevedra'),('37','Salamanca'),('38','Santa Cruz de Tenerife'),('39','Cantabria'),('40','Segovia'),('41','Sevilla'),('42','Soria'),('43','Tarragona'),('44','Teruel'),('45','Toledo'),('46','Valencia'),('47','Valladolid'),('48','Vizcaya'),('49','Zamora'),('50','Zaragoza'),('51','Ceuta'),('52','Melilla');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `seccion` (
  `idSeccion` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `nombreS` varchar(99) NOT NULL,
  `partidaEconomica` double unsigned NOT NULL,
  `desembolso` double unsigned NOT NULL,
  PRIMARY KEY (`idSeccion`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` VALUES (1,'Frontend',230000,7000),(2,'Backend',260000,32000),(3,'Full Stack',390000,36000),(4,'Centro de Atención al Usuario',220000,4000),(5,'Sistemas e Infraestructuras',486000,481000),(6,'Bases de Datos',0,0),(7,'Pruebas',0,2000);
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-28 10:52:01
