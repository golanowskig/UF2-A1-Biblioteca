--Que libros se tendran que avisar el dia 25 de su prestamo--

USE Biblioteca
SELECT Pr�stamos.Pr�stamo_ID, Pr�stamos.Libro_ID, Pr�stamos.Socio_ID, Pr�stamos.Fecha_retiro, Pr�stamos.Fecha_devoluci�n FROM [Biblioteca].dbo.Pr�stamos
	INNER JOIN Socios AS S ON Pr�stamos.Socio_ID = S.Socio_ID
	INNER JOIN Libros AS L ON Pr�stamos.Libro_ID = L.Libro_ID
WHERE Pr�stamos.Fecha_devoluci�n IS NULL
AND Pr�stamos.Fecha_retiro <= DATEADD(DAY, 25, GETDATE());

