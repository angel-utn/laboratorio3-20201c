Create Database Universidad
GO
Use Universidad
go
Create Table Carreras(
    ID int not null primary key identity (10, 10),
    Nombre varchar(50) not null,
    Tipo tinyint not null check (Tipo >= 1 and Tipo <= 3)
)
go
Create Table Alumnos(
    Legajo bigint not null primary key,
    Apellido varchar(50) not null,
    Nombres varchar(50) not null,
    Fnac date not null, -- Comprueben qué ocurre si ponen una fecha que no existe. Por ejemplo: 29/02/2021
    Genero char null,
    IDCarrera int not null foreign key references Carreras(ID)
)

-- Verifiquen qué diferencia hay entre char y varchar