/*
	Relacion Muchos A Muchos
	Esta query crea una base y tres tablas, la relacion se basa en que una persona puede tener muchas cuentas de bancos y ser clientes de muchos bancos como muchos bancos
	pueden tener muchas cuentas asociadas a personas y ser los prestadores de servicios de dichas personas

*/

CREATE DATABASE ACT1
go

USE ACT1
go

CREATE TABLE Clientes(
	dni BIGINT not null,
	nombre VARCHAR(100) not null,
	mail VARCHAR(150) null,
	telefono VARCHAR(20) null
)
go

CREATE TABLE Bancos(
	idBanco BIGINT IDENTITY(1, 1),
	nombre VARCHAR(50) not null,
	CUIT VARCHAR(25) not null
)
go

CREATE TABLE CuentasPersonaXBanco(
	idCuenta BIGINT IDENTITY(1, 1),
	idBanco BIGINT not null,
	dniCliente BIGINT not null,
	nroDeCuenta BIGINT not null,
	alias VARCHAR(20) null,
)

ALTER TABLE Clientes
add constraint PK_Clientes PRIMARY KEY(dni)

ALTER TABLE Bancos
add constraint PK_Bancos PRIMARY KEY(idBanco)

ALTER TABLE CuentasPersonaXBanco
add constraint PK_CuentasPersonaXBanco PRIMARY KEY(idCuenta)
ALTER TABLE CuentasPersonaXBanco
add constraint FK_dniCliente FOREIGN KEY(dniCliente) references Clientes (dni)
ALTER TABLE CuentasPersonaXBanco
add constraint FK_idBanco FOREIGN KEY(idBanco) references Bancos (idBanco)