--Consulta para consultar los libros prestados--

SELECT * FROM Biblioteca.dbo.Préstamos
WHERE Fecha_Retiro IS NOT NULL AND Fecha_Devolución IS NULL