--Consulta para consultar los libros prestados--

SELECT * FROM Biblioteca.dbo.Pr�stamos
WHERE Fecha_Retiro IS NOT NULL AND Fecha_Devoluci�n IS NULL