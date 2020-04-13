Use Bookworm
go
Insert into Generos(Nombre) values ('Suspenso')
GO
Insert into Autores(Apellidos, Nombres, IDPais, FechaNac, Sexo) VALUES ('Simon', 'Angel', 2, CAST(N'1986-10-02' AS Date), 'M')
GO
Insert into Editoriales(Nombre) VALUES ('Kloster Publishing')
GO
Insert into Editoriales(Nombre) VALUES ('Editorial Calabuig')
GO
Insert into Editoriales(Nombre) VALUES ('Villalbooks')
GO
USE [Bookworm]
GO
SET IDENTITY_INSERT [dbo].[TiposUsuarios] ON 
GO
INSERT [dbo].[TiposUsuarios] ([ID], [Nombre]) VALUES (1, N'Free')
GO
INSERT [dbo].[TiposUsuarios] ([ID], [Nombre]) VALUES (2, N'Basic')
GO
INSERT [dbo].[TiposUsuarios] ([ID], [Nombre]) VALUES (3, N'Reader')
GO
INSERT [dbo].[TiposUsuarios] ([ID], [Nombre]) VALUES (4, N'Bibliotecarian')
GO
SET IDENTITY_INSERT [dbo].[TiposUsuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (1, N'aalberti@hotmail.com.ar', 4, 1, N'Alberti', N'Alan Fernando', N'M', CAST(N'2012-10-29' AS Date), CAST(N'1986-05-02' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (2, N'kaltamirano@hotmail.com', 8, 4, N'Altamirano', N'Kevin Sebastian', N'M', CAST(N'2010-07-19' AS Date), CAST(N'2005-01-31' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (3, N'fbrandan@klostermail.com', 1, 1, N'Brandan', N'Fernando Ezequiel', N'M', CAST(N'2010-01-21' AS Date), CAST(N'1998-06-10' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (4, N'pbriceno_espejo@hotmail.com.ar', 5, 3, N'Brice�o Espejo', N'Paul Antoni', N'M', CAST(N'2015-10-25' AS Date), CAST(N'1986-02-08' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (5, N'ccaceres_leguizamon@utn.edu.ar', 1, 1, N'Caceres Leguizamon', N'Carlos Andres', N'M', CAST(N'2013-02-08' AS Date), CAST(N'2011-01-26' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (6, N'pcaceres@utn.edu.ar', 4, 2, N'Caceres', N'Pedro Dario', N'M', CAST(N'2012-12-31' AS Date), CAST(N'1970-02-16' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (7, N'ccastro@yahoo.com.ar', 2, 3, N'Castro', N'Cristian Gabriel', N'M', CAST(N'2017-09-11' AS Date), CAST(N'2011-01-10' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (8, N'fcoronel@gmail.com', 10, 3, N'Coronel', N'Franco Nicol�s', N'M', CAST(N'2015-08-22' AS Date), CAST(N'1972-05-04' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (9, N'jcorrionero@gmail.com', 2, 3, N'Corrionero', N'Juan Ignacio', N'M', CAST(N'2014-12-03' AS Date), CAST(N'2009-09-04' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (10, N'fcrespo@hotmail.com', 5, 4, N'Crespo', N'Francisco Jose', N'M', CAST(N'2015-02-26' AS Date), CAST(N'1988-06-04' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (11, N'scuquejo benitez@hotmail.com.ar', 6, 3, N'Cuquejo Benitez', N'Sebastian Daniel', N'M', CAST(N'2011-02-21' AS Date), NULL)
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (12, N'tde_pamphilis@klostermail.com', 4, 4, N'De Pamphilis', N'Tomas Agustin', N'M', CAST(N'2012-06-07' AS Date), CAST(N'1991-02-26' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (13, N'ddi_stefano@klostermail.com', 4, 3, N'Di Stefano', N'Diego Alberto', N'M', CAST(N'2011-10-04' AS Date), CAST(N'2001-02-16' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (14, N'adiaz@hotmail.com.ar', 8, 2, N'Diaz', N'Agustin Ezequiel', N'M', CAST(N'2017-07-25' AS Date), CAST(N'1995-12-13' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (15, N'mdominguez@klostermail.com', 4, 2, N'Dominguez', N'Maximiliano Fernando Luis', N'M', CAST(N'2010-05-09' AS Date), CAST(N'1992-12-09' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (16, N'dfernandez@utn.edu.ar', 7, 3, N'Fernandez', N'Daniel David', N'M', CAST(N'2010-09-05' AS Date), CAST(N'2001-07-24' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (17, N'sflores@utn.edu.ar', 4, 1, N'Flores', N'Santiago Javier', N'M', CAST(N'2014-10-08' AS Date), CAST(N'1974-06-15' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (18, N'ggigeroa@gmail.com', 7, 4, N'Gigeroa', N'Guillermo Adrian', N'M', CAST(N'2015-01-06' AS Date), CAST(N'1982-10-11' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (19, N'minsaurralde@gmail.com', 5, 1, N'Insaurralde', N'Matias', N'M', CAST(N'2015-02-02' AS Date), CAST(N'1972-07-31' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (20, N'jjuarez@hotmail.com.ar', 7, 4, N'Juarez', N'Juan Manuel', N'M', CAST(N'2014-03-16' AS Date), CAST(N'1971-05-18' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (21, N'ilacioppa@hotmail.com.ar', 5, 4, N'Lacioppa', N'Ignacio', N'M', CAST(N'2013-09-05' AS Date), CAST(N'1985-05-26' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (22, N'mleal@hotmail.com.ar', 8, 2, N'Leal', N'Marcos Javier', N'M', CAST(N'2012-07-28' AS Date), CAST(N'1985-01-11' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (23, N'plerose@klostermail.com', 10, 4, N'Lerose', N'Pedro Esteban', N'M', CAST(N'2013-12-25' AS Date), CAST(N'1981-09-28' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (24, N'gmarcati@hotmail.com.ar', 2, 2, N'Marcati', N'Gonzalo Ezequiel', N'M', CAST(N'2017-01-07' AS Date), NULL)
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (25, N'nmazzitello@hotmail.com.ar', 6, 1, N'Mazzitello', N'Nicolas Antonio', N'M', CAST(N'2013-07-16' AS Date), CAST(N'1980-10-06' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (26, N'bmolteni@klostermail.com', 1, 2, N'Molteni', N'Bruno Mauricio', N'M', CAST(N'2011-04-10' AS Date), CAST(N'1998-03-17' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (27, N'jpereyra@gmail.com', 4, 2, N'Pereyra', N'Javier Eduardo', N'M', CAST(N'2012-08-30' AS Date), CAST(N'2010-08-06' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (28, N'mquintana@yahoo.com.ar', 11, 4, N'Quintana', N'Matias Daniel', N'M', CAST(N'2015-05-07' AS Date), CAST(N'1978-09-22' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (29, N'wrepolledo_rodas@klostermail.com', 9, 4, N'Repolledo Rodas', N'Wendy Maite', N'F', CAST(N'2015-05-26' AS Date), CAST(N'2006-01-25' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (30, N'cresler@gmail.com', 1, 1, N'Resler', N'Cristian Facundo', N'M', CAST(N'2012-04-27' AS Date), NULL)
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (31, N'nrevollo@klostermail.com', 1, 3, N'Revollo', N'Nahuel Nicolas', N'M', CAST(N'2014-06-30' AS Date), CAST(N'1999-04-01' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (32, N'lroccia@hotmail.com.ar', 11, 3, N'Roccia', N'Lilian Denise', N'F', CAST(N'2011-11-19' AS Date), CAST(N'1972-03-21' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (33, N'lrodriguez@utn.edu.ar', 9, 4, N'Rodriguez', N'Leandro Hernan', N'M', CAST(N'2014-03-12' AS Date), NULL)
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (34, N'ctotilo@hotmail.com.ar', 8, 3, N'Totilo', N'Cristian Miguel', N'M', CAST(N'2016-08-27' AS Date), CAST(N'2008-07-17' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (35, N'ctrejo@hotmail.com', 2, 1, N'Trejo', N'Carlos Saul', N'M', CAST(N'2012-01-25' AS Date), CAST(N'2009-03-27' AS Date))
GO
INSERT [dbo].[Usuarios] ([ID], [Email], [IDPais], [IDTipo], [Apellidos], [Nombres], [Sexo], [FechaReg], [FechaNac]) VALUES (36, N'lvivas@gmail.com', 11, 2, N'Vivas', N'Lucas Emiliano', N'M', CAST(N'2016-04-20' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Bibliotecas] ON 
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (1, 2, CAST(N'2019-09-06' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (2, 4, CAST(N'2019-11-02' AS Date), N'Cuentos para leer en verano')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (3, 7, CAST(N'2019-08-13' AS Date), N'A leer!')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (4, 20, CAST(N'2019-06-08' AS Date), N'Leyendo')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (5, 27, CAST(N'2019-10-18' AS Date), N'Mi lista de libros')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (6, 35, CAST(N'2019-11-08' AS Date), N'Libros a leer')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (7, 16, CAST(N'2019-06-08' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (8, 18, CAST(N'2019-12-19' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (9, 4, CAST(N'2019-09-11' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (10, 19, CAST(N'2019-01-11' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (11, 18, CAST(N'2019-08-18' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (12, 19, CAST(N'2019-03-12' AS Date), N'Mis libros favoritos')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (13, 32, CAST(N'2019-10-25' AS Date), N'Recomendados')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (14, 29, CAST(N'2019-03-25' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (15, 17, CAST(N'2019-12-22' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (16, 36, CAST(N'2019-12-30' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (17, 19, CAST(N'2019-01-09' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (18, 1, CAST(N'2019-06-25' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (19, 35, CAST(N'2019-08-10' AS Date), N'Mis libros')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (20, 36, CAST(N'2019-02-04' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (21, 5, CAST(N'2020-01-02' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (22, 5, CAST(N'2019-06-25' AS Date), N'No me gustaron')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (23, 9, CAST(N'2019-11-17' AS Date), N'No recomiendo')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (24, 15, CAST(N'2019-09-03' AS Date), N'Leyendo')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (25, 33, CAST(N'2019-05-19' AS Date), N'Leer en vacaciones')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (26, 4, CAST(N'2019-06-21' AS Date), N'Lectura pendiente')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (27, 13, CAST(N'2019-12-05' AS Date), N'Libros que no le�')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (28, 30, CAST(N'2019-06-15' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (29, 34, CAST(N'2019-02-07' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (30, 12, CAST(N'2019-05-16' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (31, 3, CAST(N'2019-02-11' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (32, 31, CAST(N'2019-06-01' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (33, 32, CAST(N'2019-12-29' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (34, 25, CAST(N'2019-08-28' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (35, 24, CAST(N'2019-02-15' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (36, 8, CAST(N'2019-10-16' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (37, 34, CAST(N'2019-09-05' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (38, 8, CAST(N'2019-01-27' AS Date), N'Universidad')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (39, 34, CAST(N'2019-01-04' AS Date), N'Libros en venta')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (40, 7, CAST(N'2019-08-08' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (41, 35, CAST(N'2019-03-15' AS Date), N'Listado de MercadoLibre')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (42, 7, CAST(N'2019-09-27' AS Date), N'Librazos')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (43, 3, CAST(N'2019-07-01' AS Date), N'Books')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (44, 22, CAST(N'2019-05-27' AS Date), N'Mejores rankeados')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (45, 9, CAST(N'2019-12-28' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (46, 26, CAST(N'2019-08-23' AS Date), N'Mi biblioteca personal')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (47, 10, CAST(N'2019-07-09' AS Date), N'Libros a regalar')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (48, 18, CAST(N'2019-11-21' AS Date), N'Libros a vender')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (49, 29, CAST(N'2019-07-16' AS Date), N'Libros para leer en la cuarentena')
GO
INSERT [dbo].[Bibliotecas] ([ID], [IDUsuario], [FechaCreacion], [Nombre]) VALUES (50, 11, CAST(N'2019-02-27' AS Date), N'Libros para ir a dormir')
GO
SET IDENTITY_INSERT [dbo].[Bibliotecas] OFF
GO
SET IDENTITY_INSERT [dbo].[Libros_x_Biblioteca] ON 
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (1, 13, 32, 6, CAST(8.8 AS Decimal(3, 1)), CAST(6.6 AS Decimal(3, 1)), CAST(N'1986-10-31' AS Date), CAST(N'1992-07-30' AS Date), CAST(N'1997-03-02' AS Date), 7274.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (2, 44, 31, 3, CAST(7.7 AS Decimal(3, 1)), CAST(5.9 AS Decimal(3, 1)), CAST(N'1980-09-03' AS Date), CAST(N'1992-03-04' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (3, 68, 43, 9, CAST(2.7 AS Decimal(3, 1)), CAST(3.3 AS Decimal(3, 1)), CAST(N'1981-12-09' AS Date), CAST(N'1998-06-18' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (4, 4, 2, 1, CAST(6.9 AS Decimal(3, 1)), CAST(5.4 AS Decimal(3, 1)), CAST(N'1988-09-12' AS Date), CAST(N'1992-04-15' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (5, 64, 40, 1, NULL, CAST(8.4 AS Decimal(3, 1)), CAST(N'1984-09-29' AS Date), CAST(N'2001-07-23' AS Date), CAST(N'1995-12-31' AS Date), 5485.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (6, 47, 20, 5, CAST(8.9 AS Decimal(3, 1)), CAST(2.7 AS Decimal(3, 1)), CAST(N'1988-06-21' AS Date), CAST(N'1992-04-03' AS Date), CAST(N'1991-11-02' AS Date), 8848.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (7, 8, 35, 10, CAST(8.5 AS Decimal(3, 1)), CAST(1.7 AS Decimal(3, 1)), CAST(N'1984-07-26' AS Date), CAST(N'1992-06-05' AS Date), CAST(N'1994-05-31' AS Date), 5366.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (8, 28, 40, 9, CAST(4.4 AS Decimal(3, 1)), NULL, CAST(N'1988-07-17' AS Date), CAST(N'2001-01-13' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (9, 14, 40, 4, CAST(1.8 AS Decimal(3, 1)), NULL, CAST(N'1986-03-03' AS Date), CAST(N'2001-12-28' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (10, 35, 10, 2, CAST(1.3 AS Decimal(3, 1)), CAST(2.1 AS Decimal(3, 1)), CAST(N'1989-03-14' AS Date), CAST(N'2000-09-28' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (11, 22, 22, 3, CAST(10.7 AS Decimal(3, 1)), CAST(9.3 AS Decimal(3, 1)), CAST(N'1983-05-11' AS Date), CAST(N'1999-04-17' AS Date), CAST(N'2002-01-21' AS Date), 4398.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (12, 41, 6, 9, NULL, CAST(8.9 AS Decimal(3, 1)), CAST(N'1982-01-21' AS Date), CAST(N'1996-07-26' AS Date), CAST(N'1994-03-14' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (13, 17, 30, 3, CAST(6.2 AS Decimal(3, 1)), CAST(3.6 AS Decimal(3, 1)), CAST(N'1988-11-10' AS Date), CAST(N'1996-07-17' AS Date), CAST(N'1992-02-25' AS Date), 91.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (14, 20, 13, 7, NULL, CAST(2.5 AS Decimal(3, 1)), CAST(N'1988-12-17' AS Date), CAST(N'2001-10-01' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (15, 40, 26, 3, CAST(8.2 AS Decimal(3, 1)), CAST(6.8 AS Decimal(3, 1)), CAST(N'1984-02-21' AS Date), CAST(N'1994-04-27' AS Date), NULL, 929.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (16, 36, 39, 4, CAST(5.8 AS Decimal(3, 1)), NULL, CAST(N'1986-10-27' AS Date), CAST(N'2000-12-23' AS Date), NULL, 4113.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (17, 65, 17, 7, CAST(5.3 AS Decimal(3, 1)), NULL, CAST(N'1980-01-22' AS Date), CAST(N'1991-06-20' AS Date), CAST(N'1995-09-29' AS Date), 5541.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (18, 30, 33, 10, NULL, NULL, CAST(N'1980-01-06' AS Date), CAST(N'1992-12-29' AS Date), CAST(N'2000-08-05' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (19, 65, 6, 2, CAST(8.9 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(N'1989-06-30' AS Date), CAST(N'1998-07-23' AS Date), CAST(N'2001-09-12' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (20, 62, 46, 4, CAST(7.7 AS Decimal(3, 1)), CAST(9.1 AS Decimal(3, 1)), CAST(N'1983-12-24' AS Date), CAST(N'1992-10-31' AS Date), CAST(N'1994-05-25' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (21, 46, 43, 9, NULL, CAST(10.4 AS Decimal(3, 1)), CAST(N'1989-11-17' AS Date), CAST(N'1996-04-20' AS Date), CAST(N'1995-01-24' AS Date), 8631.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (22, 55, 27, 1, CAST(5.4 AS Decimal(3, 1)), CAST(10.4 AS Decimal(3, 1)), CAST(N'1988-10-18' AS Date), CAST(N'1995-10-03' AS Date), NULL, 5373.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (23, 47, 6, 5, CAST(8.5 AS Decimal(3, 1)), CAST(6.0 AS Decimal(3, 1)), CAST(N'1981-07-31' AS Date), CAST(N'1996-12-11' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (24, 29, 10, 6, CAST(6.5 AS Decimal(3, 1)), CAST(2.4 AS Decimal(3, 1)), CAST(N'1980-09-02' AS Date), CAST(N'2002-07-23' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (25, 36, 2, 5, NULL, CAST(8.0 AS Decimal(3, 1)), CAST(N'1988-10-26' AS Date), CAST(N'2000-03-11' AS Date), CAST(N'1996-09-16' AS Date), 383.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (26, 42, 28, 5, CAST(7.7 AS Decimal(3, 1)), CAST(5.8 AS Decimal(3, 1)), CAST(N'1980-03-13' AS Date), CAST(N'1997-01-14' AS Date), CAST(N'1997-10-30' AS Date), 662.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (27, 34, 49, 6, CAST(8.3 AS Decimal(3, 1)), CAST(1.7 AS Decimal(3, 1)), CAST(N'1988-02-12' AS Date), CAST(N'1993-06-18' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (28, 51, 1, 7, CAST(9.6 AS Decimal(3, 1)), CAST(5.9 AS Decimal(3, 1)), CAST(N'1989-09-05' AS Date), CAST(N'1991-08-01' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (29, 27, 35, 5, CAST(4.9 AS Decimal(3, 1)), CAST(1.1 AS Decimal(3, 1)), CAST(N'1985-10-24' AS Date), CAST(N'1995-08-07' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (30, 4, 43, 8, NULL, CAST(7.4 AS Decimal(3, 1)), CAST(N'1983-12-01' AS Date), CAST(N'1990-12-10' AS Date), CAST(N'1991-06-14' AS Date), 544.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (31, 48, 27, 9, CAST(3.1 AS Decimal(3, 1)), CAST(6.9 AS Decimal(3, 1)), CAST(N'1980-03-06' AS Date), CAST(N'2002-06-04' AS Date), CAST(N'2003-02-26' AS Date), 9773.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (32, 13, 42, 7, CAST(4.5 AS Decimal(3, 1)), CAST(3.5 AS Decimal(3, 1)), CAST(N'1990-10-25' AS Date), CAST(N'1990-06-14' AS Date), CAST(N'1991-01-20' AS Date), 8468.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (33, 57, 45, 8, CAST(8.5 AS Decimal(3, 1)), NULL, CAST(N'1984-01-13' AS Date), CAST(N'1998-09-02' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (34, 47, 47, 7, CAST(9.9 AS Decimal(3, 1)), NULL, CAST(N'1989-06-13' AS Date), CAST(N'1994-05-23' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (35, 20, 49, 10, CAST(3.6 AS Decimal(3, 1)), CAST(5.2 AS Decimal(3, 1)), CAST(N'1984-05-01' AS Date), CAST(N'1991-12-06' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (36, 48, 5, 7, CAST(1.3 AS Decimal(3, 1)), CAST(5.5 AS Decimal(3, 1)), CAST(N'1985-07-28' AS Date), CAST(N'2000-03-21' AS Date), CAST(N'2000-10-28' AS Date), 6350.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (37, 56, 35, 2, NULL, CAST(5.7 AS Decimal(3, 1)), CAST(N'1980-08-04' AS Date), CAST(N'1993-05-22' AS Date), CAST(N'1994-02-19' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (38, 11, 49, 5, CAST(8.3 AS Decimal(3, 1)), CAST(7.3 AS Decimal(3, 1)), CAST(N'1985-10-11' AS Date), CAST(N'1997-12-13' AS Date), CAST(N'1998-07-11' AS Date), 5628.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (39, 59, 12, 8, NULL, CAST(10.5 AS Decimal(3, 1)), CAST(N'1987-07-26' AS Date), CAST(N'1992-04-03' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (40, 64, 38, 5, CAST(10.9 AS Decimal(3, 1)), CAST(2.5 AS Decimal(3, 1)), CAST(N'1990-07-25' AS Date), CAST(N'1997-04-29' AS Date), NULL, 5323.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (41, 10, 21, 1, CAST(4.8 AS Decimal(3, 1)), NULL, CAST(N'1988-10-24' AS Date), CAST(N'1997-07-19' AS Date), NULL, 7024.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (42, 65, 24, 3, CAST(5.1 AS Decimal(3, 1)), NULL, CAST(N'1986-05-31' AS Date), CAST(N'2001-12-29' AS Date), CAST(N'2002-12-21' AS Date), 3944.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (43, 35, 47, 4, NULL, NULL, CAST(N'1987-02-18' AS Date), CAST(N'1993-02-02' AS Date), CAST(N'1994-02-07' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (44, 3, 40, 8, CAST(1.8 AS Decimal(3, 1)), CAST(7.6 AS Decimal(3, 1)), CAST(N'1981-02-23' AS Date), CAST(N'2000-11-24' AS Date), CAST(N'2001-03-12' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (45, 10, 15, 3, CAST(10.4 AS Decimal(3, 1)), CAST(4.6 AS Decimal(3, 1)), CAST(N'1983-04-18' AS Date), CAST(N'2003-08-23' AS Date), CAST(N'2004-02-16' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (46, 27, 8, 2, NULL, CAST(2.6 AS Decimal(3, 1)), CAST(N'1990-01-13' AS Date), CAST(N'1999-03-27' AS Date), CAST(N'2000-01-16' AS Date), 5751.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (47, 41, 39, 9, CAST(10.5 AS Decimal(3, 1)), CAST(8.8 AS Decimal(3, 1)), CAST(N'1987-07-15' AS Date), CAST(N'1998-08-04' AS Date), NULL, 2682.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (48, 51, 43, 5, CAST(10.6 AS Decimal(3, 1)), CAST(8.6 AS Decimal(3, 1)), CAST(N'1988-06-23' AS Date), CAST(N'2000-06-30' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (49, 65, 43, 5, CAST(6.3 AS Decimal(3, 1)), CAST(9.2 AS Decimal(3, 1)), CAST(N'1985-03-25' AS Date), CAST(N'1996-11-23' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (50, 15, 7, 9, NULL, CAST(5.8 AS Decimal(3, 1)), CAST(N'1983-05-28' AS Date), CAST(N'1994-02-05' AS Date), CAST(N'1994-11-10' AS Date), 3551.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (51, 31, 16, 3, CAST(6.3 AS Decimal(3, 1)), CAST(9.6 AS Decimal(3, 1)), CAST(N'1988-12-29' AS Date), CAST(N'1995-12-08' AS Date), CAST(N'1996-11-13' AS Date), 2808.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (52, 60, 38, 7, CAST(10.2 AS Decimal(3, 1)), CAST(6.0 AS Decimal(3, 1)), CAST(N'1983-09-29' AS Date), CAST(N'1993-12-10' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (53, 38, 13, 5, CAST(7.9 AS Decimal(3, 1)), CAST(4.2 AS Decimal(3, 1)), CAST(N'1982-03-28' AS Date), CAST(N'1997-11-19' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (54, 68, 27, 2, CAST(7.8 AS Decimal(3, 1)), CAST(5.3 AS Decimal(3, 1)), CAST(N'1980-12-04' AS Date), CAST(N'1992-10-18' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (55, 65, 46, 5, NULL, CAST(5.7 AS Decimal(3, 1)), CAST(N'1988-02-15' AS Date), CAST(N'2001-08-09' AS Date), CAST(N'2002-01-31' AS Date), 4436.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (56, 54, 41, 9, CAST(2.8 AS Decimal(3, 1)), CAST(3.3 AS Decimal(3, 1)), CAST(N'1982-02-04' AS Date), CAST(N'1996-01-12' AS Date), CAST(N'1996-03-22' AS Date), 1425.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (57, 28, 25, 9, CAST(11.0 AS Decimal(3, 1)), CAST(8.1 AS Decimal(3, 1)), CAST(N'1980-05-20' AS Date), CAST(N'1991-04-23' AS Date), CAST(N'1992-01-27' AS Date), 6857.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (58, 14, 2, 6, CAST(5.5 AS Decimal(3, 1)), NULL, CAST(N'1987-07-01' AS Date), CAST(N'1993-11-22' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (59, 67, 41, 9, CAST(5.1 AS Decimal(3, 1)), NULL, CAST(N'1990-08-21' AS Date), CAST(N'1997-12-03' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (60, 39, 33, 2, CAST(3.2 AS Decimal(3, 1)), CAST(9.3 AS Decimal(3, 1)), CAST(N'1986-09-21' AS Date), CAST(N'2002-09-16' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (61, 53, 14, 8, CAST(5.8 AS Decimal(3, 1)), CAST(10.1 AS Decimal(3, 1)), CAST(N'1986-02-18' AS Date), CAST(N'2001-07-15' AS Date), CAST(N'2001-07-29' AS Date), 8983.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (62, 60, 49, 3, NULL, CAST(2.3 AS Decimal(3, 1)), CAST(N'1987-11-09' AS Date), CAST(N'2001-01-25' AS Date), CAST(N'2001-02-13' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (63, 35, 37, 1, CAST(7.9 AS Decimal(3, 1)), CAST(10.3 AS Decimal(3, 1)), CAST(N'1985-04-22' AS Date), CAST(N'1990-08-11' AS Date), CAST(N'1991-09-10' AS Date), 6669.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (64, 44, 18, 1, NULL, CAST(7.3 AS Decimal(3, 1)), CAST(N'1987-12-27' AS Date), CAST(N'1991-06-13' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (65, 55, 37, 8, CAST(6.2 AS Decimal(3, 1)), CAST(10.9 AS Decimal(3, 1)), CAST(N'1981-02-27' AS Date), CAST(N'2000-10-10' AS Date), NULL, 4540.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (66, 19, 20, 7, CAST(8.6 AS Decimal(3, 1)), NULL, CAST(N'1990-06-18' AS Date), CAST(N'1997-01-18' AS Date), NULL, 5110.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (67, 37, 41, 9, CAST(6.0 AS Decimal(3, 1)), NULL, CAST(N'1990-03-01' AS Date), CAST(N'1990-09-10' AS Date), CAST(N'1991-09-27' AS Date), 5828.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (68, 27, 16, 10, NULL, NULL, CAST(N'1990-02-05' AS Date), CAST(N'1994-10-18' AS Date), CAST(N'1995-02-22' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (69, 62, 41, 10, CAST(9.1 AS Decimal(3, 1)), CAST(5.7 AS Decimal(3, 1)), CAST(N'1990-04-06' AS Date), CAST(N'2000-03-02' AS Date), CAST(N'2000-10-07' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (70, 26, 26, 9, CAST(10.0 AS Decimal(3, 1)), CAST(10.1 AS Decimal(3, 1)), CAST(N'1988-12-01' AS Date), CAST(N'1995-05-10' AS Date), CAST(N'1995-05-13' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (71, 14, 1, 2, NULL, CAST(2.2 AS Decimal(3, 1)), CAST(N'1988-02-18' AS Date), CAST(N'1995-08-19' AS Date), CAST(N'1996-07-02' AS Date), 2344.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (72, 51, 7, 4, CAST(7.1 AS Decimal(3, 1)), CAST(6.2 AS Decimal(3, 1)), CAST(N'1985-09-11' AS Date), CAST(N'1991-08-08' AS Date), NULL, 6606.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (73, 62, 19, 3, CAST(6.4 AS Decimal(3, 1)), CAST(1.7 AS Decimal(3, 1)), CAST(N'1983-05-21' AS Date), CAST(N'1993-10-13' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (74, 55, 12, 5, CAST(8.2 AS Decimal(3, 1)), CAST(4.7 AS Decimal(3, 1)), CAST(N'1985-07-08' AS Date), CAST(N'1999-04-10' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (75, 27, 49, 1, NULL, CAST(10.4 AS Decimal(3, 1)), CAST(N'1983-08-07' AS Date), CAST(N'1993-03-01' AS Date), CAST(N'1993-06-20' AS Date), 2805.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (76, 65, 44, 3, CAST(9.6 AS Decimal(3, 1)), CAST(10.5 AS Decimal(3, 1)), CAST(N'1990-12-12' AS Date), CAST(N'1996-06-28' AS Date), CAST(N'1996-10-21' AS Date), 3303.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (77, 16, 6, 9, CAST(7.8 AS Decimal(3, 1)), CAST(3.7 AS Decimal(3, 1)), CAST(N'1980-12-05' AS Date), CAST(N'2001-10-06' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (78, 59, 21, 6, CAST(3.8 AS Decimal(3, 1)), CAST(7.8 AS Decimal(3, 1)), CAST(N'1990-05-20' AS Date), CAST(N'1993-03-23' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (79, 37, 45, 8, CAST(4.2 AS Decimal(3, 1)), CAST(4.1 AS Decimal(3, 1)), CAST(N'1986-07-07' AS Date), CAST(N'1997-01-26' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (80, 36, 19, 4, NULL, CAST(2.5 AS Decimal(3, 1)), CAST(N'1980-12-30' AS Date), CAST(N'1990-02-17' AS Date), CAST(N'1990-02-21' AS Date), 3243.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (81, 56, 2, 7, CAST(8.9 AS Decimal(3, 1)), CAST(8.6 AS Decimal(3, 1)), CAST(N'1980-10-10' AS Date), CAST(N'1991-03-08' AS Date), CAST(N'1992-02-11' AS Date), 2580.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (82, 62, 22, 8, CAST(3.4 AS Decimal(3, 1)), CAST(3.4 AS Decimal(3, 1)), CAST(N'1985-01-02' AS Date), CAST(N'2001-10-26' AS Date), CAST(N'2002-10-08' AS Date), 4314.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (83, 1, 34, 1, CAST(8.2 AS Decimal(3, 1)), NULL, CAST(N'1990-12-14' AS Date), CAST(N'1999-09-02' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (84, 13, 22, 1, CAST(5.7 AS Decimal(3, 1)), NULL, CAST(N'1989-03-02' AS Date), CAST(N'1990-04-13' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (85, 2, 50, 10, CAST(7.2 AS Decimal(3, 1)), CAST(6.4 AS Decimal(3, 1)), CAST(N'1989-11-18' AS Date), CAST(N'1997-02-11' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (86, 65, 47, 2, CAST(7.0 AS Decimal(3, 1)), CAST(5.2 AS Decimal(3, 1)), CAST(N'1981-09-29' AS Date), CAST(N'1996-07-03' AS Date), CAST(N'1997-06-26' AS Date), 8163.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (87, 69, 29, 8, NULL, CAST(3.3 AS Decimal(3, 1)), CAST(N'1980-09-07' AS Date), CAST(N'1997-11-05' AS Date), CAST(N'1998-05-25' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (88, 14, 47, 9, CAST(5.6 AS Decimal(3, 1)), CAST(2.9 AS Decimal(3, 1)), CAST(N'1986-10-10' AS Date), CAST(N'2002-01-12' AS Date), CAST(N'2002-02-03' AS Date), 8327.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (89, 61, 10, 7, NULL, CAST(9.3 AS Decimal(3, 1)), CAST(N'1987-06-16' AS Date), CAST(N'1990-08-24' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (90, 63, 29, 6, CAST(8.3 AS Decimal(3, 1)), CAST(2.6 AS Decimal(3, 1)), CAST(N'1987-10-18' AS Date), CAST(N'1998-02-14' AS Date), NULL, 6712.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (91, 47, 31, 9, CAST(5.7 AS Decimal(3, 1)), NULL, CAST(N'1988-11-12' AS Date), CAST(N'2003-03-30' AS Date), NULL, 8400.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (92, 58, 18, 9, CAST(4.0 AS Decimal(3, 1)), NULL, CAST(N'1985-05-22' AS Date), CAST(N'1997-01-13' AS Date), CAST(N'1997-08-20' AS Date), 3244.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (93, 35, 27, 4, NULL, NULL, CAST(N'1981-07-08' AS Date), CAST(N'1999-10-31' AS Date), CAST(N'2000-04-29' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (94, 28, 2, 6, CAST(7.1 AS Decimal(3, 1)), CAST(10.6 AS Decimal(3, 1)), CAST(N'1989-02-08' AS Date), CAST(N'1997-12-13' AS Date), CAST(N'1998-10-03' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (95, 60, 12, 3, CAST(4.1 AS Decimal(3, 1)), CAST(3.6 AS Decimal(3, 1)), CAST(N'1988-07-11' AS Date), CAST(N'1993-06-15' AS Date), CAST(N'1994-02-11' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (96, 47, 17, 1, NULL, CAST(4.7 AS Decimal(3, 1)), CAST(N'1981-12-14' AS Date), CAST(N'2002-10-27' AS Date), CAST(N'2003-10-01' AS Date), 296.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (97, 33, 6, 9, CAST(2.9 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(N'1983-01-23' AS Date), CAST(N'2003-06-01' AS Date), NULL, 3051.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (98, 67, 15, 8, CAST(1.7 AS Decimal(3, 1)), CAST(7.6 AS Decimal(3, 1)), CAST(N'1984-08-30' AS Date), CAST(N'1995-09-06' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (99, 17, 23, 8, CAST(6.8 AS Decimal(3, 1)), CAST(2.1 AS Decimal(3, 1)), CAST(N'1989-09-15' AS Date), CAST(N'1990-11-27' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (100, 59, 10, 2, NULL, CAST(6.0 AS Decimal(3, 1)), CAST(N'1984-08-09' AS Date), CAST(N'1992-12-17' AS Date), CAST(N'1994-01-16' AS Date), 2493.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (101, 70, 33, 4, CAST(1.8 AS Decimal(3, 1)), CAST(1.4 AS Decimal(3, 1)), CAST(N'1983-12-20' AS Date), CAST(N'1994-06-08' AS Date), CAST(N'1994-11-30' AS Date), 1820.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (102, 61, 45, 4, CAST(9.5 AS Decimal(3, 1)), CAST(4.5 AS Decimal(3, 1)), CAST(N'1990-04-20' AS Date), CAST(N'1992-10-19' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (103, 59, 21, 7, CAST(4.5 AS Decimal(3, 1)), CAST(4.3 AS Decimal(3, 1)), CAST(N'1982-01-10' AS Date), CAST(N'1990-08-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (104, 29, 10, 1, CAST(5.8 AS Decimal(3, 1)), CAST(3.3 AS Decimal(3, 1)), CAST(N'1983-08-15' AS Date), CAST(N'1998-02-03' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (105, 48, 45, 5, NULL, CAST(8.0 AS Decimal(3, 1)), CAST(N'1986-06-19' AS Date), CAST(N'1996-08-09' AS Date), CAST(N'1997-06-19' AS Date), 7743.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (106, 25, 2, 9, CAST(3.4 AS Decimal(3, 1)), CAST(8.3 AS Decimal(3, 1)), CAST(N'1986-08-06' AS Date), CAST(N'2000-08-10' AS Date), CAST(N'2000-10-21' AS Date), 9743.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (107, 28, 33, 8, CAST(9.9 AS Decimal(3, 1)), CAST(1.4 AS Decimal(3, 1)), CAST(N'1982-10-02' AS Date), CAST(N'2002-05-14' AS Date), CAST(N'2002-07-20' AS Date), 3276.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (108, 23, 41, 6, CAST(9.7 AS Decimal(3, 1)), NULL, CAST(N'1985-06-22' AS Date), CAST(N'1995-04-03' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (109, 43, 35, 5, CAST(2.7 AS Decimal(3, 1)), NULL, CAST(N'1984-08-10' AS Date), CAST(N'1990-07-13' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (110, 69, 48, 6, CAST(1.4 AS Decimal(3, 1)), CAST(1.7 AS Decimal(3, 1)), CAST(N'1985-07-02' AS Date), CAST(N'1991-07-28' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (111, 51, 32, 5, CAST(5.0 AS Decimal(3, 1)), CAST(2.8 AS Decimal(3, 1)), CAST(N'1985-08-12' AS Date), CAST(N'1996-09-17' AS Date), CAST(N'1997-02-19' AS Date), 3306.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (112, 54, 13, 3, NULL, CAST(7.6 AS Decimal(3, 1)), CAST(N'1983-06-02' AS Date), CAST(N'1992-09-17' AS Date), CAST(N'1993-09-22' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (113, 34, 23, 1, CAST(6.4 AS Decimal(3, 1)), CAST(10.8 AS Decimal(3, 1)), CAST(N'1985-01-02' AS Date), CAST(N'2002-03-12' AS Date), CAST(N'2002-07-29' AS Date), 2280.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (114, 20, 26, 5, NULL, CAST(8.7 AS Decimal(3, 1)), CAST(N'1988-05-26' AS Date), CAST(N'1994-01-30' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (115, 25, 19, 6, CAST(5.7 AS Decimal(3, 1)), CAST(1.8 AS Decimal(3, 1)), CAST(N'1989-02-27' AS Date), CAST(N'1997-06-21' AS Date), NULL, 5789.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (116, 32, 23, 9, CAST(6.7 AS Decimal(3, 1)), NULL, CAST(N'1989-08-06' AS Date), CAST(N'2003-07-08' AS Date), NULL, 6501.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (117, 13, 8, 4, CAST(9.0 AS Decimal(3, 1)), NULL, CAST(N'1989-09-19' AS Date), CAST(N'1996-05-11' AS Date), CAST(N'1996-05-30' AS Date), 7590.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (118, 14, 47, 10, NULL, NULL, CAST(N'1980-06-06' AS Date), CAST(N'1992-09-10' AS Date), CAST(N'1993-02-19' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (119, 47, 7, 2, CAST(1.9 AS Decimal(3, 1)), CAST(9.1 AS Decimal(3, 1)), CAST(N'1985-09-25' AS Date), CAST(N'1998-07-22' AS Date), CAST(N'1998-10-03' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (120, 8, 34, 1, CAST(2.9 AS Decimal(3, 1)), CAST(4.4 AS Decimal(3, 1)), CAST(N'1983-01-08' AS Date), CAST(N'1991-10-18' AS Date), CAST(N'1991-12-18' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (121, 28, 1, 3, NULL, CAST(2.7 AS Decimal(3, 1)), CAST(N'1989-07-08' AS Date), CAST(N'2002-04-01' AS Date), CAST(N'2002-08-15' AS Date), 4744.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (122, 27, 30, 10, CAST(9.0 AS Decimal(3, 1)), CAST(3.1 AS Decimal(3, 1)), CAST(N'1980-02-08' AS Date), CAST(N'1999-12-12' AS Date), NULL, 2947.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (123, 34, 28, 6, CAST(4.6 AS Decimal(3, 1)), CAST(2.0 AS Decimal(3, 1)), CAST(N'1985-01-05' AS Date), CAST(N'1994-04-26' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (124, 67, 27, 6, CAST(8.6 AS Decimal(3, 1)), CAST(2.5 AS Decimal(3, 1)), CAST(N'1984-03-25' AS Date), CAST(N'1997-08-18' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (125, 60, 7, 8, NULL, CAST(2.7 AS Decimal(3, 1)), CAST(N'1989-11-30' AS Date), CAST(N'1999-01-12' AS Date), CAST(N'2000-01-20' AS Date), 7260.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (126, 38, 39, 6, CAST(5.6 AS Decimal(3, 1)), CAST(8.4 AS Decimal(3, 1)), CAST(N'1981-09-20' AS Date), CAST(N'2002-01-16' AS Date), CAST(N'2002-03-25' AS Date), 7332.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (127, 37, 37, 6, CAST(9.8 AS Decimal(3, 1)), CAST(1.8 AS Decimal(3, 1)), CAST(N'1983-07-27' AS Date), CAST(N'1991-10-26' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (128, 66, 12, 3, CAST(5.3 AS Decimal(3, 1)), CAST(3.5 AS Decimal(3, 1)), CAST(N'1988-10-20' AS Date), CAST(N'1994-09-02' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (129, 43, 43, 7, CAST(10.5 AS Decimal(3, 1)), CAST(4.3 AS Decimal(3, 1)), CAST(N'1981-08-07' AS Date), CAST(N'1996-09-24' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (130, 50, 24, 10, NULL, CAST(8.6 AS Decimal(3, 1)), CAST(N'1982-05-12' AS Date), CAST(N'1994-03-28' AS Date), CAST(N'1994-10-27' AS Date), 7819.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (131, 46, 40, 7, CAST(5.5 AS Decimal(3, 1)), CAST(6.4 AS Decimal(3, 1)), CAST(N'1982-12-19' AS Date), CAST(N'1996-08-05' AS Date), CAST(N'1997-08-03' AS Date), 4035.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (132, 61, 33, 5, CAST(10.9 AS Decimal(3, 1)), CAST(3.8 AS Decimal(3, 1)), CAST(N'1989-09-03' AS Date), CAST(N'2000-11-06' AS Date), CAST(N'2001-12-03' AS Date), 3434.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (133, 18, 40, 5, CAST(8.7 AS Decimal(3, 1)), NULL, CAST(N'1986-12-24' AS Date), CAST(N'1990-06-02' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (134, 62, 4, 2, CAST(3.7 AS Decimal(3, 1)), NULL, CAST(N'1990-05-05' AS Date), CAST(N'1996-06-07' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (135, 61, 14, 6, CAST(5.4 AS Decimal(3, 1)), CAST(5.5 AS Decimal(3, 1)), CAST(N'1984-08-04' AS Date), CAST(N'1992-05-01' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (136, 55, 29, 5, CAST(4.0 AS Decimal(3, 1)), CAST(5.0 AS Decimal(3, 1)), CAST(N'1987-05-02' AS Date), CAST(N'1995-02-25' AS Date), CAST(N'1995-09-03' AS Date), 5505.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (137, 17, 21, 4, NULL, CAST(5.5 AS Decimal(3, 1)), CAST(N'1981-10-16' AS Date), CAST(N'1998-09-19' AS Date), CAST(N'1999-07-22' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (138, 62, 7, 6, CAST(5.4 AS Decimal(3, 1)), CAST(10.6 AS Decimal(3, 1)), CAST(N'1980-04-26' AS Date), CAST(N'1999-02-14' AS Date), CAST(N'1999-07-03' AS Date), 1918.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (139, 45, 11, 1, NULL, CAST(7.7 AS Decimal(3, 1)), CAST(N'1990-12-01' AS Date), CAST(N'2001-12-25' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (140, 59, 45, 9, CAST(9.2 AS Decimal(3, 1)), CAST(7.6 AS Decimal(3, 1)), CAST(N'1986-01-11' AS Date), CAST(N'1998-10-31' AS Date), NULL, 2763.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (141, 10, 49, 4, CAST(7.1 AS Decimal(3, 1)), NULL, CAST(N'1983-11-26' AS Date), CAST(N'1998-03-09' AS Date), NULL, 2725.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (142, 19, 4, 9, CAST(7.7 AS Decimal(3, 1)), NULL, CAST(N'1988-05-13' AS Date), CAST(N'1990-11-24' AS Date), CAST(N'1991-05-18' AS Date), 7006.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (143, 31, 44, 5, NULL, NULL, CAST(N'1983-01-24' AS Date), CAST(N'1990-04-18' AS Date), CAST(N'1991-01-29' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (144, 23, 25, 3, CAST(5.6 AS Decimal(3, 1)), CAST(8.4 AS Decimal(3, 1)), CAST(N'1984-12-04' AS Date), CAST(N'1997-06-22' AS Date), CAST(N'1998-07-01' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (145, 26, 12, 9, CAST(3.8 AS Decimal(3, 1)), CAST(5.0 AS Decimal(3, 1)), CAST(N'1988-09-22' AS Date), CAST(N'1990-01-08' AS Date), CAST(N'1990-06-04' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (146, 27, 10, 6, NULL, CAST(3.0 AS Decimal(3, 1)), CAST(N'1990-04-20' AS Date), CAST(N'2003-08-26' AS Date), CAST(N'2004-09-05' AS Date), 7505.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (147, 19, 32, 9, CAST(8.7 AS Decimal(3, 1)), CAST(7.7 AS Decimal(3, 1)), CAST(N'1988-04-03' AS Date), CAST(N'1997-07-10' AS Date), NULL, 9927.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (148, 55, 14, 10, CAST(2.6 AS Decimal(3, 1)), CAST(2.2 AS Decimal(3, 1)), CAST(N'1990-05-12' AS Date), CAST(N'2000-12-24' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (149, 34, 36, 9, CAST(2.6 AS Decimal(3, 1)), CAST(9.5 AS Decimal(3, 1)), CAST(N'1983-02-15' AS Date), CAST(N'1993-12-21' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (150, 48, 48, 4, NULL, CAST(1.9 AS Decimal(3, 1)), CAST(N'1981-10-25' AS Date), CAST(N'1993-02-06' AS Date), CAST(N'1994-02-06' AS Date), 2472.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (151, 68, 19, 8, CAST(2.1 AS Decimal(3, 1)), CAST(6.4 AS Decimal(3, 1)), CAST(N'1990-12-12' AS Date), CAST(N'2001-04-17' AS Date), CAST(N'2001-11-19' AS Date), 407.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (152, 40, 3, 8, CAST(3.5 AS Decimal(3, 1)), CAST(9.1 AS Decimal(3, 1)), CAST(N'1981-07-12' AS Date), CAST(N'1999-07-16' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (153, 10, 44, 4, CAST(10.6 AS Decimal(3, 1)), CAST(1.6 AS Decimal(3, 1)), CAST(N'1984-08-04' AS Date), CAST(N'2002-11-12' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (154, 14, 46, 9, CAST(6.1 AS Decimal(3, 1)), CAST(8.8 AS Decimal(3, 1)), CAST(N'1983-06-06' AS Date), CAST(N'2000-08-20' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (155, 36, 40, 10, NULL, CAST(8.9 AS Decimal(3, 1)), CAST(N'1989-12-16' AS Date), CAST(N'1991-09-03' AS Date), CAST(N'1992-07-06' AS Date), 97.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (156, 51, 29, 4, CAST(8.8 AS Decimal(3, 1)), CAST(7.1 AS Decimal(3, 1)), CAST(N'1986-02-13' AS Date), CAST(N'1992-03-07' AS Date), CAST(N'1992-07-17' AS Date), 3883.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (157, 35, 23, 1, CAST(7.6 AS Decimal(3, 1)), CAST(5.0 AS Decimal(3, 1)), CAST(N'1988-06-23' AS Date), CAST(N'1990-10-28' AS Date), CAST(N'1991-07-11' AS Date), 6977.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (158, 7, 9, 3, CAST(3.3 AS Decimal(3, 1)), NULL, CAST(N'1988-12-01' AS Date), CAST(N'1993-01-05' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (159, 42, 19, 2, CAST(4.6 AS Decimal(3, 1)), NULL, CAST(N'1985-07-31' AS Date), CAST(N'2002-07-26' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (160, 7, 48, 4, CAST(4.8 AS Decimal(3, 1)), CAST(4.5 AS Decimal(3, 1)), CAST(N'1983-01-05' AS Date), CAST(N'2002-07-11' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (161, 19, 13, 6, CAST(4.9 AS Decimal(3, 1)), CAST(3.7 AS Decimal(3, 1)), CAST(N'1980-10-03' AS Date), CAST(N'1991-04-12' AS Date), CAST(N'1991-07-19' AS Date), 7728.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (162, 20, 32, 1, NULL, CAST(1.4 AS Decimal(3, 1)), CAST(N'1989-11-17' AS Date), CAST(N'1995-11-12' AS Date), CAST(N'1996-09-03' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (163, 23, 47, 8, CAST(4.4 AS Decimal(3, 1)), CAST(7.2 AS Decimal(3, 1)), CAST(N'1990-07-03' AS Date), CAST(N'1990-11-14' AS Date), CAST(N'1991-09-19' AS Date), 252.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (164, 34, 30, 5, NULL, CAST(6.7 AS Decimal(3, 1)), CAST(N'1982-07-15' AS Date), CAST(N'1999-06-03' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (165, 62, 43, 9, CAST(4.0 AS Decimal(3, 1)), CAST(6.2 AS Decimal(3, 1)), CAST(N'1988-10-22' AS Date), CAST(N'1994-10-07' AS Date), NULL, 317.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (166, 10, 43, 2, CAST(1.3 AS Decimal(3, 1)), NULL, CAST(N'1987-07-20' AS Date), CAST(N'1994-11-28' AS Date), NULL, 8871.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (167, 27, 26, 10, CAST(3.8 AS Decimal(3, 1)), NULL, CAST(N'1986-05-03' AS Date), CAST(N'1992-08-13' AS Date), CAST(N'1993-02-27' AS Date), 2117.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (168, 23, 48, 10, NULL, NULL, CAST(N'1982-05-15' AS Date), CAST(N'2000-03-07' AS Date), CAST(N'2000-06-29' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (169, 44, 43, 4, CAST(6.8 AS Decimal(3, 1)), CAST(4.8 AS Decimal(3, 1)), CAST(N'1990-08-25' AS Date), CAST(N'2001-11-08' AS Date), CAST(N'2002-08-15' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (170, 60, 5, 9, CAST(1.8 AS Decimal(3, 1)), CAST(5.8 AS Decimal(3, 1)), CAST(N'1985-08-30' AS Date), CAST(N'1992-08-18' AS Date), CAST(N'1993-01-31' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (171, 25, 33, 3, NULL, CAST(7.9 AS Decimal(3, 1)), CAST(N'1989-11-05' AS Date), CAST(N'2001-08-05' AS Date), CAST(N'2002-02-04' AS Date), 3718.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (172, 30, 19, 9, CAST(4.3 AS Decimal(3, 1)), CAST(7.0 AS Decimal(3, 1)), CAST(N'1990-04-12' AS Date), CAST(N'1996-01-15' AS Date), NULL, 6639.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (173, 59, 40, 10, CAST(6.5 AS Decimal(3, 1)), CAST(2.1 AS Decimal(3, 1)), CAST(N'1987-07-13' AS Date), CAST(N'1997-06-23' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (174, 29, 41, 5, CAST(7.8 AS Decimal(3, 1)), CAST(9.2 AS Decimal(3, 1)), CAST(N'1988-06-12' AS Date), CAST(N'1992-05-17' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (175, 2, 37, 7, NULL, CAST(7.9 AS Decimal(3, 1)), CAST(N'1982-12-31' AS Date), CAST(N'2001-10-17' AS Date), CAST(N'2002-03-12' AS Date), 1535.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (176, 41, 35, 2, CAST(6.1 AS Decimal(3, 1)), CAST(5.7 AS Decimal(3, 1)), CAST(N'1988-08-11' AS Date), CAST(N'2002-12-18' AS Date), CAST(N'2003-08-18' AS Date), 2564.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (177, 38, 47, 8, CAST(3.2 AS Decimal(3, 1)), CAST(9.6 AS Decimal(3, 1)), CAST(N'1990-03-06' AS Date), CAST(N'1994-01-14' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (178, 68, 13, 2, CAST(3.3 AS Decimal(3, 1)), CAST(2.5 AS Decimal(3, 1)), CAST(N'1989-05-11' AS Date), CAST(N'1995-05-06' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (179, 21, 30, 1, CAST(8.4 AS Decimal(3, 1)), CAST(10.4 AS Decimal(3, 1)), CAST(N'1986-10-11' AS Date), CAST(N'1999-04-01' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (180, 70, 11, 3, NULL, CAST(10.4 AS Decimal(3, 1)), CAST(N'1990-07-09' AS Date), CAST(N'1997-03-09' AS Date), CAST(N'1998-02-21' AS Date), 3824.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (181, 17, 33, 9, CAST(2.1 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(N'1980-10-15' AS Date), CAST(N'2002-11-24' AS Date), CAST(N'2003-06-21' AS Date), 8473.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (182, 60, 4, 4, CAST(1.4 AS Decimal(3, 1)), CAST(4.7 AS Decimal(3, 1)), CAST(N'1984-11-05' AS Date), CAST(N'1993-05-25' AS Date), CAST(N'1993-06-08' AS Date), 9010.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (183, 1, 2, 7, CAST(4.8 AS Decimal(3, 1)), NULL, CAST(N'1988-02-02' AS Date), CAST(N'2002-09-21' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (184, 64, 15, 7, CAST(3.7 AS Decimal(3, 1)), NULL, CAST(N'1984-10-30' AS Date), CAST(N'1990-12-03' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (185, 65, 47, 3, CAST(1.9 AS Decimal(3, 1)), CAST(8.3 AS Decimal(3, 1)), CAST(N'1990-03-21' AS Date), CAST(N'1994-07-11' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (186, 38, 9, 4, CAST(7.7 AS Decimal(3, 1)), CAST(9.7 AS Decimal(3, 1)), CAST(N'1986-10-26' AS Date), CAST(N'2003-04-15' AS Date), CAST(N'2004-04-26' AS Date), 7850.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (187, 57, 39, 8, NULL, CAST(1.1 AS Decimal(3, 1)), CAST(N'1982-01-10' AS Date), CAST(N'1995-03-19' AS Date), CAST(N'1995-06-24' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (188, 68, 40, 2, CAST(5.1 AS Decimal(3, 1)), CAST(8.9 AS Decimal(3, 1)), CAST(N'1988-05-30' AS Date), CAST(N'1993-10-16' AS Date), CAST(N'1994-03-30' AS Date), 3253.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (189, 55, 29, 1, NULL, CAST(9.2 AS Decimal(3, 1)), CAST(N'1987-05-16' AS Date), CAST(N'1998-01-10' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (190, 15, 12, 4, CAST(3.1 AS Decimal(3, 1)), CAST(8.6 AS Decimal(3, 1)), CAST(N'1983-03-10' AS Date), CAST(N'1991-11-29' AS Date), NULL, 1951.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (191, 1, 29, 9, CAST(7.7 AS Decimal(3, 1)), NULL, CAST(N'1987-09-12' AS Date), CAST(N'1990-08-05' AS Date), NULL, 9931.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (192, 68, 30, 8, CAST(8.0 AS Decimal(3, 1)), NULL, CAST(N'1984-09-13' AS Date), CAST(N'1992-02-28' AS Date), CAST(N'1993-02-24' AS Date), 9455.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (193, 9, 47, 1, NULL, NULL, CAST(N'1987-07-23' AS Date), CAST(N'2001-04-04' AS Date), CAST(N'2002-02-20' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (194, 38, 23, 10, CAST(10.5 AS Decimal(3, 1)), CAST(1.3 AS Decimal(3, 1)), CAST(N'1988-07-05' AS Date), CAST(N'2000-01-31' AS Date), CAST(N'2000-12-31' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (195, 18, 14, 9, CAST(4.4 AS Decimal(3, 1)), CAST(1.9 AS Decimal(3, 1)), CAST(N'1981-04-01' AS Date), CAST(N'1993-10-25' AS Date), CAST(N'1994-05-25' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (196, 43, 20, 6, NULL, CAST(3.2 AS Decimal(3, 1)), CAST(N'1987-05-29' AS Date), CAST(N'1990-10-23' AS Date), CAST(N'1991-05-30' AS Date), 2465.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (197, 51, 45, 1, CAST(2.5 AS Decimal(3, 1)), CAST(10.0 AS Decimal(3, 1)), CAST(N'1983-06-05' AS Date), CAST(N'1990-12-14' AS Date), NULL, 493.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (198, 20, 20, 2, CAST(9.7 AS Decimal(3, 1)), CAST(2.5 AS Decimal(3, 1)), CAST(N'1981-10-25' AS Date), CAST(N'2003-03-29' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (199, 48, 10, 7, CAST(10.9 AS Decimal(3, 1)), CAST(1.1 AS Decimal(3, 1)), CAST(N'1980-11-23' AS Date), CAST(N'1994-11-18' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (200, 57, 50, 10, NULL, CAST(1.3 AS Decimal(3, 1)), CAST(N'1980-06-11' AS Date), CAST(N'2001-07-10' AS Date), CAST(N'2002-05-04' AS Date), 3903.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (201, 58, 15, 6, CAST(8.8 AS Decimal(3, 1)), CAST(1.6 AS Decimal(3, 1)), CAST(N'1983-05-26' AS Date), CAST(N'1994-08-03' AS Date), CAST(N'1994-10-16' AS Date), 8702.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (202, 43, 29, 6, CAST(2.4 AS Decimal(3, 1)), CAST(10.8 AS Decimal(3, 1)), CAST(N'1982-05-22' AS Date), CAST(N'1991-05-23' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (203, 34, 15, 4, CAST(10.7 AS Decimal(3, 1)), CAST(4.5 AS Decimal(3, 1)), CAST(N'1986-02-09' AS Date), CAST(N'1992-03-19' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (204, 10, 12, 10, CAST(10.0 AS Decimal(3, 1)), CAST(9.9 AS Decimal(3, 1)), CAST(N'1984-02-17' AS Date), CAST(N'1994-06-09' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (205, 43, 14, 6, NULL, CAST(4.4 AS Decimal(3, 1)), CAST(N'1985-08-12' AS Date), CAST(N'1990-06-14' AS Date), CAST(N'1990-11-26' AS Date), 6431.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (206, 58, 40, 1, CAST(9.6 AS Decimal(3, 1)), CAST(10.5 AS Decimal(3, 1)), CAST(N'1984-07-01' AS Date), CAST(N'1994-11-14' AS Date), CAST(N'1995-03-10' AS Date), 5641.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (207, 27, 12, 10, CAST(9.6 AS Decimal(3, 1)), CAST(9.6 AS Decimal(3, 1)), CAST(N'1985-06-25' AS Date), CAST(N'1996-11-01' AS Date), CAST(N'1996-12-16' AS Date), 997.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (208, 29, 14, 3, CAST(4.1 AS Decimal(3, 1)), NULL, CAST(N'1985-11-21' AS Date), CAST(N'1993-04-22' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (209, 21, 14, 7, CAST(7.9 AS Decimal(3, 1)), NULL, CAST(N'1981-02-25' AS Date), CAST(N'1990-09-21' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (210, 14, 45, 4, CAST(2.8 AS Decimal(3, 1)), CAST(8.1 AS Decimal(3, 1)), CAST(N'1981-11-30' AS Date), CAST(N'2002-05-09' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (211, 48, 49, 6, CAST(10.3 AS Decimal(3, 1)), CAST(6.3 AS Decimal(3, 1)), CAST(N'1984-07-28' AS Date), CAST(N'1996-04-08' AS Date), CAST(N'1996-11-15' AS Date), 7240.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (212, 44, 19, 7, NULL, CAST(7.1 AS Decimal(3, 1)), CAST(N'1987-05-31' AS Date), CAST(N'1994-05-24' AS Date), CAST(N'1994-10-16' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (213, 10, 3, 9, CAST(7.4 AS Decimal(3, 1)), CAST(8.8 AS Decimal(3, 1)), CAST(N'1988-09-19' AS Date), CAST(N'1994-12-23' AS Date), CAST(N'1995-07-07' AS Date), 0.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (214, 50, 47, 8, NULL, CAST(9.7 AS Decimal(3, 1)), CAST(N'1989-08-09' AS Date), CAST(N'1996-12-27' AS Date), NULL, NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (215, 39, 8, 5, CAST(5.7 AS Decimal(3, 1)), CAST(2.0 AS Decimal(3, 1)), CAST(N'1983-11-20' AS Date), CAST(N'1992-07-11' AS Date), NULL, 7621.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (216, 31, 9, 1, CAST(2.4 AS Decimal(3, 1)), NULL, CAST(N'1982-04-17' AS Date), CAST(N'1994-04-17' AS Date), NULL, 2908.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (217, 39, 1, 2, CAST(8.4 AS Decimal(3, 1)), NULL, CAST(N'1986-09-09' AS Date), CAST(N'2002-03-26' AS Date), CAST(N'2002-06-12' AS Date), 9602.0000)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (218, 64, 4, 10, NULL, NULL, CAST(N'1985-12-12' AS Date), CAST(N'1990-04-12' AS Date), CAST(N'1990-09-21' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (219, 17, 13, 4, CAST(4.7 AS Decimal(3, 1)), CAST(1.9 AS Decimal(3, 1)), CAST(N'1981-02-16' AS Date), CAST(N'1998-04-01' AS Date), CAST(N'1998-05-10' AS Date), NULL)
GO
INSERT [dbo].[Libros_x_Biblioteca] ([ID], [IDLibro], [IDBiblioteca], [IDFormato], [Valoracion], [Conservacion], [Adquisicion], [Inicio], [Fin], [Precio]) VALUES (220, 7, 48, 8, CAST(9.6 AS Decimal(3, 1)), CAST(7.8 AS Decimal(3, 1)), CAST(N'1980-11-24' AS Date), CAST(N'1998-09-08' AS Date), CAST(N'1999-08-08' AS Date), NULL)
GO
SET IDENTITY_INSERT [dbo].[Libros_x_Biblioteca] OFF
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (3, 30)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (3, 33)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (3, 57)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (4, 31)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (4, 32)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (5, 36)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (5, 37)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (6, 19)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (7, 40)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (7, 43)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (8, 28)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (9, 21)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (10, 68)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (11, 68)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (12, 1)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (13, 6)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (14, 13)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (14, 16)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (14, 17)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (14, 18)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (14, 22)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (14, 35)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (14, 38)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (15, 66)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (16, 66)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (17, 5)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (17, 66)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (19, 54)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (20, 53)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (21, 67)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (22, 67)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 2)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 9)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 10)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 11)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 14)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 15)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 20)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 23)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 29)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 39)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 44)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 55)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 56)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 59)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 60)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 61)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 62)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 63)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (23, 64)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (24, 7)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (25, 8)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (26, 51)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (27, 52)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (27, 65)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (28, 27)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (29, 58)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (30, 3)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (31, 25)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (32, 26)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (33, 46)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (34, 12)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (35, 47)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (36, 41)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (36, 50)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (37, 4)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (38, 49)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (39, 45)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (40, 42)
GO
INSERT [dbo].[Autores_x_Libro] ([IDAutor], [IDLibro]) VALUES (40, 48)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (1, 1)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (2, 2)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (3, 3)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (4, 4)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (5, 4)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (6, 6)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (7, 7)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (20, 8)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (21, 8)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (23, 8)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (40, 9)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (40, 11)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (4, 12)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (10, 12)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (11, 13)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (12, 13)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (15, 13)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (13, 14)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (14, 15)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (40, 15)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (11, 16)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (12, 16)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (15, 16)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (11, 17)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (12, 17)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (15, 17)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (11, 18)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (12, 18)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (15, 18)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (34, 19)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (13, 20)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (18, 21)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (11, 22)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (12, 22)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (15, 22)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (1, 23)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (40, 23)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (27, 24)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (3, 25)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (3, 26)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (20, 26)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (4, 27)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (21, 27)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (14, 28)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (4, 30)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (10, 31)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (23, 31)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (10, 32)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (23, 32)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (4, 33)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (24, 34)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (11, 35)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (12, 35)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (15, 35)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (25, 36)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (25, 37)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (11, 38)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (12, 38)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (15, 38)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (23, 39)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (30, 39)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (1, 40)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (7, 41)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (27, 41)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (11, 42)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (1, 43)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (21, 43)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (35, 43)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (29, 45)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (2, 46)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (4, 47)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (15, 47)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (18, 48)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (32, 49)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (32, 50)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (21, 51)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (23, 51)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (31, 52)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (27, 53)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (32, 53)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (3, 54)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (9, 55)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (33, 56)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (34, 56)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (4, 57)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (12, 58)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (34, 58)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (39, 58)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (40, 60)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (35, 61)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (40, 61)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (35, 62)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (40, 62)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (40, 63)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (2, 64)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (35, 65)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (36, 66)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (37, 66)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (36, 67)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (37, 67)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (18, 68)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (14, 69)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (38, 69)
GO
INSERT [dbo].[Generos_x_Libro] ([IDGenero], [IDLibro]) VALUES (39, 70)
GO
