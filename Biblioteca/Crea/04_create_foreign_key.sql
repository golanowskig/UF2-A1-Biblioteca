--Relaciones Foreign Key--

USE Biblioteca
ALTER TABLE Libros
ADD CONSTRAINT FK_Autor
FOREIGN KEY (Autor_ID) REFERENCES Autores(Autor_ID);

USE Biblioteca
ALTER TABLE Préstamos
ADD CONSTRAINT FK_Libro
FOREIGN KEY (Libro_ID) REFERENCES Libros(Libro_ID);

USE Biblioteca
ALTER TABLE Préstamos
ADD CONSTRAINT FK_Socio
FOREIGN KEY (Socio_ID) REFERENCES Socios(Socio_ID);
