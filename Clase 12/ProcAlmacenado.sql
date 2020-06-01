Create Procedure SP_Libros_x_Autor(
    @idAutor bigint
)
as
BEGIN
    Select L.Titulo, L.Paginas, A.Apellidos + ', ' + A.Nombres As Autor
    From Libros as L
    Inner Join Autores_x_Libro as AXL ON L.ID = AXL.IDLibro
    Inner Join Autores as A ON A.ID = AXL.IDAutor
    Where AXL.IDAutor = @idAutor
End

-- Ver todos los libros de Stephen King (23)
exec SP_Libros_x_Autor 23





