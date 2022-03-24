/*
	Relacion de 1 a 1
	Esto genera una tabla Persona y una tabla Cara, cada uno con sus referidos detalles, se relacionan 1 a 1 porque una persona puede tener una sola cara 
	y una cara pertenecer a una sola persona	
*/

CREATE DATABASE UnoaUno
GO
USE UnoaUno
GO
CREATE TABLE PERSONA(
    ID BIGINT PRIMARY KEY NOT NULL IDENTITY(1,1),
    DNI BIGINT UNIQUE NOT NULL,
    APENOM VARCHAR(40) NOT NULL,
    EDAD BIGINT
)
GO
CREATE TABLE CARA(
    IDPERSONA BIGINT PRIMARY KEY FOREIGN KEY REFERENCES PERSONA(ID),
    TIPONARIZ INT NOT NULL,
    COLOROJOS INT NOT NULL
)
GO
