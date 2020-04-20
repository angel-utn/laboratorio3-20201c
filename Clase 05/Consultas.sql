-- 1) Listar para cada autor el Apellido y el Nombre, el sexo, el IDPais y el nombre del país.
Select A.apellidos, A.nombres, A.sexo, P.nombre 
from Autores as A
inner join Paises AS P ON P.ID = A.IDPais

-- 2) Listar para cada usuario el Apellido y nombre, el sexo, 
-- el nombre del país de nacimiento y el nombre del tipo de usuario.

Select U.Apellidos, U.Nombres, U.Sexo, P.Nombre as Pais, TP.Nombre As Tipo, 
  DateDiff(Day, U.FechaReg, getdate())  As CantDias
From 
Usuarios as U
Inner Join Paises AS P ON P.ID = U.IDPais
Inner Join TiposUsuarios AS TP ON TP.ID = U.IDTipo

-- 3) Listar para cada libro el título, la cantidad de páginas, el precio y el nombre de la editorial. Sólo listar los libros que posean editorial registrada.
Select L.Titulo, L.Paginas, L.Precio, E.Nombre 
From Libros as L
Inner Join Editoriales AS E ON E.ID = L.IDEditorial

-- 4) Listar para cada libro el título, la cantidad de páginas, el precio y el nombre de la editorial. Listar todos los libros independientemente de si disponen editorial.
Select L.Titulo, L.Paginas, L.Precio, IsNull(E.Nombre, 'Sin editorial') AS NombreEditorial
From Libros as L
Left Join Editoriales as E ON E.ID = L.IDEditorial

-- 5) Listar para cada libro el título, la cantidad de páginas, el precio y el nombre de la editorial. Listar todas las editoriales independientemente de si disponen libros.
Select L.Titulo, L.Paginas, L.Precio, E.Nombre 
From Libros as L
Right Join Editoriales AS E ON E.ID = L.IDEditorial

Select L.Titulo, L.Paginas, L.Precio, E.Nombre 
From Libros as L
Full Join Editoriales AS E ON E.ID = L.IDEditorial

-- 6) Listar para cada libro el título, el año, el precio, la cantidad de páginas y el nombre de los géneros asociados al libro.

Select L.Titulo, L.Año, L.Precio, L.Paginas, G.Nombre as Genero 
from Libros AS L
Left Join Generos_x_Libro AS GXL ON L.ID = GXL.IDLibro
Left join Generos AS G ON G.ID = GXL.IDGenero

-- 7) Listar para cada libro el título, el año, el apellido y nombre del autor y el nombre del país del autor.
Select L.Titulo, L.Año, A.Apellidos + ', ' + A.Nombres As [Apellido y Nombres], P.Nombre as Pais
From Libros as L
Inner Join Autores_x_Libro as AXL ON L.ID = AXL.IDLibro
Inner join Autores as A ON A.ID = AXL.IDAutor
Inner Join Paises as P ON P.ID = A.IDPais

-- 8) Listar para cada usuario el apellido y nombres, el email, el tipo de usuario y el nombre del país, el sexo ('M' - Masculino, 'F' - Femenino, 'X' - Otro género), la edad y la cantidad de días transcurridos desde la registración.
Select U.Apellidos + ', ' + U.Nombres as [Apellido y nombres], TP.Nombre as Tipo, P.Nombre as Pais,
Case U.Sexo
When 'F' Then 'Femenino'
When 'M' Then 'Masculino'
When 'X' Then 'Otro género'
END As Genero, 
Cast(Datediff(Day, U.FechaNac, getdate())/365.25 as Int) as Edad, Datediff(DAY, U.FechaReg, Getdate()) as [Dias registracion]
From Usuarios as U
Inner Join TiposUsuarios as TP ON TP.ID = U.IDTipo
Inner Join Paises as P ON P.ID = U.IDPais

-- 9) Listar para cada usuario el apellido y nombres y el nombre de sus bibliotecas. Solamente los usuarios que se hayan registrado hace menos de 1000 días.
-- Hacer
Select U.Apellidos, U.Nombres, B.Nombre as Biblioteca From Usuarios as U 
Inner Join Bibliotecas as B ON U.ID = B.IDUsuario
Where Datediff(DAY, U.Fechareg, getdate()) < 1000
Order by U.Apellidos asc

-- 10) Listar el título del libro, el nombre del formato, la valoración, la conservación, la fecha de adquisición, el precio, el nombre de la biblioteca de los usuarios cuyo tipo de usuario sea 'Bibliotecarian'.

-- 11) Listar apellido y nombres, el título del libro y la cantidad de días que demoró el usuario en leerlo. Sólo aquellos que hayan finalizado la lectura.
-- Hacer
Select LXB.ID, U.Apellidos, U.Nombres, L.Titulo, Datediff(Day, LXB.Inicio, LXB.Fin) as [Demora lectura]
From Usuarios As U
Inner Join Bibliotecas as B ON U.ID = B.IDUsuario
Inner Join Libros_x_Biblioteca as LXB ON B.ID = LXB.IDBiblioteca
Inner Join Libros as L ON L.ID = LXB.IDLibro
Where LXB.Fin Is not Null


-- 12) Listar el apellido y nombres sin repeticiones de los usuarios que registren al menos un libro en formato 'EPUB'.
-- Hacer
Select Distinct U.Apellidos, U.Nombres
From Usuarios as U
Inner Join Bibliotecas as B ON U.ID = B.IDUsuario
Inner Join Libros_x_Biblioteca as LXB ON B.ID = LXB.IDBiblioteca
Inner join Formatos as F ON F.ID = LXB.IDFormato
Where F.Nombre = 'EPUB'
Order by U.Apellidos


-- 13) Listar el apellido y nombres de los usuarios y apellido y nombre de los autores cuyos libros el usuario haya finalizado la lectura. No repetir la combinación de datos de usuario y autores.

-- 14) Listar apellido y nombres de los usuarios que no posean bibliotecas.
SELECT U.Apellidos, U.Nombres
From Usuarios As U
Left Join Bibliotecas As B ON U.ID = B.IDUsuario
Where B.Nombre is Null

-- 15) Listar apellido y nombres de los usuarios que tengan algún libro sin terminar de leer. No repetir combinación de apellido y nombres.

-- 16) Listar apellido y nombres de los autores que hayan recibido alguna calificación de 8,00 o más en alguno de sus libros. No repetir combinación de apellido y nombres.
-- Hacer

-- 17) Listar para cada autor el apellido y nombres y los nombres de los géneros de los libros que dicho autor escribió. No repetir el mismo género para el mismo autor.
-- 18) Listar el título del libro, el idioma (si lo tiene), la editorial (si la tiene) de los libros 5 con mejor calificación individual.
Select TOP 5 L.Titulo, I.Nombre as 'Idioma', E.Nombre as 'Editorial', LXB.Valoracion
From Libros as L
Left Join Idiomas as I ON I.ID = L.IDIdioma
Left Join Editoriales as E ON E.ID = L.IDEditorial
Inner Join Libros_x_Biblioteca as LXB ON L.ID = LXB.IDLibro
Order By Valoracion desc

-- 19) Listar los títulos de los libros sin idioma.
-- 20) Listar para cada usuario el apellido y nombres y los idiomas de los libros que posee. No repetir la combinación de usuario e idioma.
-- 21) Listar los apellidos y nombres de los usuarios que posean al menos un libro cuyo título contenga 'Historia' o cuyo género contenga 'Edad media'
-- 22) Listar los apellidos y nombres de los usuarios que posean al menos un libro en Inglés pero que no lo hayan leído aún.
Select Distinct U.Apellidos, U.Nombres
From Usuarios as U
Inner Join Bibliotecas as B ON U.ID = B.IDUsuario
Inner Join Libros_x_Biblioteca as LXB ON B.ID = LXB.IDBiblioteca
Inner Join Libros as L ON L.ID = LXB.IDLibro
Inner Join Idiomas as I ON I.ID = L.IDIdioma
Where LXB.Inicio IS not Null and LXb.Fin is null And I.Nombre = 'Inglés'

-- 23) Listar el nombre de las editoriales que tengan al menos un libro en Francés.
-- Hacer

-- 24) Listar todos los títulos de los libros de autores cuyo país de nacimiento sea Escocia o Austria.

-- 25) Listar apellido y nombre de los usuarios en una columna llamada Usuario, nombre de la biblioteca, título de los libros, apellido y nombre de los autores en una columna llamada Autor, idioma, nombre de los géneros, nombre de la editorial, nombre del formato del libro, grado de valoración y conservación, fecha de adquisición y precio abonado, fecha de inicio, fin de lectura y cantidad de días en finalizar la lectura. El listado deberá figurar ordenado por usuario en primera instancia, nombre de biblioteca en segunda instancia y título del libro en tercera instancia. Incluir los usuarios que no posean bibliotecas y los datos de los libros que figuren en bibliotecas pero que no posean autor, editorial o género.
-- NOTA: Si un libro tiene más de un autor o más de un género, éstos datos deberán aparecer en filas distintas. No se pretende que un registro se almacenen autores o géneros separados por coma.
Select 
  U.Apellidos + ', ' + U.Nombres as Usuario,
  B.Nombre as Biblioteca,
  L.Titulo,
  A.Apellidos + ', ' + A.Nombres as Autor,
  I.Nombre as Idioma,
  G.Nombre as Genero,
  E.Nombre as Editorial,
  F.Nombre as Formato,
  LXB.Valoracion,
  LXB.Conservacion,
  LXB.Adquisicion,
  LXB.Precio,
  LXB.Inicio,
  LXB.Fin
From Libros as L
Left Join Generos_x_Libro as GXL ON L.ID = GXL.IDLibro
Left Join Generos as G ON G.ID = GXL.IDGenero
Left Join Autores_x_Libro as AXL ON L.ID = AXL.IDLibro
Left Join Autores as A ON A.ID = AXL.IDAutor
Left Join Idiomas as I ON I.ID = L.IDIdioma
Left Join Editoriales as E ON E.ID = L.IDEditorial
Inner Join Libros_x_Biblioteca as LXB ON LXB.IDLibro = L.ID
Inner Join Formatos as F ON F.ID = LxB.IDFormato
Inner Join Bibliotecas as B ON B.ID = LXB.IDBiblioteca
Right Join Usuarios as U ON U.ID = B.IDUsuario
Order by 1 desc, 2 asc, 3 desc