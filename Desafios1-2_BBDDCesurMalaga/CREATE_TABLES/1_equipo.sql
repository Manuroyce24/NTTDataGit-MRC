------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripción : Create Table - Equipo
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------


CREATE TABLE Equipo (

    ID_Equipo VARCHAR(15) CONSTRAINT PK_Equipo PRIMARY KEY,
    Ciudad VARCHAR(20) NOT NULL,
    Clasificacion int NOT NULL
    
);

COMMIT;