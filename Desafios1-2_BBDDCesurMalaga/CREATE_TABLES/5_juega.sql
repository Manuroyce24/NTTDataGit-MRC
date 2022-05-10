------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripción : Create Table - Equipo
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------

CREATE TABLE Juega (

    ID_Partido VARCHAR(30) NOT NULL,
    ID_Equipo VARCHAR(30) NOT NULL,
    EsVisitante INT CHECK (EsVisitante BETWEEN 0 and 1) NOT NULL,
    Goles INT NOT NULL,
    
    CONSTRAINT FK_ID_EQUIPO_JUEGA FOREIGN KEY (ID_EQUIPO) REFERENCES EQUIPO(ID_EQUIPO),
    CONSTRAINT FK_ID_PARTIDO_JUEGA FOREIGN KEY (ID_PARTIDO) REFERENCES PARTIDO(ID_PARTIDO)
    
);

COMMIT;