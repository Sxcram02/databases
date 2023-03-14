-- MySQL Script generated by MySQL Workbench
-- dom 16 ene 2022 20:13:46
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema tallerReparaciones
-- -----------------------------------------------------
-- Base de Datos para una tienda de reparaciones de material informático.
DROP SCHEMA IF EXISTS `tallerReparaciones` ;

-- -----------------------------------------------------
-- Schema tallerReparaciones
--
-- Base de Datos para una tienda de reparaciones de material informático.
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `tallerReparaciones` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci ;
USE `tallerReparaciones` ;

-- -----------------------------------------------------
-- Table `tallerReparaciones`.`proveedor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tallerReparaciones`.`proveedor` ;

CREATE TABLE IF NOT EXISTS `tallerReparaciones`.`proveedor` (
  `idProveedor` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProveedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_swedish_ci
COMMENT = 'Proveedores de productos informáticos.';


-- -----------------------------------------------------
-- Table `tallerReparaciones`.`material`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tallerReparaciones`.`material` ;

CREATE TABLE IF NOT EXISTS `tallerReparaciones`.`material` (
  `idMaterial` INT UNSIGNED NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `precio` DOUBLE UNSIGNED NOT NULL,
  `IdProveedor` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idMaterial`),
    FOREIGN KEY (`IdProveedor`)
    REFERENCES `tallerReparaciones`.`proveedor` (`idProveedor`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO proveedor VALUES(1, 'BenQ');
INSERT INTO proveedor VALUES(2, 'Logitech');
INSERT INTO proveedor VALUES(3, 'Lacie');
INSERT INTO proveedor VALUES(4, 'Intel');
INSERT INTO proveedor VALUES(5, 'Kyocera');
INSERT INTO proveedor VALUES(6, 'Panda');
INSERT INTO proveedor VALUES(7, 'Microsoft');
INSERT INTO proveedor VALUES(8, 'Linksys');
INSERT INTO proveedor VALUES(9, 'AMD');

INSERT INTO material VALUES(1, 'Disco Duro 2TB portable', 120.99, 3);
INSERT INTO material VALUES(2, 'Procesador i5', 99.99, 4);
INSERT INTO material VALUES(3, 'Antivirus 3.0', 60, 6);
INSERT INTO material VALUES(4, 'Firewall Online 2.0', 200, 6);
INSERT INTO material VALUES(5, 'Monitor 32', 300.99, 1);
INSERT INTO material VALUES(6, 'Impresora Laser', 181, 5);
INSERT INTO material VALUES(7, 'Ratón Óptico', 30, 2);
INSERT INTO material VALUES(8, 'Monitor 24', 199, 1);
INSERT INTO material VALUES(9, 'Teclado', 15, 2);
INSERT INTO material VALUES(10, 'Disco Duro SSD 500GB', 60, 3);
INSERT INTO material VALUES(11, 'Licencia Windows 10', 90, 7);