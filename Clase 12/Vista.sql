Use Bookworm;
Go
Create View VW_ReporteLibros
as
Select 
Case
When Len(L.Titulo) > 40 then Left(L.Titulo, 40) + '...'
Else L.Titulo
End as 'Titulo'
, L.Paginas, L.Precio, A.Apellidos + ', ' + A.Nombres As Autor
From Libros as L
Inner Join Autores_x_Libro as AXL ON AXL.IDLibro = L.ID
Inner Join Autores as A ON A.ID = AXL.IDAutor