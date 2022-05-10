------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripción : Create Table - Equipo
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------


CREATE TABLE Resena (

    ID_Resena VARCHAR(30) CONSTRAINT PK_Resena PRIMARY KEY,
    ID_Periodico VARCHAR(30) NOT NULL,
    ID_Jugador VARCHAR(30) NOT NULL,
    ID_Partido VARCHAR(30) NOT NULL,
    Fecha_Publicacion DATE NOT NULL,
    
    CONSTRAINT FK_ID_PERIODICO_RESENA FOREIGN KEY (ID_PERIODICO) REFERENCES PERIODICO(ID_PERIODICO),
    CONSTRAINT FK_ID_JUGADOR_RESENA FOREIGN KEY (ID_JUGADOR) REFERENCES JUGADOR(ID_JUGADOR),
    CONSTRAINT FK_ID_PARTIDO_RESENA FOREIGN KEY (ID_PARTIDO) REFERENCES PARTIDO(ID_PARTIDO)
    
);

COMMIT;