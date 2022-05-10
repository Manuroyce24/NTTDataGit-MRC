------------------------------------------------------
-- Autor       : CESUR MALAGA         
-- Descripcion : Create Table - Equipo
-- Responsable : Juan Alejandro Tellez Rubio
-- Alumno 1    : Manuel Recio Claros
-- Alumno 2    : Alvaro Gonzalez Rando
-- Alumno 3    : Alejandro Rebola Casquero
-- Alumno 4    : David Navarro Fajardo
------------------------------------------------------

DROP TABLE RESENA;
DROP TABLE PERIODICO;
DROP TABLE JUEGA;
DROP TABLE PARTIDO;
DROP TABLE ENTRENADOR;
DROP TABLE JUGADOR;
DROP TABLE EQUIPO;

CREATE TABLE Equipo (

    ID_Equipo VARCHAR(30) CONSTRAINT PK_Equipo PRIMARY KEY,
    Ciudad VARCHAR(30) NOT NULL,
    Clasificacion int NOT NULL
    
);

INSERT INTO EQUIPO (ID_EQUIPO, CIUDAD, CLASIFICACION) VALUES ('Malaga F.C.', 'Malaga', '1');
INSERT INTO EQUIPO (ID_EQUIPO, CIUDAD, CLASIFICACION) VALUES ('Granada F.C.', 'Granada', '2');
INSERT INTO EQUIPO (ID_EQUIPO, CIUDAD, CLASIFICACION) VALUES ('Sevilla F.C.', 'Sevilla', '3');
INSERT INTO EQUIPO (ID_EQUIPO, CIUDAD, CLASIFICACION) VALUES ('Real Betis Balompie', 'Sevilla', '4');




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

INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000001A', 'Antonin', 'Cortes', 'Malaga F.C.', '1', '36', '9');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000002A', 'Aleixs', 'Febas', 'Malaga F.C.', '2', '36', '7');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000003A', 'Alvaro', 'Vadillo', 'Malaga F.C.', '3', '36', '3');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000004A', 'Ramon', 'Enriquez', 'Malaga F.C.', '4', '36', '4');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000005A', 'Genaro', 'Rodriguez', 'Malaga F.C.', '5', '36', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000006A', 'Jozabed', 'Sanchez', 'Malaga F.C.', '6', '36', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000007A', 'Alberto', 'Escassi', 'Malaga F.C.', '7', '36', '1');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000008A', 'Victor', 'Gomez', 'Malaga F.C.', '8', '36', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000009A', 'Mathieu', 'Peybernes', 'Malaga F.C.', '9', '36', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000010A', 'Javi', 'Jimenez', 'Malaga F.C.', '10', '36', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000011A', 'Dani', 'Martin', 'Malaga F.C.', '11', '36', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000001B', 'Darwin', 'Machis', 'Granada F.C.', '1', '31', '17');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000002B', 'Luis', 'Suarez', 'Granada F.C.', '2', '31', '11');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000003B', 'Yan Brice', 'Eteki', 'Granada F.C.', '3', '31', '3');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000004B', 'Njegos', 'Petrovic', 'Granada F.C.', '4', '31', '6');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000005B', 'Luis', 'Milla', 'Granada F.C.', '5', '31', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000006B', 'Sergio', 'Escudero', 'Granada F.C.', '6', '31', '1');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000007B', 'Domingos', 'Duarte', 'Granada F.C.', '7', '31', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000008B', 'Victor', 'Diaz', 'Granada F.C.', '8', '31', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000009B', 'Myrto', 'Uzuni', 'Granada F.C.', '9', '31', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000010B', 'Raul', 'Torrente', 'Granada F.C.', '10', '31', '0');
INSERT INTO JUGADOR (ID_JUGADOR, NOMBRE, APELLIDO, ID_EQUIPO, DORSAL, P_JUGADOS, G_ANOTADOS) VALUES ('00000011B', 'Luis', 'Maximiliano', 'Granada F.C.', '11', '31', '0');

CREATE TABLE Entrenador (

    ID_Entrenador VARCHAR(30) CONSTRAINT PK_Entrenador PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    ID_Equipo VARCHAR(30) NOT NULL,
    
    CONSTRAINT FK_ID_EQUIPO_ENT FOREIGN KEY (ID_EQUIPO) REFERENCES EQUIPO(ID_EQUIPO)
    
);

INSERT INTO ENTRENADOR (ID_ENTRENADOR, NOMBRE, APELLIDO, ID_EQUIPO) VALUES ('90000000A', 'Gaizka', 'Garitano', 'Malaga F.C.');
INSERT INTO ENTRENADOR (ID_ENTRENADOR, NOMBRE, APELLIDO, ID_EQUIPO) VALUES ('90000000B', 'Ruben', 'Torrecilla', 'Granada F.C.');

CREATE TABLE Partido (

    ID_Partido VARCHAR(30) CONSTRAINT PK_Partido PRIMARY KEY,
    Fecha DATE NOT NULL
    
);

INSERT INTO PARTIDO (ID_PARTIDO, fecha) VALUES ('PARTIDO_JORNADA_1', '13-MAY-22');

CREATE TABLE Juega (

    ID_Partido VARCHAR(30) NOT NULL,
    ID_Equipo VARCHAR(30) NOT NULL,
    EsVisitante INT CHECK (EsVisitante BETWEEN 0 and 1) NOT NULL,
    Goles INT NOT NULL,
    
    CONSTRAINT FK_ID_EQUIPO_JUEGA FOREIGN KEY (ID_EQUIPO) REFERENCES EQUIPO(ID_EQUIPO),
    CONSTRAINT FK_ID_PARTIDO_JUEGA FOREIGN KEY (ID_PARTIDO) REFERENCES PARTIDO(ID_PARTIDO)
    
);

INSERT INTO JUEGA (ID_PARTIDO, ID_Equipo, EsVisitante, Goles) VALUES ('PARTIDO_JORNADA_1', 'Malaga F.C.', 0, 2);
INSERT INTO JUEGA (ID_PARTIDO, ID_Equipo, EsVisitante, Goles) VALUES ('PARTIDO_JORNADA_1', 'Granada F.C.', 1, 1);

CREATE TABLE Periodico (

    ID_Periodico VARCHAR(30) CONSTRAINT PK_Periodico PRIMARY KEY,
    Nombre VARCHAR(30) NOT NULL
    
);

INSERT INTO PERIODICO (ID_PERIODICO, NOMBRE) VALUES ('PERIODICO_DEPORTIVO_1', 'EL CHIRINGUITO DE CESUR');

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

INSERT INTO RESENA (ID_RESENA, ID_PERIODICO, ID_JUGADOR, ID_PARTIDO, FECHA_PUBLICACION) VALUES ('RESENA_DEPORTIVA_1', 'PERIODICO_DEPORTIVO_1', '00000007A', 'PARTIDO_JORNADA_1', '14-MAY-22');

COMMIT;