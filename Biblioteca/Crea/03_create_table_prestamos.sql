--Crea tabla Préstamos--

USE Biblioteca
CREATE TABLE Préstamos
(
	Préstamo_ID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Libro_ID INT NOT NULL,
	Socio_ID INT NOT NULL,
	Fecha_retiro DATE NOT NULL,
	Fecha_devolución DATE,
	CONSTRAINT cont_fecha_devolucion CHECK (Fecha_devolución IS NOT NULL OR Fecha_Devolución > Fecha_retiro)
);
