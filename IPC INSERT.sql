INSERT INTO turno (nombreTurno, HoraInicio) VALUES ("Mañana", "08:00:00"), ("Tarde", "15:30:00");
INSERT INTO grupo VALUES ("1DAW", "1º Desarrollo Aplicaciones Web", 1, 25), ("2DAW", "2º Desarrollo Aplicaciones Web", 1, 20), ("1SMM", "1º Sistemas Microinformáticos y Redes", 1, 30), ("2SMM", "2º Sistemas Microinformáticos y Redes", 1, 25), ("1SMT", "1º Sistemas Microinformáticos y Redes", 2, 30), ("2SMT", "2º Sistemas Microinformáticos y Redes", 2, 25), ("1ASI", "1º Administración de Sistemas Informáticos en Red", 2, 25), ("2ASI", "2º Administración de Sistemas Informáticos en Red", 2, 20);
INSERT INTO alumnado VALUES (1, 'María', 'Sánchez', 'Pérez', '1990/12/01', 'no', "maria@ipc.es", "1DAW");
INSERT INTO alumnado VALUES (2, 'Juan', 'Sáez', 'Vega', '1998/04/02', 'no', "juan@ipc.es", "2DAW");
INSERT INTO alumnado VALUES (3, 'Pepe', 'Ramírez', 'Gea', '1988/01/03', 'no', NULL, "1DAW");
INSERT INTO alumnado VALUES (4, 'Lucía', 'Sánchez', 'Ortega', '1993/06/13', 'sí', "lucia@ipc.es", "1SMM");
INSERT INTO alumnado VALUES (5, 'Paco', 'Martínez', 'López', '1995/11/24', 'no', "paco@ipc.es", "2SMM");
INSERT INTO alumnado VALUES (6, 'Irene', 'Gutiérrez', 'Sánchez', '1991/03/28', 'sí', NULL, "1SMM");
INSERT INTO alumnado VALUES (7, 'Cristina', 'Fernández', 'Ramírez', '1996/09/17', 'no', "cris@ipc.es", "1ASI");
INSERT INTO alumnado VALUES (8, 'Antonio', 'Carretero', 'Ortega', '1994/05/20', 'sí', "antonio@ipc.es", "2ASI");
INSERT INTO alumnado VALUES (9, 'Manuel', 'Domínguez', 'Hernández', '1999/07/08', 'no', NULL, "1SMT");
INSERT INTO alumnado VALUES (10, 'Daniel', 'Moreno', 'Ruiz', '1998/02/03', 'no', NULL, "2SMT");
