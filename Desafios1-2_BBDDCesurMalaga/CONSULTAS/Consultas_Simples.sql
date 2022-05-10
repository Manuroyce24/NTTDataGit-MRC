------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripcion : CONSULTAS SIMPLES
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------


-- Muestra jugadores del Malaga.

SELECT NOMBRE AS "Jugadores del Malaga" FROM JUGADOR
WHERE ID_EQUIPO = 'Malaga F.C.'; 


-- Muestra jugadores del Granada.

SELECT NOMBRE AS "Jugadores del Granada con mas de 3 Goles" FROM JUGADOR
WHERE ID_EQUIPO = 'Granada F.C.'
AND G_ANOTADOS > 3;


-- Media de goles del Malaga F.C.

SELECT ROUND(AVG(G_ANOTADOS), 2) AS "Media Goles del Malaga F.C." FROM JUGADOR
WHERE ID_EQUIPO = 'Malaga F.C.';


-- Nombre del entrenador que comienza por G y su apellido.

SELECT NOMBRE AS "Nombre del entrenador que comienza por G", APELLIDO AS "Apellido del entrenador" FROM ENTRENADOR
WHERE NOMBRE LIKE 'G%';


-- Cuantas resenas hay sobre el jugador 00000007A.

SELECT COUNT(ID_JUGADOR) AS "Numero de resenas del jugador con ID 00000007A" FROM RESENA
WHERE ID_JUGADOR = '00000007A';


-- Jugador con mas goles.

SELECT MAX(G_ANOTADOS) AS "Goles maximos anotados por un jugador" FROM JUGADOR;