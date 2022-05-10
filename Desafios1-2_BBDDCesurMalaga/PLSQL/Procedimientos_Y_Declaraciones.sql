-- Creacion de procedimiento de eliminacion de datos
 
CREATE OR REPLACE
    PROCEDURE elimina 
    IS
    BEGIN
        DELETE FROM JUGADOR WHERE ID_JUGADOR = '00000001B';
END elimina;


-- Creacion de procedimiento de actualizacion de datos
 
CREATE OR REPLACE PROCEDURE actualizarGolesJugador(nombreJugador VARCHAR)
IS 
BEGIN
    UPDATE JUGADOR
        SET G_ANOTADOS = 2 WHERE NOMBRE LIKE nombreJugador;
END actualizarGolesJugador;


-- Creacion del procedimiento de insercion de datos

CREATE OR REPLACE PROCEDURE  JUGADOR_INSERT
(
    PIDJUG JUGADOR.ID_JUGADOR%TYPE,
    PNOMBRE JUGADOR.NOMBRE%TYPE,
    PAPELLIDO JUGADOR.APELLIDO%TYPE,
    PIDEQUIP JUGADOR.ID_EQUIPO%TYPE,
    PDORSAL JUGADOR.DORSAL%TYPE,
    PPJUG JUGADOR.P_JUGADOS%TYPE,
    PGANOT JUGADOR.G_ANOTADOS%TYPE
)
AS
BEGIN

    INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS)
    VALUES (PIDJUG, PNOMBRE, PAPELLIDO, PIDEQUIP, PDORSAL, PPJUG, PGANOT);

END JUGADOR_INSERT;


-----------------------------------------------------------------------------------------------------


-- Creacion de la declaración de eliminacion de datos

DECLARE
BEGIN
elimina();
END;


-- Creacion de la declaración de actualizacion de datos

DECLARE
    CURSOR jugadores IS SELECT NOMBRE FROM JUGADOR WHERE ID_JUGADOR LIKE '00000011A';
BEGIN
    FOR jugador IN jugadores LOOP
        actualizarGolesJugador(jugador.NOMBRE);
    END LOOP;
END;


-- Creacion de la declaración de insercion de datos

DECLARE 
BEGIN
JUGADOR_INSERT('00000001B', 'Darwin', 'Machis', 'Malaga F.C.', '1', '31', '17');
END;