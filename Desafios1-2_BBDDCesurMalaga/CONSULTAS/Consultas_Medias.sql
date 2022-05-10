------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripcion : CONSULTAS MEDIAS
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------


-- Jugadores con goles entre 1 y 5 ordenados descendentemente.

SELECT NOMBRE AS "Jugadores con goles entre 1 y 5 ordenados por orden descendente" FROM JUGADOR
WHERE G_ANOTADOS BETWEEN 1 AND 5
GROUP BY NOMBRE 
ORDER BY NOMBRE DESC;


-- Jugadores con dorsal mayor que 6 y el nombre contenga la "r".

SELECT NOMBRE  AS "Jugadores con Dorsal mayor que 6 y que contengan la r", ID_EQUIPO AS "EQUIPO" FROM JUGADOR
WHERE DORSAL > 6 AND NOMBRE LIKE '%r%'
ORDER BY ID_EQUIPO ASC;


-- Suma de los Goles del Malaga F.C.

SELECT ID_EQUIPO AS "Nombre Equipo", SUM(G_ANOTADOS) AS "Suma de goles anotados del equipo Malaga F.C." FROM JUGADOR
WHERE ID_EQUIPO LIKE 'Malaga F.C.'
GROUP BY ID_EQUIPO;


-- Nombre del Jugador, nombre equipo y partidos jugados unidos mediante concatenacion.

SELECT NOMBRE AS "Nombre Jugador", ID_EQUIPO AS "Nombre Equipo", CONCAT('Partidos jugados ', P_JUGADOS) AS "Partidos Jugados" FROM JUGADOR
WHERE P_JUGADOS > 25
ORDER BY ID_EQUIPO;