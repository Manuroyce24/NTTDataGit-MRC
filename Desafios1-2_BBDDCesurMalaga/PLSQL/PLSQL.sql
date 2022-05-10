DECLARE
    CURSOR goleadores IS SELECT NOMBRE, G_ANOTADOS AS NGOLES FROM JUGADOR; 
BEGIN
    FOR goleador IN goleadores LOOP
        IF (goleador.ngoles > 10) then
            DBMS_OUTPUT.PUT_LINE('Nombre: ' || goleador.nombre || ' Numero goles: ' || goleador.ngoles);
        END IF;
    END LOOP;
END;