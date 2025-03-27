--Consulta para consultar los libros que estan en la biblioteca--

USE Biblioteca
SELECT L.Libro_ID, L.Autor_ID, P.Fecha_Devoluci�n
FROM Biblioteca.dbo.Pr�stamos P
INNER JOIN Biblioteca.dbo.Libros L ON P.Libro_ID = L.Libro_ID
WHERE P.Fecha_Devoluci�n IS NOT NULL

UNION

SELECT D.Libro_ID, D.Autor_ID, NULL AS Fecha_Devoluci�n
FROM Biblioteca.dbo.Libros D
LEFT JOIN Biblioteca.dbo.Pr�stamos C ON D.Libro_ID = C.Libro_ID
WHERE C.Fecha_Retiro IS NULL;
