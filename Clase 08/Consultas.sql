Use Bookworm;

/*
        Count - Contar valores (filas o valores en columnas <> NULL)
        Sum   - Totalizar valores numéricos (valores en columnas <> NULL)
        Avg   - Ídem SUM pero calcula el promedio
        Max   - Máximo de un conjunto de valores (columna)
        Min   - Mínimo de un conjunto de valores (columna)

        Select Col1, Col2, Col3, AVG(Col4) From Tabla
        Where Col3 = 'Valor'
        Group By Col1, Col2, Col3
        Having AVG(Col4) > 4.5

*/

-- Listar la cantidad de usuarios.
select count(*) as Cantidad from usuarios

-- Listar la cantidad de usuarios cuyo tipo de usuario sea 'Reader'.
Select Count(*) as Cantidad From usuarios as U
inner join TiposUsuarios as TP ON TP.ID = U.IDTipo
where TP.Nombre = 'Reader'

-- Listar la cantidad de libros en inglés.
-- Listar la cantidad de libros con editorial.

-- Opción A
Select Count(*) As ConEditorial From Libros
Where IDEditorial IS NOT NULL

-- Opción B
Select Count(IDEditorial) as ConEditorial From Libros

-- Listar la cantidad de libros sin editorial.
Select Count(*) As SinEditorial From Libros
Where IDEditorial IS NULL


-- Listar la cantidad de autores de género masculino y nacidos en Argentina.
-- Listar el promedio de edad de las autoras de género femenino.
-- Listar el promedio de edad de los usuarios cuyo tipo de usuario sea 'Free'
-- Listar el promedio de páginas de los libros publicados en la década del 90
Select AVG(Paginas*1.0) as PromPaginas From Libros
Where Año Between 1990 and 1999

Select  SUM(Paginas) as TotalPaginas, 
        Count(*) As Cantidad, 
        Sum(Paginas)*1.0/Count(*) as PromedioPaginas 
        From Libros
Where Año Between 1990 and 1999

-- Listar el precio total de todos los libros de la editorial DeBolsillo
-- Listar la cantidad total de páginas de los libros de Stephen King
-- Listar la cantidad máxima de páginas entre todos los libros
Select Max(Paginas) as MaxPaginas From Libros

-- Listar la cantidad mínima de páginas entre todos los libros
-- Listar la cantidad máxima de páginas de los libros de Stephen King
-- Listar el precio mínimo de los libros en Español.
-- Listar la cantidad de libros distintos que se terminaron de leer en el año 1991.

-- Cantidad de libros en 1991 con repeticiones
select count(idlibro) as CantidadDistintos from Libros_x_Biblioteca
Where Year(Fin) = 1991

-- Cantidad de libros en 1991 sin repetir libros
select count(distinct idlibro) as CantidadDistintos from Libros_x_Biblioteca
Where Year(Fin) = 1991

-- Por cada usuario, listar apellido y nombres y la cantidad de bibliotecas que crearon. Listar información sólo de los usuarios que crearon bibliotecas.
Select U.Apellidos, U.Nombres, Count(*) as CantBibliotecas
From Usuarios as U
Inner Join Bibliotecas as B ON B.IDUsuario = U.ID
Group By U.ID, U.Apellidos, U.Nombres

/*
Select U.Apellidos, U.Nombres, B.Nombre as CantBibliotecas
From Usuarios as U
Inner Join Bibliotecas as B ON B.IDUsuario = U.ID
order by U.Apellidos, U.Nombres
*/

-- Por cada usuario, listar apellido y nombres y la cantidad de bibliotecas que crearon. Listar información de todos los usuarios. Si no crearon bibliotecas listarlos contabilizando 0 bibliotecas. Ordenar el listado por apellido de manera creciente. (*)
Select U.Apellidos, U.Nombres, Count(B.ID) as CantBibliotecas
From Usuarios as U
Left Join Bibliotecas as B ON B.IDUsuario = U.ID
Group By U.ID, U.Apellidos, U.Nombres

/*
Datos para corroborar

Select U.Apellidos, U.Nombres from Usuarios U
left join Bibliotecas as B ON U.ID = B.IDUsuario
where B.Nombre Is null
*/

-- Por cada biblioteca, listar el apellido y nombre del usuario, el nombre de la biblioteca y la cantidad de libros registrados.
-- Por cada formato, listar el nombre del formato y la cantidad de libros distintos asociados.
-- Por cada usuario, listar el apellido y nombre del usuario, el nombre de los libros que registró en sus bibliotecas y cuántas veces registró dichos libros. Ordenarlo de manera decreciente por cantidad.

-- Por cada autor, listar el precio de libro más caro que haya publicado. Listar apellido y nombres y precio de los libros. Ordenarlo en forma decreciente por precio. (*)
select A.Apellidos, A.Nombres, Max(L.Precio) as Maximo
From Autores as A
Inner Join Autores_x_Libro as AxL ON A.ID = AxL.IDAutor
Inner Join Libros as L ON L.ID = AxL.IDLibro
Group By A.Apellidos, A.Nombres
Order By Maximo Desc

-- Igual al anterior pero incluir a los autores que no editaron libros.
-- Por cada autor listar el apellido y nombres y la cantidad de veces que sus libros fueron agregado a bibliotecas.
Select A.Apellidos, A.Nombres, Count(*) as Cant
From Autores as A
Inner Join Autores_x_Libro as AXL ON A.ID = AXL.IDAutor
Inner Join Libros as L ON L.ID = AXL.IDLibro
Inner Join Libros_x_Biblioteca as LXB ON L.ID = LXB.IDLibro
Group By A.Apellidos, A.Nombres
Order By Cant desc

-- Por cada autor listar el apellido y nombres y el promedio de valoración otorgado por los usuarios de sus libros. Ordenar por mejor promedio de valoración a peor. (*)
Select A.Apellidos, A.Nombres, Avg(LxB.Valoracion) as Promedio 
From Autores as A
Inner Join Autores_x_Libro as AxL ON A.ID = AxL.IDAutor
Inner JOIN Libros as L ON L.ID = AxL.IDLibro
Inner Join Libros_x_Biblioteca as LxB ON L.ID = LxB.IDLibro
group by A.Apellidos, A.Nombres
order by Promedio desc

/**
  Bonus Track:
  Por cada usuario listar el apellido y nombres y el precio más costoso
  que haya pagado por sus libros registrados en el sistema.
*/
Select U.Apellidos, U.Nombres, Max(LxB.Precio) as MaxPrecio
From Usuarios as U
Left Join Bibliotecas as B ON U.ID = B.IDUsuario
Left Join Libros_x_Biblioteca as LXB ON  B.ID = LXB.IDBiblioteca
Group By U.Apellidos, U.Nombres
Order By U.Apellidos asc

-- Por cada usuario listar el apellido y nombres y el costo total abonado en concepto de libros. Utilizar el precio del libro que indicó en Libros_x_Biblioteca. Mostrar información de los usuarios que no hayan registrado libros con un total de $0. Ordenar de menor a mayor por total abonado.
Select U.Apellidos, U.Nombres, IsNull(Sum(LxB.Precio), 0) As TotalReal
From Usuarios as U
Left Join Bibliotecas as B ON U.ID = B.IDUsuario
Left Join Libros_x_Biblioteca as LXB ON  B.ID = LXB.IDBiblioteca
Group By U.Apellidos, U.Nombres
Order By U.Apellidos

-- Por cada usuario listar el apellido y nombres y el costo total en concepto de libros si hubiesen comprado dichos libros al precio que figura en el sistema. Utilizar el precio del libro que se indica en Libros. Mostrar información de los usuarios que no hayan registrado libros con un total de $0.
Select U.Apellidos, U.Nombres, IsNull(Sum(L.Precio), 0) As TotalSistema
From Usuarios as U
Left Join Bibliotecas as B ON U.ID = B.IDUsuario
Left Join Libros_x_Biblioteca as LXB ON  B.ID = LXB.IDBiblioteca
Left Join Libros as L ON L.ID = LXB.IDLibro
Group By U.Apellidos, U.Nombres
Order By U.Apellidos

-- Por cada autor listar el apellido y nombre y la cantidad de veces que sus libros fueron agregado a bibliotecas. Sólo listar aquellos autores que hayan contabilizado 5 o más libros agregados a bibliotecas. (*)
Select A.Apellidos, A.Nombres, Count(*) as Cantidad 
From Autores as A
Inner Join Autores_x_Libro as AxL ON A.ID = AxL.IDAutor
Inner JOIN Libros as L ON L.ID = AxL.IDLibro
Inner Join Libros_x_Biblioteca as LxB ON L.ID = LxB.IDLibro
group by A.Apellidos, A.Nombres
Having Count(LxB.ID) > 5


-- Por cada autor listar el apellido y nombres y el promedio de valoración otorgado por los usuarios de sus libros. Sólo listar aquellos autores que hayan registrado más de 10 votaciones.
Select A.Apellidos, A.Nombres, Count(LxB.Valoracion) as Cantidad, Avg(LxB.Valoracion) as PromedioValoracion
From Autores as A
Inner Join Autores_x_Libro AxL ON AxL.IDAutor = A.ID
Inner Join Libros as L ON L.ID = AxL.IDLibro
Inner Join Libros_x_Biblioteca as LxB ON LxB.IDLibro = L.ID
Group By A.Apellidos, A.Nombres
Having Count(LxB.Valoracion) > 10
Order By A.Apellidos

-- Comprobación
Select A.Apellidos, A.Nombres, LxB.Valoracion as PromedioValoracion
From Autores as A
Inner Join Autores_x_Libro AxL ON AxL.IDAutor = A.ID
Inner Join Libros as L ON L.ID = AxL.IDLibro
Inner Join Libros_x_Biblioteca as LxB ON LxB.IDLibro = L.ID
Where A.Apellidos = 'King' And LxB.Valoracion Is not Null

-- Listar el apellido y nombres de los usuarios que registren más de tres bibliotecas.

-- Listar los nombres de los países que tengan exactamente tres autores relacionados. (*)
Select P.Nombre from Paises as P
Inner Join Autores as A ON P.ID = A.IDPais
Group By P.Nombre
Having Count(*) = 3

-- Listar el apellido y nombre de los usuarios de aquellos que hayan pagado (en total) menos por el costo de sus libros que si los hubiesen comprado al costo del sistema.
