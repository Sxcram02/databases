-- SQL1
SELECT a.nombreA, g.nombreGrupo
FROM alumnado a, grupo g;

-- SQL2
SELECT a.nombreA, g.nombreGrupo
FROM alumnado a
CROSS JOIN grupo g;


