/**
    Hacer un procedimiento almacenado llamado SP_Comprar_Libro que reciba IDBiblioteca, IDLibro e IDFormato.
    Si el usuario dueño de la biblioteca no tiene dicho libro, el precio será el valor del libro.
    Si el usuario dueño de la biblioteca tiene dicho libro, el precio será la mitad del valor del libro.
    La fecha de adquisición será la del sistema.
*/
Use Bookworm
go
Create Procedure SP_Comprar_Libro(
    @IDBiblioteca bigint,
    @IDLibro bigint,
    @IDFormato int
)
as
BEGIN
    -- Averiguar el IDUsuario de la Biblioteca
    Declare @IDUsuario bigint
    Set @IDUsuario = (Select IDUsuario From Bibliotecas Where ID = @IDBiblioteca)
    -- Contar cuantas veces tiene el libro el usuario
    Declare @Tiene int
    Select @Tiene = Count(*) From Libros_x_Biblioteca
    Where IDLibro = @IDLibro And IDBiblioteca In (
        Select ID From Bibliotecas Where IDUsuario = @IDUsuario
    )
    -- Averiguar el precio del libro
    Declare @Precio money
    Select @Precio = Precio From Libros Where ID = @IDLibro

    if @Tiene > 0 BEGIN
        Set @Precio = @Precio / 2
    End
    -- Guardar el registro en Libros_x_Biblioteca
    Insert Into Libros_x_Biblioteca Values(
        @IDLibro,
        @IDBiblioteca,
        @IDFormato,
        null,
        null,
        getdate(),
        null,
        null,
        @Precio
    )
End


Select * From Libros

Select * From Bibliotecas Order By ID Desc

Exec SP_Comprar_Libro
    @IDBiblioteca = 54,
    @IDLibro = 31, --730
    @IDFormato = 1

Select * From Libros_x_Biblioteca
Order by ID desc