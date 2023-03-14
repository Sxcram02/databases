        SELECT CONCAT_WS(" ", nombreVig, ap1, ap2) AS nombreCompleto
        FROM vigilante
        WHERE sueldo >= 1000;

        SELECT * 
        FROM fortin 
        WHERE vigilante_dni IN ("57201239H", "78588971R", "50328186U");

        SELECT *
        FROM fortin
        WHERE vigilante_dni LIKE "57201239H" OR vigilante_dni LIKE "78588971R" OR vigilante_dni LIKE "50328186U";

        SELECT *
        FROM fortin
        WHERE altura >=15 AND altura <=20;

        SELECT *
        FROM fortin
        WHERE altura BETWEEN 15 AND 20;

        SELECT *
        FROM fortin
        WHERE altura BETWEEN 15 AND 35 AND capacidad BETWEEN 10 AND 15;

        SELECT *
        FROM fortin
        WHERE altura >=15 AND altura <=35 AND capacidad >=10 AND capacidad <=15;

        SELECT nombreVig 
        FROM vigilante
        WHERE dni IN ("A") AND ap2 IS NULL;

        INSERT INTO vigilante VALUES ("09062420Y", "Amelio", "Dominguez", NULL, "1990-01-03", "4343364325612", "sandiego@outlook.com", "1400", "34");

        SELECT *
        FROM vigilante
        WHERE ap2 IS NULL;

        SELECT *
        FROM vigilante
        WHERE nombreVig IN ("Oleg", "Alice", "Gage", "Kaitlin", "Brynn", "Francis", "Luke") AND fechaNacimiento BETWEEN "1930-01-01" AND "1950-01-01";