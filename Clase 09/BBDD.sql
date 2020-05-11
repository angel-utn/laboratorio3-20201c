Use Bookworm
go
Alter Table Formatos
Add Medio char null
GO
Update Formatos Set Medio = 'F'
Where ID <= 4
GO
Update Formatos Set Medio = 'D' 
Where ID >= 5