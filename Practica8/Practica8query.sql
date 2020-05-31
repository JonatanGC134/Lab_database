create database Locaciones

Create table Locales(
Id int,
NomLocal VARCHAR (20)
)

Create table Gerentes(
IdGerentes int,
Nombre Varchar(20),
)

insert into Locales values (31, 'San Nicolas'), (32, 'San Pedro'),
(33, 'El Carmen'), (34, 'Escobedo')

insert into Gerentes values (31, 'Emanuel'), (32, 'Eduardo'),
(33, 'Esteban'), (34, 'Gerardo'), (35, 'Melissa'), (32, 'Estefany')

SELECT * from Locales
SELECT * from Gerentes

Select * from Locales E
right join Gerentes D
on E.Id = D.IdGerentes

Select * from Gerentes E
left join Locales D
on E.IdGerentes = D.Id

Select * from Gerentes E
inner join Locales D
on E.IdGerentes = D.Id

Select * from Gerentes E
cross join Locales D

SELECT * from Locales where Id = 
(select id from Locales where id= 34)

SELECT Nombre into here
from Gerentes where IdGerentes = 34

SELECT * from here
