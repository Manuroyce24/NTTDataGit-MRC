------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripción : Create Table - Equipo
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------

CREATE TABLE Jugador (

    ID_Jugador VARCHAR(30) CONSTRAINT PK_Jugador PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    ID_Equipo VARCHAR(30) NOT NULL,
    Dorsal INT NOT NULL,
    P_Jugados INT NOT NULL,
    G_Anotados INT NOT NULL,
    CONSTRAINT FK_ID_EQUIPO_JUG FOREIGN KEY (ID_EQUIPO) REFERENCES EQUIPO(ID_EQUIPO)
    
);

COMMIT;