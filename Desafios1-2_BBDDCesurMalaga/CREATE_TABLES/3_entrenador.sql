------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripción : Create Table - Equipo
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------

CREATE TABLE Entrenador (

    ID_Entrenador VARCHAR(30) CONSTRAINT PK_Entrenador PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    ID_Equipo VARCHAR(30) NOT NULL,
    
    CONSTRAINT FK_ID_EQUIPO_ENT FOREIGN KEY (ID_EQUIPO) REFERENCES EQUIPO(ID_EQUIPO)
    
);

COMMIT;