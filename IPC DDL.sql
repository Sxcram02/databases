DROP DATABASE IF EXISTS iespuertasdelcampo;
CREATE DATABASE iespuertasdelcampo;
USE iespuertasdelcampo;

CREATE TABLE turno (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreTurno VARCHAR(100) NOT NULL,
  horaInicio TIME );

CREATE TABLE grupo (
  id CHAR(4) PRIMARY KEY,
  nombreGrupo VARCHAR(100) NOT NULL,
  turno INT UNSIGNED NOT NULL,
  maxEstudiantes INT NOT NULL,
  FOREIGN KEY (turno) REFERENCES turno(id) ON UPDATE CASCADE);

CREATE TABLE alumnado (
  expedienteA INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreA VARCHAR(100) NOT NULL,
  ap1 VARCHAR(99) NOT NULL,
  ap2 VARCHAR(99),
  fechaNacA DATE NOT NULL,
  repetidor ENUM('sí', 'no') NOT NULL,
  email VARCHAR(99),
  grupo CHAR(4),
  FOREIGN KEY (grupo) REFERENCES grupo(id) ON UPDATE CASCADE
);

