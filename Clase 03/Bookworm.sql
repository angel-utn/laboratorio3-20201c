/*use master
go
drop database bookworm*/
go
Create Database Bookworm
go
Use Bookworm
go
Create Table Libros(
	ID bigint not null identity (1, 1),
	IDEditorial int not null,
	IDIdioma int null,
	Año smallint null,
	Precio money not null,
	Paginas smallint not null
)
go
Create Table Autores(
	ID bigint not null identity (1, 1),
	IDPais int not null,
	Apellidos varchar(100) not null,
	Nombres varchar(100) not null,
	Sexo char null,
	FechaNac date null
)
go
Create Table Usuarios(
	ID bigint not null identity (1, 1),
	Email varchar(100) not null,
	IDPais int not null,
	IDTipo int not null,
	Apellidos varchar(100) not null,
	Nombres varchar(100) not null,
	Sexo char null,
	FechaReg date not null,
	FechaNac date null
)
go
Create Table Bibliotecas(
	ID bigint not null identity (1, 1),
	IDUsuario bigint not null,
	FechaCreacion date not null,
	Nombre varchar(100) not null
)
go
Create Table Idiomas(
	ID int not null identity (1, 1),
	Nombre varchar(50) not null
)
go
Create Table Editoriales(
	ID int not null identity (1, 1),
	Nombre varchar(50) not null
)
go
Create Table Formatos(
	ID int not null identity (1, 1),
	Nombre varchar(50) not null
)
go
Create Table Paises(
	ID int not null identity (1, 1),
	Nombre varchar(50) not null
)
go
Create Table Generos(
	ID int not null identity (1, 1),
	Nombre varchar(50) not null
)
go
Create Table TiposUsuarios(
	ID int not null identity (1, 1),
	Nombre varchar(50) not null
)
go
Create Table Libros_x_Biblioteca(
	ID bigint not null identity (1, 1),
	IDLibro bigint not null,
	IDBiblioteca bigint not null,
	IDFormato int not null,
	Valoracion decimal (3, 1) null,
	Conservacion decimal (3, 1) null,
	Adquisicion date null,
	Inicio date null,
	Fin date null,
	Precio money null
)
go
Create Table Autores_x_Libro(
	IDAutor bigint not null,
	IDLibro bigint not null
)
go
Create Table Generos_x_Libro(
	IDGenero int not null,
	IDLibro bigint not null
)
go
Create Table Portadas(
	IDLibro bigint not null,
	Datos varbinary(MAX) not null
)
go
/* Restricciones */
-- Primary key
Alter Table Libros
Add Constraint PK_Libro Primary key (ID)
go
Alter Table Portadas
add constraint PK_Portada Primary key(IDLibro)
go
Alter Table Editoriales
Add constraint PK_Editoriales Primary Key(ID)
go
Alter Table Idiomas
add constraint PK_Idiomas Primary key(ID)
go
Alter Table Libros_x_Biblioteca
add constraint PK_LibrosBiblioteca Primary key(ID)
go
Alter TAble Bibliotecas
Add constraint PK_Bibliotecas primary key(ID)
go
Alter table Formatos
Add constraint PK_Formatos primary key(ID)
go
Alter Table Usuarios
Add constraint PK_Usuarios primary key (ID)
go
Alter Table Usuarios
Add Constraint UQ_Usuarios Unique(Email)
go
Alter Table Generos
Add constraint PK_Generos primary key (ID)
go
Alter Table Autores
Add constraint PK_Autores primary key(ID)
go
Alter Table Paises
add constraint PK_Paises primary key(ID)
go
Alter table TiposUsuarios
add constraint PK_TiposUsuarios primary key(ID)
go
Alter Table Generos_x_Libro
add constraint PK_Generos_x_Libro primary key (IDLibro, IDGenero)
go
Alter Table Autores_x_Libro
add constraint PK_Autores_X_Libro primary key (IDAutor, IDLibro)
go
-- Foreign Key
Alter Table Portadas
Add constraint FK_PortadasLibro Foreign Key(IDLibro) references Libros(ID)
go
Alter table Libros
Add Constraint FK_LibrosEditorial Foreign Key(IDEditorial) references Editoriales(ID)
go
Alter table Libros
Add Constraint FK_LibrosIdiomas Foreign key(IDIdioma) references Idiomas(ID)
go
Alter Table Generos_x_Libro
Add constraint FK_GxL_Libro Foreign Key (IDLibro) references Libros (ID)
go
Alter Table Generos_x_Libro
Add constraint FK_GxL_Genero Foreign Key (IDGenero) references Generos (ID)
go
Alter Table Autores_x_Libro
Add constraint FK_AxL_Autor Foreign Key (IDAutor) references Autores(ID)
go
Alter Table Autores_x_Libro
Add constraint FK_AxL_Libro Foreign Key (IDLibro) references Libros(ID)
go
Alter Table Autores
Add constraint FK_AutorPais Foreign Key (IDPais) references Paises(ID)
go
Alter Table Bibliotecas
Add constraint FK_BibliotecaUsuario Foreign key (IDUsuario) references Usuarios(ID)
go
Alter Table Libros_x_Biblioteca
Add constraint FK_LxB_Biblioteca Foreign key (IDBiblioteca) references Bibliotecas(ID)
go
Alter Table Libros_x_Biblioteca
Add constraint FK_LxB_Libros Foreign key (IDLibro) references Libros(ID)
go
Alter Table Libros_x_Biblioteca
Add constraint FK_LxB_Formatos Foreign key (IDFormato) references Formatos(ID)
go
Alter Table Usuarios
Add constraint FK_UsuariosPais Foreign Key (IDPais) references Paises(ID)
go
Alter Table Usuarios
Add constraint FK_UsuariosTipo Foreign Key (IDTipo) references TiposUsuarios(ID)
go
/* Checks */

/* Defaults */






