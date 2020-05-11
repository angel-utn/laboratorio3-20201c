-- En clase: 1, 3, 5, 7, 9, 11, 12, 17 y 18
Use Bookworm;
-- 1) Listar todos los datos de todos los libros cuya cantidad de páginas sea superior al promedio.
Select * From Libros Where Paginas > (
    Select Avg(Paginas*1.0) From Libros
)

-- 2) Listar el nombre de todos los libros que tengan la valoración más baja.
-- 3) Listar el apellido y nombre de los autores y el título del libro de los registros cuyo precio supere el doble del precio promedio.

Select A.Apellidos, A.Nombres, L.Titulo From Libros as L
Inner Join Autores_x_Libro as AXL ON AXL.IDLibro = L.ID
Inner Join Autores as A ON A.ID = AXL.IDAutor
Where L.Precio > (
    Select Avg(Precio)*2 From Libros
)

-- 4) Listar el apellido y nombre del usuario y el título del libro de quienes hayan pagado el precio de libro a un valor mayor al cuádruple del precio promedio del sistema.
-- 5) Listar el apellido y nombre de los autores que no hayan escrito ningún libro.
Select * From Autores Where ID Not In (
    Select distinct IDAutor From Autores_x_Libro
)
-- Alternativa
Select A.* From Autores as A
Left Join Autores_x_Libro as AXL
ON A.ID = AXL.IDAutor
Where AXL.IDLibro is null

-- Elaboración de la consulta
-- IDs de todos los autores : C1
Select ID From Autores 

-- IDs de autores que escribieron libros: C2
Select distinct IDAutor From Autores_x_Libro order by IDAutor asc

-- 6) Listar el nombre de todos los géneros de los cuales no haya libros escritos.
-- 7) Listar el nombre de todos los idiomas de los cuales no se poseen libros.
Select * From Idiomas Where ID Not In (
    Select distinct IDIdioma from Libros where IDIdioma is not null
)

-- 8) Listar el nombre de todas las editoriales de las cuales no se poseen libros.
-- 9) Listar los títulos y precios de todos los libros que sean más baratos que cualquier libro en idioma inglés.
Select * From Libros Where Precio < (
    Select Min(Precio) From Libros Where IDIdioma = 2
)
Select * From Libros Where Precio < ALL (
    Select Precio From Libros Where IdIdioma = 2
)

Select Precio From Libros Where IdIdioma = 2 order by Precio desc
-- 10) Listar los títulos, precio, apellidos y nombres de los autores de libros que sean más caros que todos los libros en idioma inglés.
-- 11) Listar los títulos de los libros y cantidad de páginas de los libros que sean más extensos que algún libro de la editorial Plaza y Janés.
Select * From Libros Where Paginas > ANY(
    Select Paginas From Libros as L
    Inner Join Editoriales as E ON L.IDEditorial = E.ID
    Where E.Nombre = 'Plaza y Janés'
)
Select * From Libros Where Paginas > (
    Select Min(Paginas) From Libros as L
    Inner Join Editoriales as E ON L.IDEditorial = E.ID
    Where E.Nombre = 'Plaza y Janés'
)

-- Para cada Idioma la cantidad de libros registrados
Select I.ID, I.Nombre,
(
    Select count(*) From Libros as L
    Inner Join Editoriales as E ON L.IDEditorial = E.ID
    Where L.IDIdioma = I.ID And E.Nombre = 'DeBolsillo'
) As DeBolsillo,
(
    Select count(*) From Libros as L
    Inner Join Editoriales as E ON L.IDEditorial = E.ID
    Where L.IDIdioma = I.ID And E.Nombre = 'Plaza y Janés'
) As PlazayJanes
From Idiomas As I

-- 12) Listar por cada libro el título y la cantidad de veces que fueron agregados a una biblioteca en medio digital y la cantidad de veces que fueron agregados a una biblioteca en medio físico. NOTA:  Medio digital → El valor del campo Medio es 'D' Medio físico → El valor del campo Medio es 'F'
-- 13) Listar por cada país el nombre y la cantidad de autores de sexo masculino y la cantidad de autores de sexo femenino.
-- 14) Listar por cada usuario los nombres y apellidos, la cantidad de libros en formato digital y la cantidad de libros en formato físico.
-- 15) Listar por cada autor el apellido y nombre y la cantidad de libros de su autoría en idioma Inglés y la cantidad de libros de su autoría en idioma Español.
-- 16) Por cada género listar el nombre y el promedio de precio de los libros escritos antes a 1990 y el promedio de precio de los libros escritos después a 1990.
-- 17) Listar los títulos de los libros que hayan registrado más libros en medios digitales que en medios físicos.
-- 18) Listar los títulos de los libros que hayan registrado la misma cantidad de medios digitales que físicos pero que al menos hayan registrado por lo menos algún medio.
-- 19) Listar los países que registren más de un autor de sexo masculino y más de una autora de sexo femenino.
-- 20) Listar la cantidad de países que no registren autoras de sexo femenino.
-- 21) Listar los apellidos de los autores que hayan escrito más libros en Español que en Inglés pero que hayan escrito al menos un libro en Inglés.
