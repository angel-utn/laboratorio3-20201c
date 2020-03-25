/* Datos Personas */
Insert into Personas(Nombre)
Values ('Jimena')
Go
Insert into Personas(Nombre)
Values ('Carlos')
Go
Insert into Personas(Nombre)
Values ('Analía')
Go
Insert into Personas(Nombre)
Values ('Kristopher')
Go
Insert into Personas(Nombre)
Values ('María')
Go
/* Datos Idiomas */
Insert into Idiomas(Idioma)
Values ('Inglés')
Go
Insert into Idiomas(Idioma)
Values ('Francés')
Go
Insert into Idiomas(Idioma)
Values ('Español')
Go
Insert into Idiomas(Idioma)
Values ('Alemán')
Go
/* Datos Idiomas_x_Persona */
Insert into Idiomas_x_Persona(IDPersona, IDIdioma)
Values (1, 1),
	   (1, 2),
	   (2, 3),
	   (3, 1),
	   (3, 2),
	   (3, 3),
	   (4, 4)

