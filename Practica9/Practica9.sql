USE [Restaurantes]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspection]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspection] DROP CONSTRAINT IF EXISTS [fk_Repartidoresss]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspection]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspection] DROP CONSTRAINT IF EXISTS [fk_Recepcionistasss]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspection]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspection] DROP CONSTRAINT IF EXISTS [fk_Meserosss]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspection]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspection] DROP CONSTRAINT IF EXISTS [fk_Guardiasss]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspection]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspection] DROP CONSTRAINT IF EXISTS [fk_Conserjesss]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspection]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspection] DROP CONSTRAINT IF EXISTS [fk_Chefsss]
GO
/****** Object:  Table [dbo].[Repartidor]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Repartidor]
GO
/****** Object:  Table [dbo].[Inspection]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Inspection]
GO
/****** Object:  Table [dbo].[DatosMeseros]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[DatosMeseros]
GO
/****** Object:  Table [dbo].[Conserje]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Conserje]
GO
/****** Object:  View [dbo].[Vista_Seguridad]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP VIEW IF EXISTS [dbo].[Vista_Seguridad]
GO
/****** Object:  Table [dbo].[Guardia]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Guardia]
GO
/****** Object:  Table [dbo].[Recepcionista]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Recepcionista]
GO
/****** Object:  View [dbo].[Vista_Datos]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP VIEW IF EXISTS [dbo].[Vista_Datos]
GO
/****** Object:  Table [dbo].[Chef]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Chef]
GO
/****** Object:  Table [dbo].[Mesero]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Mesero]
GO
USE [master]
GO
/****** Object:  Database [Restaurantes]    Script Date: 30/05/2020 11:43:09 p. m. ******/
DROP DATABASE IF EXISTS [Restaurantes]
GO
/****** Object:  Database [Restaurantes]    Script Date: 30/05/2020 11:43:09 p. m. ******/
CREATE DATABASE [Restaurantes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restaurantes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Restaurantes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Restaurantes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Restaurantes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Restaurantes] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restaurantes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restaurantes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restaurantes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restaurantes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restaurantes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restaurantes] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restaurantes] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Restaurantes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restaurantes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurantes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restaurantes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restaurantes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restaurantes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restaurantes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restaurantes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restaurantes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Restaurantes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restaurantes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restaurantes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restaurantes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restaurantes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restaurantes] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restaurantes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restaurantes] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Restaurantes] SET  MULTI_USER 
GO
ALTER DATABASE [Restaurantes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restaurantes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restaurantes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restaurantes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Restaurantes] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Restaurantes] SET QUERY_STORE = OFF
GO
USE [Restaurantes]
GO
/****** Object:  Table [dbo].[Mesero]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mesero](
	[IdM] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chef]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chef](
	[IdC] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista_Datos]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Vista_Datos] as
select mes.Sexo, mes.ApellidoP, ch.Nombre, ch.ApellidoM
from Mesero mes inner join Chef ch
on mes.IdM = ch.IdC
GO
/****** Object:  Table [dbo].[Recepcionista]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recepcionista](
	[IdRe] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[Sangre] [varchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdRe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guardia]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guardia](
	[IdG] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[Entrenamiento] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[Vista_Seguridad]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[Vista_Seguridad] as
select re.Nombre, re.Sangre, gua.Edad, gua.Entrenamiento
from Recepcionista re inner join Guardia gua
on re.IdRe = gua.IdG
GO
/****** Object:  Table [dbo].[Conserje]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conserje](
	[IdCo] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DatosMeseros]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DatosMeseros](
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inspection]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inspection](
	[Id] [varchar](50) NOT NULL,
	[IdMeserosss] [varchar](50) NOT NULL,
	[IdChefsss] [varchar](50) NOT NULL,
	[IdConserjesss] [varchar](50) NOT NULL,
	[IdRecepcionistasss] [varchar](50) NOT NULL,
	[IdRepartidoresss] [varchar](50) NOT NULL,
	[IdGuardiasss] [varchar](50) NOT NULL,
	[Fecha] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repartidor]    Script Date: 30/05/2020 11:43:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repartidor](
	[IdR] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'1', N'Samuel', N'Villegass', N'Gonzales', 28, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'10', N'Samhanta', N'Bebe', N'XD', 29, N'F')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'11', N'Carlos', N'Cabrera', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'12', N'Gabriel', N'Cabrera', N'Cabrera', 36, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'13', N'Estefany', N'Cruz', N'Huerta', 28, N'F')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'14', N'Vicente', N'Martinez', N'Gobea', 30, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'15', N'Valeria', N'Morales', N'Martinez', 32, N'F')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'16', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'17', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'18', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'19', N'Edgar', N'Buena', N'Memoria', 28, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'2', N'Amari', N'Melendez', N'Cabrera', 36, N'F')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'20', N'Sam', N'Carade', N'Mentor', 29, N'F')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'3', N'Estefan', N'Rojas', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'4', N'Vicente', N'Fernandez', N'Gobea', 30, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'5', N'Venecia', N'Martinez', N'Martinez', 32, N'F')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'6', N'Robert', N'Rodriguez', N'Martinez', 31, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'7', N'Citlaly', N'Ugarte', N'Martinez', 34, N'F')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'8', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Chef] ([IdC], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'9', N'Edgar', N'Sandoval', N'Rojo', 28, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'1', N'Jesus', N'Cardenas', N'Gonzales', 28, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'10', N'Samhanta', N'Bebe', N'XD', 29, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'11', N'Carlos', N'Cabrera', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'12', N'Gabriel', N'Cabrera', N'Cabrera', 36, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'13', N'Estefany', N'Cruz', N'Huerta', 28, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'14', N'Vicente', N'Martin', N'Gobea', 30, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'15', N'Valeria', N'Morales', N'Martinez', 32, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'16', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'17', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'18', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'19', N'Edgar', N'Buena', N'Memoria', 28, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'2', N'Marisol', N'Melendez', N'Cabrera', 36, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'20', N'Sam', N'Carade', N'Mentor', 29, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'3', N'Tifany', N'Rojas', N'Martinez', 28, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'4', N'Vicente', N'Martinez', N'Gobea', 30, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'5', N'Valeria', N'Martinez', N'Martinez', 32, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'6', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'7', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'8', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Conserje] ([IdCo], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'9', N'Edgar', N'Sandoval', N'Rojo', 28, N'M')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Jose', N'Cardenas', N'Gonzales')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Gabriela', N'Melendez', N'Cabrera')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Estafania', N'Rojas', N'Martinez')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Vicente', N'Martinez', N'Gobea')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Valeria', N'Martinez', N'Martinez')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Roberto', N'Rodriguez', N'Martinez')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Citlalli', N'Ugarte', N'Martinez')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Rodolfo', N'Juarez', N'Martinez')
GO
INSERT [dbo].[DatosMeseros] ([Nombre], [ApellidoP], [ApellidoM]) VALUES (N'Edgar', N'Sandoval', N'Rojo')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'1', N'Onyx', N'Warrior', N'Yes', 28, N'M', N'Militar')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'10', N'Simon', N'Bolivar', N'Mamarre', 29, N'F', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'11', N'Fer', N'Torres', N'Martinez', 28, N'M', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'12', N'Amauri', N'Wester', N'Cabrera', 36, N'M', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'13', N'Valera', N'Cruz', N'Huerta', 28, N'F', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'14', N'Vicente', N'Martinez', N'Gobea', 30, N'M', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'15', N'Valeria', N'Morales', N'Martinez', 32, N'F', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'16', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'17', N'Cintia', N'Ugarte', N'Martinez', 34, N'F', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'18', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'19', N'Edgar', N'Buena', N'Memoria', 28, N'M', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'2', N'Abraham', N'Melendez', N'Cabrera', 18, N'M', N'Militar')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'20', N'Sam', N'Carade', N'Mentor', 29, N'F', N'Defensa Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'3', N'Alann', N'Villegas', N'Piña', 31, N'M', N'Karate')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'4', N'Vicente', N'Martinez', N'Gobea', 30, N'M', N'Militar')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'5', N'Valeria', N'Martinez', N'Martinez', 32, N'F', N'Taekuando')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'6', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M', N'Militar')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'7', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F', N'E.Personal')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'8', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M', N'Militar')
GO
INSERT [dbo].[Guardia] ([IdG], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Entrenamiento]) VALUES (N'9', N'Edgar', N'Sandoval', N'Rojo', 28, N'M', N'Defensa Personal')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'1', N'Jose', N'Cardenas', N'Gonzales', 28, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'10', N'Samhanta', N'Bebe', N'XD', 29, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'11', N'Carlos', N'Cabrera', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'12', N'Gabriel', N'Cabrera', N'Cabrera', 36, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'13', N'Estefany', N'Cruz', N'Huerta', 28, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'14', N'Vicente', N'Martinez', N'Gobea', 30, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'15', N'Valeria', N'Morales', N'Martinez', 32, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'16', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'17', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'18', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'19', N'Edgar', N'Buena', N'Memoria', 28, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'2', N'Gabriela', N'Melendez', N'Cabrera', 36, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'20', N'Sam', N'Carade', N'Mentor', 29, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'3', N'Estafania', N'Rojas', N'Martinez', 28, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'4', N'Vicente', N'Martinez', N'Gobea', 30, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'5', N'Valeria', N'Martinez', N'Martinez', 32, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'6', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'7', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'8', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Mesero] ([IdM], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'9', N'Edgar', N'Sandoval', N'Rojo', 28, N'M')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'1', N'Mauricio', N'Fenix', N'Aramberri', 28, N'M', N'O+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'10', N'Samhanta', N'Bebe', N'XD', 29, N'F', N'O+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'11', N'Carlos', N'Cabrera', N'Martinez', 28, N'M', N'O-')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'12', N'Gabriel', N'Cabrera', N'Cabrera', 36, N'M', N'O-')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'13', N'Estefany', N'Cruz', N'Huerta', 28, N'F', N'AR-')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'14', N'Vicente', N'Martinez', N'Gobea', 30, N'M', N'C-')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'15', N'Valeria', N'Morales', N'Martinez', 32, N'F', N'O+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'16', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M', N'D-')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'17', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F', N'O+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'18', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M', N'A+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'19', N'Edgar', N'Buena', N'Memoria', 28, N'M', N'X')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'2', N'Gaby', N'Tobar', N'Estelado', 36, N'F', N'A+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'20', N'Sam', N'Carade', N'Mentor', 29, N'F', N'GG')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'3', N'Estafania', N'Rojas', N'Martinez', 28, N'F', N'O-')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'4', N'Vicente', N'Martinez', N'Gobea', 30, N'M', N'C+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'5', N'Valeria', N'Martinez', N'Martinez', 32, N'F', N'O+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'6', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M', N'O-')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'7', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F', N'AR+')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'8', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M', N'A-')
GO
INSERT [dbo].[Recepcionista] ([IdRe], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo], [Sangre]) VALUES (N'9', N'Edgar', N'Sandoval', N'Rojo', 28, N'M', N'A+')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'1', N'Bernardo', N'Tovias', N'Tovias', 28, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'10', N'Sam', N'Anti', N'NoXD', 29, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'11', N'Carlos', N'Cabrera', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'12', N'Gabriel', N'Cabrera', N'Cabrera', 36, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'13', N'Estefany', N'Cruz', N'Huerta', 28, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'14', N'Vicente', N'Martinez', N'Gobea', 30, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'15', N'Valeria', N'Morales', N'Martinez', 32, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'16', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'17', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'18', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'19', N'Edgar', N'Buena', N'Memoria', 28, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'2', N'Gabriela', N'Melendez', N'Cabrera', 36, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'20', N'Sam', N'Carade', N'Mentor', 29, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'3', N'Estafania', N'Rojas', N'Martinez', 28, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'4', N'Vicente', N'Martinez', N'Gobea', 30, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'5', N'Valeria', N'Martinez', N'Martinez', 32, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'6', N'Roberto', N'Rodriguez', N'Martinez', 31, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'7', N'Citlalli', N'Ugarte', N'Martinez', 34, N'F')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'8', N'Rodolfo', N'Juarez', N'Martinez', 28, N'M')
GO
INSERT [dbo].[Repartidor] ([IdR], [Nombre], [ApellidoP], [ApellidoM], [Edad], [Sexo]) VALUES (N'9', N'Edgar', N'Sandoval', N'Rojo', 28, N'M')
GO
ALTER TABLE [dbo].[Inspection]  WITH CHECK ADD  CONSTRAINT [fk_Chefsss] FOREIGN KEY([IdChefsss])
REFERENCES [dbo].[Chef] ([IdC])
GO
ALTER TABLE [dbo].[Inspection] CHECK CONSTRAINT [fk_Chefsss]
GO
ALTER TABLE [dbo].[Inspection]  WITH CHECK ADD  CONSTRAINT [fk_Conserjesss] FOREIGN KEY([IdConserjesss])
REFERENCES [dbo].[Conserje] ([IdCo])
GO
ALTER TABLE [dbo].[Inspection] CHECK CONSTRAINT [fk_Conserjesss]
GO
ALTER TABLE [dbo].[Inspection]  WITH CHECK ADD  CONSTRAINT [fk_Guardiasss] FOREIGN KEY([IdGuardiasss])
REFERENCES [dbo].[Guardia] ([IdG])
GO
ALTER TABLE [dbo].[Inspection] CHECK CONSTRAINT [fk_Guardiasss]
GO
ALTER TABLE [dbo].[Inspection]  WITH CHECK ADD  CONSTRAINT [fk_Meserosss] FOREIGN KEY([IdMeserosss])
REFERENCES [dbo].[Mesero] ([IdM])
GO
ALTER TABLE [dbo].[Inspection] CHECK CONSTRAINT [fk_Meserosss]
GO
ALTER TABLE [dbo].[Inspection]  WITH CHECK ADD  CONSTRAINT [fk_Recepcionistasss] FOREIGN KEY([IdRecepcionistasss])
REFERENCES [dbo].[Recepcionista] ([IdRe])
GO
ALTER TABLE [dbo].[Inspection] CHECK CONSTRAINT [fk_Recepcionistasss]
GO
ALTER TABLE [dbo].[Inspection]  WITH CHECK ADD  CONSTRAINT [fk_Repartidoresss] FOREIGN KEY([IdRepartidoresss])
REFERENCES [dbo].[Repartidor] ([IdR])
GO
ALTER TABLE [dbo].[Inspection] CHECK CONSTRAINT [fk_Repartidoresss]
GO
USE [master]
GO
ALTER DATABASE [Restaurantes] SET  READ_WRITE 
GO
