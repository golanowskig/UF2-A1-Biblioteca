--Crea tabla libros--

USE Biblioteca
CREATE TABLE Libros
(
	Libro_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	T�tulo VARCHAR(50) NOT NULL,
	Autor VARCHAR(50) NOT NULL,
	Fecha_edicion DATE NOT NULL
	CONSTRAINT const_fecha_edicion CHECK (Fecha_edicion BETWEEN '1900-01-01' AND '1940-12-31')
);

--Crea tabla socios--

USE Biblioteca
CREATE TABLE Socios
(
	Socio_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Nombre VARCHAR (20) NOT NULL,
	Telefono VARCHAR (15) NOT NULL, 
	Mail VARCHAR (50), 
	CONSTRAINT const_mail CHECK (Mail like '%@%.%'),
	Fecha_alta DATE NOT NULL,
);

--Crea tabla Pr�stamos--

USE Biblioteca
CREATE TABLE Pr�stamos
(
	Pr�stamo_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Libro_ID INT NOT NULL,
	Socio_ID INT NOT NULL,
	Fecha_retiro DATE NOT NULL,
	Fecha_devoluci�n DATE,
	CONSTRAINT cont_fecha_devolucion CHECK (Fecha_devoluci�n IS NOT NULL OR Fecha_Devoluci�n > Fecha_retiro)
);


