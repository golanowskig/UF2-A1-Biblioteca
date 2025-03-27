--Crea tabla libros--

USE Biblioteca
CREATE TABLE Libros
(
	Libro_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Título VARCHAR(50) NOT NULL,
	Autor_ID TINYINT NOT NULL,
	Fecha_edicion DATE NOT NULL
	CONSTRAINT const_fecha_edicion CHECK (Fecha_edicion BETWEEN '1900-01-01' AND '1940-12-31')
);
