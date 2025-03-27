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
