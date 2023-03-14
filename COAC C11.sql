DROP DATABASE coacceuta;
CREATE DATABASE IF NOT EXISTS `coacceuta`;
USE `coacceuta`;

DROP TABLE IF EXISTS `modalidad`;
CREATE TABLE `modalidad` (
  `idMod` char(3) NOT NULL,
  `modalidad` varchar(45) NOT NULL,
  `maxComponentes` tinyint NOT NULL,
  PRIMARY KEY (`idMod`)
);

LOCK TABLES `modalidad` WRITE;
INSERT INTO `modalidad` VALUES ('CHA','Charanga',30),('CHI','Chirigota',12),('COM','Comparsa',15),('COR','Coro',50),('CUA','Cuarteto',5),('MUR','Murga',18),('ROM','Romancero',1);
UNLOCK TABLES;

DROP TABLE IF EXISTS `localidad`;
CREATE TABLE `localidad` (
  `codigoPostal` char(5) NOT NULL,
  `localidad` varchar(45) NOT NULL,
  PRIMARY KEY (`codigoPostal`)
);

LOCK TABLES `localidad` WRITE;
INSERT INTO `localidad` VALUES ('11001','Cádiz'),('11201','Algeciras'),('11380','Tarifa'),('14001','Córdoba'),('18001','Granada'),('29001','Málaga'),('41001','Sevilla'),('51001','Ceuta');
UNLOCK TABLES;

DROP TABLE IF EXISTS `agrupacion`;
CREATE TABLE `agrupacion` (
  `agrupacion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `modalidad` char(3) NOT NULL,
  `codigoPostal` char(5) NOT NULL,
  `autoria` varchar(95) NOT NULL,
  `direccion` varchar(95) NOT NULL,
  PRIMARY KEY (`agrupacion`),
  KEY `fk_agrupación_modalidad_idx` (`modalidad`),
  KEY `fk_agrupación_localidad1_idx` (`codigoPostal`),
  CONSTRAINT `fk_agrupación_localidad1` FOREIGN KEY (`codigoPostal`) REFERENCES `localidad` (`codigoPostal`),
  CONSTRAINT `fk_agrupación_modalidad` FOREIGN KEY (`modalidad`) REFERENCES `modalidad` (`idMod`)
);

LOCK TABLES `agrupacion` WRITE;
INSERT INTO `agrupacion` VALUES (1,'La Salaita','Volaera','COM','51001','Óscar Olmo','Óscar Olmo'),(2,'Los Primeros','No se conoce','CHI','51001','Rafael Pérez','Rafael Pérez'),(3,'Ya echaba de menos la calle','COVID','CHI','51001','La agrupación','Paco Pino'),(4,'Los Olvidaos','Transfronterizos','COM','51001','Alfredo Luque','Francis Sánchez'),(5,'Losdelreinoalagüita','','CHI','51001','Pedrito Sánchez','Pedrito Sánchez'),(6,'Los Indispensables','','COM','18001','Juan Miguel Armuña','Pablo García'),(7,'Ahora no me acuerdo del nombre','','CHI','11201','Agustín Carlos González','Francisco García'),(8,'La Conquista del Pan','','COM','51001','José Miguel Romero','Alfredo Luque'),(9,'Me cago en to','','CHI','51001','Agrupación','Paco Pino'),(10,'Qué nos quiten lo bailao','','CHI','51001','Juan Antonio Rodríguez','Diego Barreno'),(11,'Los sedientos','','COM','11380','Cristian Triviño','Juan Cádiz'),(12,'Este año no hemo estao polque no nos hemos entelao','','CHI','51001','Rafael Pérez','Rafael Pérez'),(13,'Los Camarones','','COM','51001','Alfonso Pérez','Óscar Olmo'),(14,'Los Tiraos','','CHI','51001','Antonio Jiménez','Lolo Alonso'),(15,'Los Llanitos','Gibraltar','CHI','51001','Valeriano Hoyos','Tote');
UNLOCK TABLES;

DROP TABLE IF EXISTS `concurso`;
CREATE TABLE `concurso` (
  `concurso` tinyint NOT NULL AUTO_INCREMENT,
  `fechaInicio` date NOT NULL,
  `fechaFin` date NOT NULL,
  `teatro` varchar(45) NOT NULL,
  `presentador` varchar(95) NOT NULL,
  PRIMARY KEY (`concurso`)
);

LOCK TABLES `concurso` WRITE;
INSERT INTO `concurso` VALUES (1,'2022-02-26','2022-02-26','Teatro del Revellín','Bernabé Sánchez'),(2,'2023-02-18','2023-02-18','Teatro del Revellín','Bernabé Sánchez');
UNLOCK TABLES;

DROP TABLE IF EXISTS `fase`;
CREATE TABLE `fase` (
  `fase` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `concurso` tinyint NOT NULL,
  PRIMARY KEY (`fase`),
  KEY `fk_fase_concurso1_idx` (`concurso`),
  CONSTRAINT `fk_fase_concurso1` FOREIGN KEY (`concurso`) REFERENCES `concurso` (`concurso`)
);

LOCK TABLES `fase` WRITE;
INSERT INTO `fase` VALUES (1,'Final',1),(2,'Final',2),(3,'Copla a Ceuta',2);
UNLOCK TABLES;

DROP TABLE IF EXISTS `tipoPieza`;
CREATE TABLE `tipoPieza` (
  `tipoPieza` char(3) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`tipoPieza`)
);

LOCK TABLES `tipoPieza` WRITE;
INSERT INTO `tipoPieza` VALUES ('CUP','Cuplé'),('EST','Estribillo'),('LIB','Tema Libre'),('PAS','Pasodoble'),('POE','Poesía'),('POP','Popurrí'),('PRE','Presentación'),('TAN','Tango');
UNLOCK TABLES;

DROP TABLE IF EXISTS `pieza`;
CREATE TABLE `pieza` (
  `pieza` int NOT NULL AUTO_INCREMENT,
  `tema` varchar(45) DEFAULT NULL,
  `letra` varchar(45) DEFAULT NULL,
  `tipoPieza` char(3) NOT NULL,
  `agrupacion` int NOT NULL,
  PRIMARY KEY (`pieza`),
  KEY `fk_pieza_tipoPieza1_idx` (`tipoPieza`),
  KEY `fk_pieza_agrupacion1_idx` (`agrupacion`),
  CONSTRAINT `fk_pieza_agrupacion1` FOREIGN KEY (`agrupacion`) REFERENCES `agrupacion` (`agrupacion`),
  CONSTRAINT `fk_pieza_tipoPieza1` FOREIGN KEY (`tipoPieza`) REFERENCES `tipoPieza` (`tipoPieza`)
);

LOCK TABLES `pieza` WRITE;
INSERT INTO `pieza` VALUES (1,'Mixto','','PRE',1),(2,'Política',NULL,'PAS',1),(3,'Religión','','PAS',1),(4,'Apagones',NULL,'CUP',1),(5,'Feria',NULL,'CUP',1),(6,'Al tipo','','EST',1),(7,'Mixto','','POP',1),(8,'Mixto','','PRE',2),(9,'Ceuta','','PAS',2),(10,'Juan Vivas','','PAS',2),(11,'Poliamor','','CUP',2),(12,'Turismo','','CUP',2),(13,'Amor','','EST',2),(14,'Mixto',NULL,'POP',2),(15,'Al tipo','','PRE',3),(16,'Ceuta','','PAS',3),(17,'Carnaval','','PAS',3),(18,'Selu','','CUP',3),(19,'Ayuntamiento','','CUP',3),(20,'COVID','','EST',3),(21,'Mixto','','POP',3),(22,'Mixto','','PRE',4),(23,'Críticas','','PAS',4),(24,'Sanidad','','PAS',4),(25,'Ceuta','','CUP',4),(26,'COVID','','CUP',4),(27,'Al tipo','','EST',4),(28,'Mixto','','POP',4);
UNLOCK TABLES;

DROP TABLE IF EXISTS `puntuaciones`;
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
  CONSTRAINT `fk_agrupación_has_letra_letra1` FOREIGN KEY (`pieza`) REFERENCES `pieza` (`pieza`),
  CONSTRAINT `fk_puntuaciones_fase1` FOREIGN KEY (`fase`) REFERENCES `fase` (`fase`)
);

LOCK TABLES `puntuaciones` WRITE;
INSERT INTO `puntuaciones` VALUES (1,1,9,4,8,5),(2,1,8,9,9,9),(3,1,7,8,6,8),(4,1,4,9,9,10),(5,1,8,9,10,1),(6,1,9,8,9,8),(7,1,9,4,8,5),(8,1,4,5,4,5),(9,1,8,4,9,9),(10,1,6,6,6,6),(11,1,9,9,9,10),(12,1,8,9,3,1),(13,1,9,9,9,9),(14,1,8,9,3,4),(15,1,9,9,5,9),(16,1,7,9,9,9),(17,1,9,9,9,9),(18,1,5,6,6,7),(19,1,9,8,7,6),(20,1,7,8,9,9),(21,1,10,10,10,10);
UNLOCK TABLES;
