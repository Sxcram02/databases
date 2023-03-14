CREATE DATABASE  IF NOT EXISTS `coacceuta` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coacceuta`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: coacceuta
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
-- Table structure for table `agrupacion`
--

DROP TABLE IF EXISTS `agrupacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agrupacion` (
  `idAg` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `modalidad` char(3) NOT NULL,
  `localidad` char(5) NOT NULL,
  `autoria` varchar(95) NOT NULL,
  `direccion` varchar(95) NOT NULL,
  PRIMARY KEY (`idAg`),
  KEY `fk_agrupación_modalidad_idx` (`modalidad`),
  KEY `fk_agrupación_localidad1_idx` (`localidad`),
  CONSTRAINT `fk_agrupación_localidad1` FOREIGN KEY (`localidad`) REFERENCES `localidad` (`codigoPostal`),
  CONSTRAINT `fk_agrupación_modalidad` FOREIGN KEY (`modalidad`) REFERENCES `modalidad` (`idMod`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agrupacion`
--

LOCK TABLES `agrupacion` WRITE;
/*!40000 ALTER TABLE `agrupacion` DISABLE KEYS */;
INSERT INTO `agrupacion` VALUES (1,'La Salaita','Volaera','COM','51001','Óscar Olmo','Óscar Olmo'),(2,'Los Primeros','No se conoce','CHI','51001','Rafael Pérez','Rafael Pérez'),(3,'Ya echaba de menos la calle','COVID','CHI','51001','La agrupación','Paco Pino'),(4,'Los Olvidaos','Transfronterizos','COM','51001','Alfredo Luque','Francis Sánchez'),(5,'Losdelreinoalagüita','','CHI','51001','Pedrito Sánchez','Pedrito Sánchez'),(6,'Los Indispensables','','COM','18001','Juan Miguel Armuña','Pablo García'),(7,'Ahora no me acuerdo del nombre','','CHI','11201','Agustín Carlos González','Francisco García'),(8,'La Conquista del Pan','','COM','51001','José Miguel Romero','Alfredo Luque'),(9,'Me cago en to','','CHI','51001','Agrupación','Paco Pino'),(10,'Qué nos quiten lo bailao','','CHI','51001','Juan Antonio Rodríguez','Diego Barreno'),(11,'Los sedientos','','COM','11380','Cristian Triviño','Juan Cádiz'),(12,'Este año no hemo estao polque no nos hemos entelao','','CHI','51001','Rafael Pérez','Rafael Pérez'),(13,'Los Camarones','','COM','51001','Alfonso Pérez','Óscar Olmo'),(14,'Los Tiraos','','CHI','51001','Antonio Jiménez','Lolo Alonso');
/*!40000 ALTER TABLE `agrupacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concurso`
--

DROP TABLE IF EXISTS `concurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concurso` (
  `idConcurso` tinyint NOT NULL AUTO_INCREMENT,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `teatro` varchar(45) NOT NULL,
  `presentador` varchar(95) NOT NULL,
  PRIMARY KEY (`idConcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concurso`
--

LOCK TABLES `concurso` WRITE;
/*!40000 ALTER TABLE `concurso` DISABLE KEYS */;
INSERT INTO `concurso` VALUES (1,'2022-02-26','2022-02-26','Teatro del Revellín','Bernabé Sánchez'),(2,'2023-02-18','2023-02-18','Teatro del Revellín','Bernabé Sánchez');
/*!40000 ALTER TABLE `concurso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fase`
--

DROP TABLE IF EXISTS `fase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fase` (
  `idFase` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `concurso` tinyint NOT NULL,
  PRIMARY KEY (`idFase`),
  KEY `fk_fase_concurso1_idx` (`concurso`),
  CONSTRAINT `fk_fase_concurso1` FOREIGN KEY (`concurso`) REFERENCES `concurso` (`idConcurso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fase`
--

LOCK TABLES `fase` WRITE;
/*!40000 ALTER TABLE `fase` DISABLE KEYS */;
INSERT INTO `fase` VALUES (1,'Final',1),(2,'Final',1);
/*!40000 ALTER TABLE `fase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localidad`
--

DROP TABLE IF EXISTS `localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `localidad` (
  `codigoPostal` char(5) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`codigoPostal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localidad`
--

LOCK TABLES `localidad` WRITE;
/*!40000 ALTER TABLE `localidad` DISABLE KEYS */;
INSERT INTO `localidad` VALUES ('11001','Cádiz'),('11201','Algeciras'),('11380','Tarifa'),('14001','Córdoba'),('18001','Granada'),('29001','Málaga'),('41001','Sevilla'),('51001','Ceuta');
/*!40000 ALTER TABLE `localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidad` (
  `idMod` char(3) NOT NULL,
  `modalidad` varchar(45) NOT NULL,
  `maxComponentes` tinyint NOT NULL,
  PRIMARY KEY (`idMod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
INSERT INTO `modalidad` VALUES ('CHA','Charanga',30),('CHI','Chirigota',12),('COM','Comparsa',15),('COR','Coro',50),('CUA','Cuarteto',5),('MUR','Murga',18),('ROM','Romancero',1);
/*!40000 ALTER TABLE `modalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pieza`
--

DROP TABLE IF EXISTS `pieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pieza` (
  `idPieza` int NOT NULL AUTO_INCREMENT,
  `tema` varchar(45) DEFAULT NULL,
  `letra` varchar(45) DEFAULT NULL,
  `tipoPieza` char(3) NOT NULL,
  `agrupacion` int NOT NULL,
  PRIMARY KEY (`idPieza`),
  KEY `fk_pieza_tipoPieza1_idx` (`tipoPieza`),
  KEY `fk_pieza_agrupacion1_idx` (`agrupacion`),
  CONSTRAINT `fk_pieza_agrupacion1` FOREIGN KEY (`agrupacion`) REFERENCES `agrupacion` (`idAg`),
  CONSTRAINT `fk_pieza_tipoPieza1` FOREIGN KEY (`tipoPieza`) REFERENCES `tipopieza` (`idtipoPieza`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pieza`
--

LOCK TABLES `pieza` WRITE;
/*!40000 ALTER TABLE `pieza` DISABLE KEYS */;
INSERT INTO `pieza` VALUES (1,'Mixto','','PRE',1),(2,'Política',NULL,'PAS',1),(3,'Religión','','PAS',1),(4,'Apagones',NULL,'CUP',1),(5,'Feria',NULL,'CUP',1),(6,'Al tipo','','EST',1),(7,'Mixto','','POP',1),(8,'Mixto','','PRE',2),(9,'Ceuta','','PAS',2),(10,'Juan Vivas','','PAS',2),(11,'Poliamor','','CUP',2),(12,'Turismo','','CUP',2),(13,'Amor','','EST',2),(14,'Mixto',NULL,'POP',2),(15,'Al tipo','','PRE',3),(16,'Ceuta','','PAS',3),(17,'Carnaval','','PAS',3),(18,'Selu','','CUP',3),(19,'Ayuntamiento','','CUP',3),(20,'COVID','','EST',3),(21,'Mixto','','POP',3),(22,'Mixto','','PRE',4),(23,'Críticas','','PAS',4),(24,'Sanidad','','PAS',4),(25,'Ceuta','','CUP',4),(26,'COVID','','CUP',4),(27,'Al tipo','','EST',4),(28,'Mixto','','POP',4);
/*!40000 ALTER TABLE `pieza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntuaciones`
--

DROP TABLE IF EXISTS `puntuaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `puntuaciones` (
  `pieza` int NOT NULL,
  `fase` int NOT NULL,
  `musica` tinyint NOT NULL,
  `letra` tinyint NOT NULL,
  `afinacion` tinyint NOT NULL,
  `ejecucion` tinyint NOT NULL,
  PRIMARY KEY (`pieza`,`fase`),
  KEY `fk_agrupación_has_letra_letra1_idx` (`pieza`),
  KEY `fk_puntuaciones_fase1_idx` (`fase`),
  CONSTRAINT `fk_agrupación_has_letra_letra1` FOREIGN KEY (`pieza`) REFERENCES `pieza` (`idPieza`),
  CONSTRAINT `fk_puntuaciones_fase1` FOREIGN KEY (`fase`) REFERENCES `fase` (`idFase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuaciones`
--

LOCK TABLES `puntuaciones` WRITE;
/*!40000 ALTER TABLE `puntuaciones` DISABLE KEYS */;
INSERT INTO `puntuaciones` VALUES (1,1,9,4,8,5),(2,1,8,9,9,9),(3,1,7,8,6,8),(4,1,4,9,9,10),(5,1,8,9,10,1),(6,1,9,8,9,8),(7,1,9,4,8,5),(8,1,4,5,4,5),(9,1,8,4,9,9),(10,1,6,6,6,6),(11,1,9,9,9,10),(12,1,8,9,3,1),(13,1,9,9,9,9),(14,1,8,9,3,4),(15,1,9,9,5,9),(16,1,7,9,9,9),(17,1,9,9,9,9),(18,1,5,6,6,7),(19,1,9,8,7,6),(20,1,7,8,9,9),(21,1,10,10,10,10);
/*!40000 ALTER TABLE `puntuaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopieza`
--

DROP TABLE IF EXISTS `tipopieza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipopieza` (
  `idtipoPieza` char(3) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idtipoPieza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopieza`
--

LOCK TABLES `tipopieza` WRITE;
/*!40000 ALTER TABLE `tipopieza` DISABLE KEYS */;
INSERT INTO `tipopieza` VALUES ('CUP','Cuplé'),('EST','Estribillo'),('LIB','Tema Libre'),('PAS','Pasodoble'),('POE','Poesía'),('POP','Popurrí'),('PRE','Presentación'),('TAN','Tango');
/*!40000 ALTER TABLE `tipopieza` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-23  9:28:29
