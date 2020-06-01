-- 1) Listar todos los datos de todos los libros cuya cantidad de páginas sea superior al promedio.
Select * From Libros Where Paginas > (Select Avg(Paginas) From Libros)

-- 2) Listar el nombre de todos los libros que tengan la valoración más baja.
Select L.Titulo From Libros  as L
Inner Join Libros_x_Biblioteca as LxB ON L.ID = LxB.IDLibro
Where LxB.Valoracion = (Select Min(Valoracion) From Libros_x_Biblioteca)

-- 3) Listar el apellido y nombre de los autores y el título del libro de los registros cuyo precio supere el doble del precio promedio.
Select A.Apellidos, A.Nombres, L.Titulo From Autores As A
Inner Join Autores_x_Libro as AXL ON A.ID = AXL.IDAutor
Inner Join Libros as L ON L.ID = AXL.IDLibro
Where L.Precio  > (
    Select AVG(Precio)*2 From Libros
)

-- 4) Listar el apellido y nombre del usuario y el título del libro de quienes hayan pagado el precio de libro a un valor mayor al cuádruple del precio promedio del sistema.

Select U.Apellidos, U.Nombres, L.Titulo
From Usuarios as U
Inner Join Bibliotecas as B ON U.ID = B.IDUsuario
Inner Join Libros_x_Biblioteca AS LxB ON B.ID = LxB.IDBiblioteca
Inner Join Libros as L ON L.ID = LxB.IDLibro
Where LxB.Precio > (
    Select Avg(Precio)*4 From Libros
)

-- 5) Listar el apellido y nombre de los autores que no hayan escrito ningún libro.

Select A.Apellidos, A.Nombres From Autores as A Where A.ID Not In (
    Select distinct IDAutor From Autores_x_Libro
)

-- 6) Listar el nombre de todos los géneros de los cuales no haya libros escritos.

Select G.Nombre From Generos as G Where G.ID Not In (
    Select distinct IDGenero From Generos_x_Libro
)

-- 7) Listar el nombre de todos los idiomas de los cuales no se poseen libros.

Select I.Nombre From Idiomas as I Where I.ID Not In (
    Select distinct IDIdioma From Libros Where IDIdioma is not null
)

-- 8) Listar el nombre de todas las editoriales de las cuales no se poseen libros.
Select E.Nombre From Editoriales as E Where E.ID Not In (
    Select distinct IDEditorial From Libros Where IDEditorial is not null
)

-- 9) Listar los títulos y precios de todos los libros que sean más baratos que todos los libros en idioma francés.

Select L.Titulo, L.Precio From Libros as L
Where L.Precio < ALL (
    Select Precio From Libros as L1
    Inner Join Idiomas as I ON L1.IDIdioma = I.ID
    Where I.Nombre = 'Francés'
)
--Alternativa
Select L.Titulo, L.Precio From Libros as L
Where L.Precio < (
    Select Min(Precio) From Libros as L1
    Inner Join Idiomas as I ON L1.IDIdioma = I.ID
    Where I.Nombre = 'Francés'
)

-- 10) Listar los títulos, precio, apellidos y nombres de los autores de libros que sean más caros que todos los libros en idioma inglés.

Select L.Titulo, L.Precio, A.Apellidos, A.Nombres From Libros as L
Inner Join Autores_x_Libro as AxL ON L.ID = AxL.IDLibro
Inner Join Autores as A ON A.ID = AxL.IDAutor
Where L.Precio > ALL (
    Select Precio From Libros as L1
    Inner Join Idiomas as I ON L1.IDIdioma = I.ID
    Where I.Nombre = 'Inglés'
)

-- 11) Listar los títulos de los libros y cantidad de páginas de los libros que sean más extensos que algún libro de la editorial Plaza y Janés.

Select L.Titulo, L.Paginas From Libros as L Where L.Paginas > ANY (
    Select L1.Paginas From Libros as L1 Inner Join Editoriales as E ON E.ID = L1.IDEditorial Where E.Nombre = 'Plaza y Janés'
)

-- Alternativa
Select L.Titulo, L.Paginas From Libros as L Where L.Paginas > (
    Select Min(L1.Paginas) From Libros as L1 Inner Join Editoriales as E ON E.ID = L1.IDEditorial Where E.Nombre = 'Plaza y Janés'
)


-- 12) Listar por cada libro el título y la cantidad de veces que fueron agregados a una biblioteca en medio digital y la cantidad de veces que fueron agregados a una biblioteca en medio físico. NOTA:  Medio digital → El valor del campo Medio es 'D' Medio físico → El valor del campo Medio es 'F'

Select L.Titulo, 
(
    Select Count(*) From Libros_x_Biblioteca as LxB Inner Join Formatos as F ON F.ID = LxB.IDFormato Where F.Medio = 'D' And LxB.IDLibro = L.ID
) as CantDigital,
(
    Select Count(*) From Libros_x_Biblioteca as LxB Inner Join Formatos as F ON F.ID = LxB.IDFormato Where F.Medio = 'F' And LxB.IDLibro = L.ID
) as CantFisico
From Libros as L

-- 13) Listar por cada país el nombre y la cantidad de autores de sexo masculino y la cantidad de autores de sexo femenino.
Select P.Nombre, 
(
    Select count(*) From Autores AS A Where A.Sexo = 'M' And A.IDPais = P.ID
) as CantM,
(
    Select count(*) From Autores AS A Where A.Sexo = 'F' And A.IDPais = P.ID
) as CantF
From Paises as P

-- 14) Listar por cada usuario los nombres y apellidos, la cantidad de libros en formato digital y la cantidad de libros en formato físico.
Select U.Apellidos, U.Nombres,
(
    Select count(*) From Bibliotecas as B
    Inner Join Libros_x_Biblioteca as LxB ON B.ID = LxB.IDBiblioteca
    Inner Join Formatos as F ON F.ID = LxB.IDFormato
    Where F.Medio = 'D' And B.IDUsuario = U.ID
) as CantDigital,
(
Select count(*) From Bibliotecas as B
    Inner Join Libros_x_Biblioteca as LxB ON B.ID = LxB.IDBiblioteca
    Inner Join Formatos as F ON F.ID = LxB.IDFormato
    Where F.Medio = 'F' And B.IDUsuario = U.ID
) as CantFisico
From Usuarios as U

-- 15) Listar por cada autor el apellido y nombre y la cantidad de libros de su autoría en idioma Inglés y la cantidad de libros de su autoría en idioma Español.
Select A.Apellidos, A.Nombres,
(
    Select count(*) From Autores_x_Libro as AXL
    Inner Join Libros as L ON AXL.IDLibro = L.ID
    Inner Join Idiomas as I ON I.ID = L.IDIdioma
    Where I.Nombre = 'Inglés' And AXL.IDAutor = A.ID
) as Ingles,
(
    Select count(*) From Autores_x_Libro as AXL
    Inner Join Libros as L ON AXL.IDLibro = L.ID
    Inner Join Idiomas as I ON I.ID = L.IDIdioma
    Where I.Nombre = 'Español' And AXL.IDAutor = A.ID
) as Español
From Autores as A


-- 16) Por cada género listar el nombre y el promedio de precio de los libros escritos antes a 1990 y el promedio de precio de los libros escritos después a 1990.
Select G.Nombre, 
(
    Select avg(Precio) From
    Libros as L
    Inner Join Generos_x_Libro as GxL ON GxL.IDLibro = L.ID
    Where GxL.IDGenero = G.ID
    And L.Año < 1990
) as Pre1990,
(
    Select avg(Precio) From
    Libros as L
    Inner Join Generos_x_Libro as GxL ON GxL.IDLibro = L.ID
    Where GxL.IDGenero = G.ID
    And L.Año > 1990
) as Post1990
From Generos as G

-- 17) Listar los títulos de los libros que hayan registrado más libros en medios digitales que en medios físicos.
Select * From (
    Select L.Titulo,
    (
        Select Count(*) from Libros_x_Biblioteca as LXB Inner Join Formatos as F ON LXB.IDFormato = F.ID And F.Medio = 'D' And LXB.IDLibro = L.ID
    ) as Digital,
    (
        Select Count(*) from Libros_x_Biblioteca as LXB Inner Join Formatos as F ON LXB.IDFormato = F.ID And F.Medio = 'F' And LXB.IDLibro = L.ID
    ) as Fisico
    From Libros as L
) as Aux
Where Aux.Digital > Aux.Fisico

-- 18) Listar los títulos de los libros que hayan registrado la misma cantidad de medios digitales que físicos pero que al menos hayan registrado por lo menos algún medio.
Select * From (
    Select L.Titulo,
    (
        Select Count(*) from Libros_x_Biblioteca as LXB Inner Join Formatos as F ON LXB.IDFormato = F.ID And F.Medio = 'D' And LXB.IDLibro = L.ID
    ) as Digital,
    (
        Select Count(*) from Libros_x_Biblioteca as LXB Inner Join Formatos as F ON LXB.IDFormato = F.ID And F.Medio = 'F' And LXB.IDLibro = L.ID
    ) as Fisico
    From Libros as L
) as Aux
Where Aux.Digital = Aux.Fisico And Aux.Digital > 0

-- 19) Listar los países que registren más de un autor de sexo masculino y más de una autora de sexo femenino.
Select * From (
    Select P.Nombre, 
    (
        Select count(*) From Autores AS A Where A.Sexo = 'M' And A.IDPais = P.ID
    ) as CantM,
    (
        Select count(*) From Autores AS A Where A.Sexo = 'F' And A.IDPais = P.ID
    ) as CantF
    From Paises as P
) as Aux
Where Aux.CantM > 0 and Aux.CantF > 0

-- 20) Listar la cantidad de países que no registren autoras de sexo femenino.
Select count(*) as Cantidad From (
    Select P.Nombre, 
    (
        Select count(*) From Autores AS A Where A.Sexo = 'M' And A.IDPais = P.ID
    ) as CantM,
    (
        Select count(*) From Autores AS A Where A.Sexo = 'F' And A.IDPais = P.ID
    ) as CantF
    From Paises as P
) as Aux
Where Aux.CantF = 0

-- 21) Listar los apellidos de los autores que hayan escrito más libros en Español que en Inglés pero que hayan escrito al menos un libro en Inglés.
Select Aux.Apellidos, Aux.Nombres From (
    Select A.Apellidos, A.Nombres,
    (
        Select count(*) From Autores_x_Libro as AXL
        Inner Join Libros as L ON AXL.IDLibro = L.ID
        Inner Join Idiomas as I ON I.ID = L.IDIdioma
        Where I.Nombre = 'Inglés' And AXL.IDAutor = A.ID
    ) as Ingles,
    (
        Select count(*) From Autores_x_Libro as AXL
        Inner Join Libros as L ON AXL.IDLibro = L.ID
        Inner Join Idiomas as I ON I.ID = L.IDIdioma
        Where I.Nombre = 'Español' And AXL.IDAutor = A.ID
    ) as Español
    From Autores as A
) as Aux
Where Aux.Español > Aux.Ingles And  Aux.Ingles > 0