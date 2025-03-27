--Crea tabla socios--

USE Biblioteca
CREATE TABLE Socios
(
	Socio_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Nombre VARCHAR (20) NOT NULL,
	Dirección VARCHAR (100) NOT NULL,
	Telefono VARCHAR (15) NOT NULL, 
	Mail VARCHAR (50), 
	CONSTRAINT const_mail CHECK (Mail like '%@%.%'),
	Fecha_alta DATE NOT NULL,
);