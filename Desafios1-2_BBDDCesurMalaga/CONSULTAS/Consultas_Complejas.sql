------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripcion : CONSULTAS COMPLEJAS
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------


-- Nombre del entrenador, nombre del jugador con mas goles anotados y nombre del equipo.

SELECT E.NOMBRE AS "Nombre entrenador", J.NOMBRE AS "Nombre del jugador con mas goles anotados", EQ.ID_EQUIPO AS "Nombre del Equipo" FROM ENTRENADOR E
INNER JOIN EQUIPO EQ ON EQ.ID_EQUIPO = E.ID_EQUIPO
INNER JOIN JUGADOR J ON J.ID_EQUIPO = EQ.ID_EQUIPO
WHERE J.G_ANOTADOS = (SELECT MAX(G_ANOTADOS) FROM JUGADOR);


-- Fecha de un partido con mas de un gol anotado.

SELECT p.fecha AS "Fecha" FROM PARTIDO P
INNER JOIN JUEGA J ON P.ID_PARTIDO = J.ID_PARTIDO
WHERE J.GOLES > 0 AND J.ESVISITANTE = 1;


-- Nombre periodico a partir de una reseña de un jugador.

SELECT P.NOMBRE AS "Nombre periodico donde el jugador tiene una resena" FROM PERIODICO P
INNER JOIN RESENA R ON P.ID_PERIODICO = R.ID_PERIODICO
WHERE R.ID_JUGADOR = '00000007A';


-- Equipos que no tienen jugadores.

SELECT EQ.ID_EQUIPO AS "Nombre equipo" FROM EQUIPO EQ
LEFT JOIN JUGADOR J ON EQ.ID_EQUIPO = J.ID_EQUIPO WHERE J.ID_EQUIPO IS NULL;


-- Equipos con sus jugadores (alternativa a la anterior)

SELECT EQ.ID_EQUIPO AS "Nombre equipo", J.NOMBRE AS "Nombre jugador" FROM EQUIPO EQ
RIGHT JOIN JUGADOR J ON EQ.ID_EQUIPO = J.ID_EQUIPO;