Use Bookworm
GO
/*
    Luego de agregar un usuario. Agregar también una biblioteca a dicho usuario. La biblioteca debe llamarse "Biblioteca Personal de Nombre Apellido"
*/
Create Trigger TR_NuevoUsuario
ON Usuarios
After Insert
as
BEGIN
    Declare @apellidos varchar(100)
    Declare @nombres varchar(100)
    Declare @idusuario bigint

    select @idusuario = ID, @nombres = nombres,
    @apellidos = apellidos from inserted

    Insert into Bibliotecas(IDUsuario, FechaCreacion, Nombre)
    Values (@idusuario, getdate(), 'Biblioteca personal de ' + @nombres + ' ' + @apellidos)
End

Insert into Usuarios(Email, IDPais, IDTipo, Apellidos, Nombres, Sexo, FechaReg, FechaNac)
Values(
    'prueba2@utn.edu.ar',
    1,
    1,
    'Messi',
    'Lionel',
    'M',
    getdate(),
    null
)

select top 1 * From Usuarios order by ID desc
Select top 1 * From Bibliotecas order by ID desc
go
/*
    No permitir la eliminación de Autores
*/
Create Trigger TR_BajaAutor
On Autores
Instead of delete
As
BEGIN
    RAISERROR('Eliminación de autores deshabilitada', 16, 1)
End

Select * From Autores

Delete From Autores Where ID = 41

/*
    Al eliminar una biblioteca, realizar una baja lógica de la biblioteca en lugar de eliminarla físicamente.
    Eliminar de manera lógica a los libros agregados a esa biblioteca.
*/
go
Alter Trigger TR_BajaBiblioteca
On Bibliotecas
Instead Of delete
AS
BEGIN
    --declare @IDBiblioteca bigint
    --select @IDBiblioteca = ID From deleted

    update Bibliotecas Set Estado = 0 Where ID IN (Select ID From deleted)

    Update Libros_x_Biblioteca Set Estado = 0 Where IDBiblioteca IN (
        Select ID From deleted
    )

end

--Select * From Bibliotecas Where ID = 1

--Select * From Libros_x_Biblioteca Where IDBiblioteca = 1

--Delete From Bibliotecas Where ID = 1

/*
    Al eliminar un usuario, realizar una baja lógica del usuario y de todas las bibliotecas que ese usuario posea.
*/
go
Create Trigger TR_BajaUsuario
ON Usuarios
Instead Of Delete
As
BEGIN
    declare @IDUsuario bigint
    select @IDUsuario = ID from deleted

    Update Usuarios Set Estado = 0 Where ID = @IDUsuario

    Delete From Bibliotecas
    Where IDUsuario = @IDUsuario

End

--Enable Trigger TR_BajaUsuario On Usuarios
--Disable Trigger TR_BajaUsuario On Usuarios

--Select * From Usuarios Where ID = 4

Select * From Bibliotecas Where IDUsuario = 4
-- 26, 2, 9
Select * From Libros_x_Biblioteca Where IDBiblioteca IN (26, 2, 9)


Delete From Usuarios Where ID = 4


-- Agregar campo Estado a Usuarios, Bibliotecas, Libros_x_Biblioteca
go
Alter Table Usuarios
Add Estado bit 
GO
Alter Table Bibliotecas
Add Estado BIT
GO
Alter Table Libros_x_Biblioteca
Add Estado BIT

-- Establecer true a todos los Estados creados anteriormente.
go
Update Usuarios Set Estado = 1
go
Update Bibliotecas Set Estado = 1
go
Update Libros_x_Biblioteca set Estado = 1
