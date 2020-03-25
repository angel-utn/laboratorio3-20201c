Create Database ActividadClase02
GO
Use ActividadClase02
Go
Create Table Idiomas(
 ID int not null primary key identity(1, 1),
 Idioma varchar(15) not null
)
Go
Create Table Personas(
 ID bigint not null primary key identity (1, 1),
 Nombre varchar(50) not null
)
Go
Create Table Idiomas_x_Persona(
 IDIdioma int not null foreign key references Idiomas(ID),
 IDPersona bigint not null foreign key references Personas(ID),
 primary key(IDIdioma, IDPersona)
)