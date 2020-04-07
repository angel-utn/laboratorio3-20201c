-- Consulta
-- 1 - Listar todos los campos de todos los libros
-- 2 - Listar todos los campos de todos los autores
-- 3 - Listar el título y el año de publicación de todos los libros
-- 4 - Listar todos los campos de todos los autores y una columna con el año de nacimiento.
Select *, Year(FechaNac) As [AñoNacimiento] From Autores

-- Select *, DATENAME(WEEKDAY, fechanac) as NombreMes From Autores

-- 5 - Listar el apellido, nombre, el sexo y el año de nacimiento de los autores
-- 6 - Listar todos los campos de todos los libros cuyas editoriales sean 1, 5 o 17
Select * From Libros Where IDEditorial = 1 Or IDEditorial = 2 Or IDEditorial = 3

Select * From Libros Where IDEditorial >= 1 and IDEditorial <= 3

Select * From Libros Where IDEditorial Between 1 and 3

-- 7 - Listar todos los campos de todos los libros cuyos idiomas sean 3 o 4
-- 8 - Listar todos los campos de todos los libros cuyas editoriales no sean 4, 5 o 6
Select * From Libros Where IDEditorial Not In (4, 5, 6)

-- 9 - Listar todos los campos de todos los libros cuyos idiomas no sean 1, 2 o 3
-- 10 - Listar todos los campos de todos los libros cuyo precio sea mayor a $1000
-- 11 - Listar todos los campos de todos los libros cuyo precio se encuentre entre $1000 y $5000
Select * From Libros Where Precio Between 1000 and 5000

-- 12 - Listar todos los campos de todos los libros cuya cantidad de páginas sea menor a 500
-- 13 - Listar todos los campos de todos los libros cuyo título contenga 'Historia'
Select * From Libros Where Titulo like '%Historia%'
-- Obtiene todos los libros cuyo título contenga una comilla simple
Select * From Libros Where Titulo like '%''%'

-- Obtener sólo la fecha actual
Select Cast(getdate() as date) as FechaActual

Select Convert(date, getdate()) as FechaActual

-- 14 - Listar todos los campos de todos los libros cuyo título contenga 'Rey'
-- 15 - Listar las páginas de todos los libros cuyo título contenga 'Rey'
-- 16 - Listar las páginas, sin duplicados, de todos los libros cuyo título contenga 'Rey'
-- 17 - Listar todos los campos de todos los libros cuyo título contenga 'Economía'. Ver qué ocurre si se realiza la búsqueda con el término 'Economia'.

-- 18 - Listar todos los campos de todos los libros que no posean Editorial.
Select * From Libros where IDEditorial IS NULL

-- 19 - Listar todos los campos de todos los libros que posean Editorial
Select * From Libros where IDEditorial IS NOT NULL

-- 20 - Listar todos los campos de todos los libros que no posean Editorial y que su precio sea mayor a $1000.
-- 21 - Listar el título, el año de publicación y el precio de los libros que cuesten más de $1000
-- 22 - Listar título y precio de los 5 libros más caros
-- 23 - Listar título, precio y cantidad de páginas de los 5 libros más cortos
-- 24 - Listar título, páginas e IDIdioma de los libros que no tengan idioma o tengan entre 280 y 300 páginas ordenados alfabéticamente
-- 25 - Listar el nombre de aquellos géneros que comiencen con la palabra ‘Ciencia’ o ‘Fantasía’, o que contenga la palabra ‘para’
-- 26 - Listar ordenadamente los distintos nombres que comienzan con J de los autores
-- 27 - Listar ordenadamente los diferentes años en los que nacieron los autores (sin repetir)
-- 28 - Listar el apellido, nombre y la descripción del sexo de los autores. Siendo 'Masculino' para 'M', 'Femenino' para 'F' y 'No especificado' para 'X'
-- 29 - Listar el título de todos los libros y una columna llamada Longitud con la siguiente condición: "Corto" si la cantidad de páginas es < 200, "Normal" si la cantidad de páginas < 800, "Largo" si la cantidad de páginas < 1200, de lo contrario "Extenso".
Select Titulo, Paginas, 
    Case 
    When Paginas < 200 then 'Corto'
    When Paginas < 800 then 'Normal'
    When Paginas < 1200 then 'Largo'
    Else 'Extenso'
    End as 'Longitud'
From Libros
/* 
    Where Case 
    When Paginas < 200 then 'Corto'
    When Paginas < 800 then 'Normal'
    When Paginas < 1200 then 'Largo'
    Else 'Extenso' End = 'Corto'
*/

-- 30 - Listar todos los campos de todos los libros incluyendo el precio recalculado a partir de la siguiente condición. Descontar un 10% el precio a aquellos libros cuyo año de publicación sea menor a 1990.
Select *,
    Case
    When Año < 1990 Then Precio * 0.9
    Else Precio
    End As 'NuevoPrecio'
 From Libros

-- Claúsula UNION - Próxima clase

-- 31 - Listar todos los campos de todos los libros incluyendo el precio recalculado a partir de la siguiente condición. Aumentar un 30% el precio a aquellos libros cuya IDEditorial sea 5, 6 o 7.
-- 32 - Listar todos los campos de todos los autores y una columna adicional con la edad del mismo.
-- 33 - Listar los libros cuya publicación haya sido hace menos de 5 años.
Select * From Libros
Where Year(getdate()) - Año < 5

-- 34 - Listar los autores cuyo nacimiento haya ocurrido hace menos de 50 años.
-- 35 - Listar todos los campos de todos los libros cuyo título comience con vocal
-- 36 - Listar todos los campos de todos los libros cuyo título no finalice con vocal
-- 37 - Listar todos los campos de todos los libros cuyo título contenga todas las vocales
-- 38 - Listar el apellido y nombres de todos los autores cuya edad sea entre 50 y 80 años
-- 39 - Listar el apellido y nombres y la fecha de cumpleaños de cada autor. La misma debe ser mostrada en una sola columna de tipo varchar(5) con el siguiente formato "DIA/MES".
-- 40 - Listar todos los libros que se escribieron después del 1980, en IDIdioma 1 o 2 que la cantidad de páginas sea entre 500 y 1200, su precio menor a $2000 y que posea Editorial. Ordenarlos del más costoso al más barato.