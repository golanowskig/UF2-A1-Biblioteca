--Que libros se tendran que avisar el dia 25 de su prestamo--

USE Biblioteca
SELECT Préstamos.Préstamo_ID, Préstamos.Libro_ID, Préstamos.Socio_ID, Préstamos.Fecha_retiro, Préstamos.Fecha_devolución FROM [Biblioteca].dbo.Préstamos
	INNER JOIN Socios AS S ON Préstamos.Socio_ID = S.Socio_ID
	INNER JOIN Libros AS L ON Préstamos.Libro_ID = L.Libro_ID
WHERE Préstamos.Fecha_devolución IS NULL
AND Préstamos.Fecha_retiro <= DATEADD(DAY, 25, GETDATE());

