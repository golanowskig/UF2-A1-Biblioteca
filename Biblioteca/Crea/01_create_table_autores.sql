--Crear tabla autores--

USE Biblioteca
CREATE TABLE Autores
(
	Autor_ID TINYINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Autor_name VARCHAR (25) NOT NULL
);

