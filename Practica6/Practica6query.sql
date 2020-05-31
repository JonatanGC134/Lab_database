create database Restaurantes
GO

use Restaurantes
GO

create table Mesero (
IdM varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Edad int not null,
Sexo varchar (50) not null,
)

insert into Mesero(IdM, Nombre, ApellidoP, ApellidoM, Edad, Sexo) values 
 (1, 'Jose', 'Cardenas', 'Gonzales', '28', 'M'), (2, 'Gabriela', 'Melendez', 'Cabrera', '36', 'F'),
 (3, 'Estafania', 'Rojas', 'Martinez', '28', 'F'), (4, 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (5, 'Valeria', 'Martinez', 'Martinez', '32', 'F'), (6, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (7, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (8, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (9, 'Edgar', 'Sandoval', 'Rojo', '28', 'M'), (10, 'Samhanta', 'Bebe', 'XD', '29', 'F'),
 (11, 'Carlos', 'Cabrera', 'Martinez', '28', 'M'), (12, 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M'),
 (13, 'Estefany', 'Cruz', 'Huerta', '28', 'F'), (14, 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (15, 'Valeria', 'Morales', 'Martinez', '32', 'F'), (16, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (17, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (18, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (19, 'Edgar', 'Buena', 'Memoria', '28', 'M'), (20, 'Sam', 'Carade', 'Mentor', '29', 'F')

create table Chef (
IdC varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Edad int not null,
Sexo varchar (50) not null,
)

insert into Chef(IdC, Nombre, ApellidoP, ApellidoM, Edad, Sexo) values 
 (1, 'Samuel', 'Villegass', 'Gonzales', '28', 'M'), (2, 'Amari', 'Melendez', 'Cabrera', '36', 'F'),
 (3, 'Estefan', 'Rojas', 'Martinez', '28', 'M'), (4, 'Vicente', 'Fernandez', 'Gobea', '30', 'M'), 
 (5, 'Venecia', 'Martinez', 'Martinez', '32', 'F'), (6, 'Robert', 'Rodriguez', 'Martinez', '31', 'M'),
 (7, 'Citlaly', 'Ugarte', 'Martinez', '34', 'F'), (8, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (9, 'Edgar', 'Sandoval', 'Rojo', '28', 'M'), (10, 'Samhanta', 'Bebe', 'XD', '29', 'F'),
 (11, 'Carlos', 'Cabrera', 'Martinez', '28', 'M'), (12, 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M'),
 (13, 'Estefany', 'Cruz', 'Huerta', '28', 'F'), (14, 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (15, 'Valeria', 'Morales', 'Martinez', '32', 'F'), (16, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (17, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (18, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (19, 'Edgar', 'Buena', 'Memoria', '28', 'M'), (20, 'Sam', 'Carade', 'Mentor', '29', 'F')

create table Conserje (
IdCo varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Edad int not null,
Sexo varchar (50) not null,
)

insert into Conserje(IdCo, Nombre, ApellidoP, ApellidoM, Edad, Sexo) values 
 (1, 'Jesus', 'Cardenas', 'Gonzales', '28', 'M'), (2, 'Marisol', 'Melendez', 'Cabrera', '36', 'F'),
 (3, 'Tifany', 'Rojas', 'Martinez', '28', 'F'), (4, 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (5, 'Valeria', 'Martinez', 'Martinez', '32', 'F'), (6, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (7, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (8, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (9, 'Edgar', 'Sandoval', 'Rojo', '28', 'M'), (10, 'Samhanta', 'Bebe', 'XD', '29', 'F'),
 (11, 'Carlos', 'Cabrera', 'Martinez', '28', 'M'), (12, 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M'),
 (13, 'Estefany', 'Cruz', 'Huerta', '28', 'F'), (14, 'Vicente', 'Martin', 'Gobea', '30', 'M'), 
 (15, 'Valeria', 'Morales', 'Martinez', '32', 'F'), (16, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (17, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (18, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (19, 'Edgar', 'Buena', 'Memoria', '28', 'M'), (20, 'Sam', 'Carade', 'Mentor', '29', 'F')

create table Repartidor (
IdR varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Edad int not null,
Sexo varchar (50) not null,
)

insert into Repartidor(IdR, Nombre, ApellidoP, ApellidoM, Edad, Sexo) values 
 (1, 'Bernardo', 'Tovias', 'Tovias', '28', 'M'), (2, 'Gabriela', 'Melendez', 'Cabrera', '36', 'F'),
 (3, 'Estafania', 'Rojas', 'Martinez', '28', 'F'), (4, 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (5, 'Valeria', 'Martinez', 'Martinez', '32', 'F'), (6, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (7, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (8, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (9, 'Edgar', 'Sandoval', 'Rojo', '28', 'M'), (10, 'Sam', 'Anti', 'NoXD', '29', 'F'),
 (11, 'Carlos', 'Cabrera', 'Martinez', '28', 'M'), (12, 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M'),
 (13, 'Estefany', 'Cruz', 'Huerta', '28', 'F'), (14, 'Vicente', 'Martinez', 'Gobea', '30', 'M'), 
 (15, 'Valeria', 'Morales', 'Martinez', '32', 'F'), (16, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M'),
 (17, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F'), (18, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M'),
 (19, 'Edgar', 'Buena', 'Memoria', '28', 'M'), (20, 'Sam', 'Carade', 'Mentor', '29', 'F')

create table Recepcionista (
IdRe varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Edad int not null,
Sexo varchar (50) not null,
Sangre varchar (3) not null,
)

insert into Recepcionista(IdRe, Nombre, ApellidoP, ApellidoM, Edad, Sexo, Sangre) values 
 (1, 'Mauricio', 'Fenix', 'Aramberri', '28', 'M', 'O+'), (2, 'Gaby', 'Tobar', 'Estelado', '36', 'F', 'A+'),
 (3, 'Estafania', 'Rojas', 'Martinez', '28', 'F', 'O-'), (4, 'Vicente', 'Martinez', 'Gobea', '30', 'M', 'C+'), 
 (5, 'Valeria', 'Martinez', 'Martinez', '32', 'F', 'O+'), (6, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M', 'O-'),
 (7, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F', 'AR+'), (8, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M', 'A-'),
 (9, 'Edgar', 'Sandoval', 'Rojo', '28', 'M', 'A+'), (10, 'Samhanta', 'Bebe', 'XD', '29', 'F', 'O+'),
 (11, 'Carlos', 'Cabrera', 'Martinez', '28', 'M', 'O-'), (12, 'Gabriel', 'Cabrera', 'Cabrera', '36', 'M', 'O-'),
 (13, 'Estefany', 'Cruz', 'Huerta', '28', 'F', 'AR-'), (14, 'Vicente', 'Martinez', 'Gobea', '30', 'M', 'C-'), 
 (15, 'Valeria', 'Morales', 'Martinez', '32', 'F', 'O+'), (16, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M', 'D-'),
 (17, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F', 'O+'), (18, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M', 'A+'),
 (19, 'Edgar', 'Buena', 'Memoria', '28', 'M', 'X'), (20, 'Sam', 'Carade', 'Mentor', '29', 'F', 'GG')

create table Guardia (
IdG varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Edad int not null,
Sexo varchar (50) not null,
Entrenamiento varchar (50) not null,
)

insert into Guardia(IdG, Nombre, ApellidoP, ApellidoM, Edad, Sexo, Entrenamiento) values 
 (1, 'Onyx', 'Warrior', 'Yes', '28', 'M', 'Militar'), (2, 'Abraham', 'Melendez', 'Cabrera', '18', 'M', 'Militar'),
 (3, 'Alann', 'Villegas', 'Piña', '31', 'M', 'Karate'), (4, 'Vicente', 'Martinez', 'Gobea', '30', 'M', 'Militar'), 
 (5, 'Valeria', 'Martinez', 'Martinez', '32', 'F', 'Taekuando'), (6, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M', 'Militar'),
 (7, 'Citlalli', 'Ugarte', 'Martinez', '34', 'F', 'E.Personal'), (8, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M', 'Militar'),
 (9, 'Edgar', 'Sandoval', 'Rojo', '28', 'M', 'Defensa Personal'), (10, 'Simon', 'Bolivar', 'Mamarre', '29', 'F', 'Defensa Personal'),
 (11, 'Fer', 'Torres', 'Martinez', '28', 'M', 'Defensa Personal'), (12, 'Amauri', 'Wester', 'Cabrera', '36', 'M', 'Defensa Personal'),
 (13, 'Valera', 'Cruz', 'Huerta', '28', 'F', 'Defensa Personal'), (14, 'Vicente', 'Martinez', 'Gobea', '30', 'M', 'Defensa Personal'), 
 (15, 'Valeria', 'Morales', 'Martinez', '32', 'F', 'Defensa Personal'), (16, 'Roberto', 'Rodriguez', 'Martinez', '31', 'M', 'Defensa Personal'),
 (17, 'Cintia', 'Ugarte', 'Martinez', '34', 'F', 'Defensa Personal'), (18, 'Rodolfo', 'Juarez', 'Martinez', '28', 'M', 'Defensa Personal'),
 (19, 'Edgar', 'Buena', 'Memoria', '28', 'M', 'Defensa Personal'), (20, 'Sam', 'Carade', 'Mentor', '29', 'F', 'Defensa Personal')

Create table Inspection(
Id varchar(50) primary key,
IdMeserosss varchar(50) not null,
IdChefsss varchar(50) not null,
IdConserjesss varchar(50) not null,
IdRecepcionistasss varchar(50) not null,
IdRepartidoresss varchar(50) not null,
IdGuardiasss varchar(50) not null,
Fecha char(8),
CONSTRAINT fk_Meserosss FOREIGN KEY (IdMeserosss) REFERENCES Mesero (IdM),
CONSTRAINT fk_Chefsss FOREIGN KEY (IdChefsss) REFERENCES Chef (IdC),
CONSTRAINT fk_Conserjesss FOREIGN KEY (IdConserjesss) REFERENCES Conserje (IdCo),
CONSTRAINT fk_Recepcionistasss FOREIGN KEY (IdRecepcionistasss) REFERENCES Recepcionista (IdRe),
CONSTRAINT fk_Repartidoresss FOREIGN KEY (IdRepartidoresss) REFERENCES Repartidor (IdR),
CONSTRAINT fk_Guardiasss FOREIGN KEY (IdGuardiasss) REFERENCES Guardia (IdG),
);

update Mesero set Nombre = 'Jonatan'
where IdM = 1

update Mesero set ApellidoP = 'Guerrero'
where IdM = 1

update Mesero set ApellidoM = 'Cantu'
where IdM = 1

update Mesero set Edad = 18
where IdM = 1

update Mesero set Sexo = 'M'
where IdM = 1

delete from Mesero
where IdM = 16

delete from Mesero
where IdM = 17

delete from Mesero
where IdM = 18

delete from Mesero
where IdM = 19

delete from Mesero
where IdM = 20

select * from Mesero