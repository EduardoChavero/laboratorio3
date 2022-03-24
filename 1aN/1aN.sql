CREATE DATABASE 1AN
GO

USE 1AN
GO

CREATE TABLE Equipo(
	IDEQUIPO BIGINT PRIMARY KEY IDENTITY(1,1),
	Nombre varchar(40) not null,
	cantJugadores bigint not null
)
GO

CREATE TABLE Jugador(
	IDJugador BIGINT Primary key identity(1,1),
	Apenom varchar(40) not null,
	edad bigint null,
	IDEquipo Bigint not null Foreign key REFERENCES Equipo(IDEQUIPO),
	altura bigint null,
)
GO

