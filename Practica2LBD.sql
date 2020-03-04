create database Restaurant
GO

create table Meseros (
IdMesero varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Sexo varchar (50) not null,
NombreCompleto as Nombre +''+ ApellidoP +''+ ApellidoM +''+ Sexo,
FechadeNacimiento datetime not null,
Edad as DATEDIFF (year, FechadeNacimiento, GETDATE())
)
create table Chefs (
IdChef varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Sexo varchar (50) not null,
NombreCompleto as Nombre +''+ ApellidoP +''+ ApellidoM +''+ Sexo,
Alegias varchar (50) not null,
FechadeNacimiento datetime not null,
Edad as DATEDIFF (year, FechadeNacimiento, GETDATE())
)
create table Conserjes (
IdConserje varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Sexo varchar (50) not null,
NombreCompleto as Nombre +''+ ApellidoP +''+ ApellidoM +''+ Sexo,
FechadeNacimiento datetime not null,
Edad as DATEDIFF (year, FechadeNacimiento, GETDATE())
)
create table Repartidores (
IdRepatidores varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Sexo varchar (50) not null,
NombreCompleto as Nombre +''+ ApellidoP +''+ ApellidoM +''+ Sexo,
FechadeNacimiento datetime not null,
Edad as DATEDIFF (year, FechadeNacimiento, GETDATE())
)
create table Recepcionistas (
IdRecep varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Sexo varchar (50) not null,
NombreCompleto as Nombre +''+ ApellidoP +''+ ApellidoM +''+ Sexo,
FechadeNacimiento datetime not null,
Edad as DATEDIFF (year, FechadeNacimiento, GETDATE())
)
create table Guardias (
IdGuardias varchar (50) not null primary key,
Nombre varchar (50) not null,
ApellidoP varchar (50) not null,
ApellidoM varchar (50) not null,
Sexo varchar (50) not null,
NombreCompleto as Nombre +''+ ApellidoP +''+ ApellidoM +''+ Sexo,
FechadeNacimiento datetime not null,
Edad as DATEDIFF (year, FechadeNacimiento, GETDATE())
)