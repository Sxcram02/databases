-- SQL1
SELECT a.nombreA, g.nombreGrupo
FROM alumnado a, grupo g 
WHERE a.grupo = g.id;

-- SQL2
SELECT a.nombreA, g.nombreGrupo
FROM alumnado a
INNER JOIN grupo g ON a.grupo = g.id


-- SQL2
SELECT a.nombreA, g.nombreGrupo
FROM alumnado a
JOIN grupo g ON a.grupo = g.id;

-- SQL2 
-- La clave primaria tiene que denominarse igual que la clave foránea. En este caso no va a funcionar porque son diferentes, podrían modificarse.
SELECT a.nombreA, g.nombreGrupo
FROM alumnado a
NATURAL JOIN grupo g;

-- SQL2 Tres tablas
SELECT a.nombreA, g.nombreGrupo, t.nombreTurno
FROM alumnado a
JOIN grupo g ON a.grupo = g.id
JOIN turno t ON g.turno = t.id;