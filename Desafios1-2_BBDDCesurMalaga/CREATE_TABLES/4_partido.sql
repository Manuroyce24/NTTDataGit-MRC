------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripción : Create Table - Equipo
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------

CREATE TABLE Partido (

    ID_Partido VARCHAR(30) CONSTRAINT PK_Partido PRIMARY KEY,
    Fecha DATE NOT NULL
    
);

COMMIT;