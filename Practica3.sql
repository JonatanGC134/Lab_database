USE [Restaurant]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspeccion]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspeccion] DROP CONSTRAINT IF EXISTS [fk_Repartidoress]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspeccion]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspeccion] DROP CONSTRAINT IF EXISTS [fk_Recepcionistass]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspeccion]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspeccion] DROP CONSTRAINT IF EXISTS [fk_Meseross]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspeccion]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspeccion] DROP CONSTRAINT IF EXISTS [fk_Guardiass]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspeccion]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspeccion] DROP CONSTRAINT IF EXISTS [fk_Conserjess]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Inspeccion]') AND type in (N'U'))
ALTER TABLE [dbo].[Inspeccion] DROP CONSTRAINT IF EXISTS [fk_Chefss]
GO
/****** Object:  Table [dbo].[Repartidores]    Script Date: 30/05/2020 01:02:01 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Repartidores]
GO
/****** Object:  Table [dbo].[Recepcionistas]    Script Date: 30/05/2020 01:02:01 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Recepcionistas]
GO
/****** Object:  Table [dbo].[Meseros]    Script Date: 30/05/2020 01:02:01 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Meseros]
GO
/****** Object:  Table [dbo].[Inspeccion]    Script Date: 30/05/2020 01:02:01 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Inspeccion]
GO
/****** Object:  Table [dbo].[Guardias]    Script Date: 30/05/2020 01:02:01 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Guardias]
GO
/****** Object:  Table [dbo].[Conserjes]    Script Date: 30/05/2020 01:02:01 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Conserjes]
GO
/****** Object:  Table [dbo].[Chefs]    Script Date: 30/05/2020 01:02:01 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Chefs]
GO
USE [master]
GO
/****** Object:  Database [Restaurant]    Script Date: 30/05/2020 01:02:01 p. m. ******/
DROP DATABASE IF EXISTS [Restaurant]
GO
/****** Object:  Database [Restaurant]    Script Date: 30/05/2020 01:02:01 p. m. ******/
CREATE DATABASE [Restaurant]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Restaurant', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Restaurant.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Restaurant_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Restaurant_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Restaurant] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Restaurant].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Restaurant] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Restaurant] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Restaurant] SET ARITHABORT OFF 
GO
ALTER DATABASE [Restaurant] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Restaurant] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Restaurant] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Restaurant] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Restaurant] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Restaurant] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Restaurant] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Restaurant] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Restaurant] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Restaurant] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Restaurant] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Restaurant] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Restaurant] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Restaurant] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Restaurant] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Restaurant] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Restaurant] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Restaurant] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Restaurant] SET  MULTI_USER 
GO
ALTER DATABASE [Restaurant] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Restaurant] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Restaurant] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Restaurant] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Restaurant] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Restaurant] SET QUERY_STORE = OFF
GO
USE [Restaurant]
GO
/****** Object:  Table [dbo].[Chefs]    Script Date: 30/05/2020 01:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chefs](
	[IdChef] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((((([Nombre]+'')+[ApellidoP])+'')+[ApellidoM])+'')+[Sexo]),
	[Alegias] [varchar](50) NOT NULL,
	[FechadeNacimiento] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechadeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdChef] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Conserjes]    Script Date: 30/05/2020 01:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conserjes](
	[IdConserje] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((((([Nombre]+'')+[ApellidoP])+'')+[ApellidoM])+'')+[Sexo]),
	[FechadeNacimiento] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechadeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdConserje] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guardias]    Script Date: 30/05/2020 01:02:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guardias](
	[IdGuardias] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((((([Nombre]+'')+[ApellidoP])+'')+[ApellidoM])+'')+[Sexo]),
	[FechadeNacimiento] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechadeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdGuardias] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inspeccion]    Script Date: 30/05/2020 01:02:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inspeccion](
	[Id] [varchar](50) NOT NULL,
	[IdMeseross] [varchar](50) NOT NULL,
	[IdChefss] [varchar](50) NOT NULL,
	[IdConserjess] [varchar](50) NOT NULL,
	[IdRecepcionistass] [varchar](50) NOT NULL,
	[IdRepartidoress] [varchar](50) NOT NULL,
	[IdGuardiass] [varchar](50) NOT NULL,
	[Fecha] [char](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meseros]    Script Date: 30/05/2020 01:02:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meseros](
	[IdMesero] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((((([Nombre]+'')+[ApellidoP])+'')+[ApellidoM])+'')+[Sexo]),
	[FechadeNacimiento] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechadeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdMesero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recepcionistas]    Script Date: 30/05/2020 01:02:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recepcionistas](
	[IdRecep] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((((([Nombre]+'')+[ApellidoP])+'')+[ApellidoM])+'')+[Sexo]),
	[FechadeNacimiento] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechadeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdRecep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repartidores]    Script Date: 30/05/2020 01:02:02 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repartidores](
	[IdRepatidores] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoP] [varchar](50) NOT NULL,
	[ApellidoM] [varchar](50) NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((((([Nombre]+'')+[ApellidoP])+'')+[ApellidoM])+'')+[Sexo]),
	[FechadeNacimiento] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechadeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[IdRepatidores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Inspeccion]  WITH CHECK ADD  CONSTRAINT [fk_Chefss] FOREIGN KEY([IdChefss])
REFERENCES [dbo].[Chefs] ([IdChef])
GO
ALTER TABLE [dbo].[Inspeccion] CHECK CONSTRAINT [fk_Chefss]
GO
ALTER TABLE [dbo].[Inspeccion]  WITH CHECK ADD  CONSTRAINT [fk_Conserjess] FOREIGN KEY([IdConserjess])
REFERENCES [dbo].[Conserjes] ([IdConserje])
GO
ALTER TABLE [dbo].[Inspeccion] CHECK CONSTRAINT [fk_Conserjess]
GO
ALTER TABLE [dbo].[Inspeccion]  WITH CHECK ADD  CONSTRAINT [fk_Guardiass] FOREIGN KEY([IdGuardiass])
REFERENCES [dbo].[Guardias] ([IdGuardias])
GO
ALTER TABLE [dbo].[Inspeccion] CHECK CONSTRAINT [fk_Guardiass]
GO
ALTER TABLE [dbo].[Inspeccion]  WITH CHECK ADD  CONSTRAINT [fk_Meseross] FOREIGN KEY([IdMeseross])
REFERENCES [dbo].[Meseros] ([IdMesero])
GO
ALTER TABLE [dbo].[Inspeccion] CHECK CONSTRAINT [fk_Meseross]
GO
ALTER TABLE [dbo].[Inspeccion]  WITH CHECK ADD  CONSTRAINT [fk_Recepcionistass] FOREIGN KEY([IdRecepcionistass])
REFERENCES [dbo].[Recepcionistas] ([IdRecep])
GO
ALTER TABLE [dbo].[Inspeccion] CHECK CONSTRAINT [fk_Recepcionistass]
GO
ALTER TABLE [dbo].[Inspeccion]  WITH CHECK ADD  CONSTRAINT [fk_Repartidoress] FOREIGN KEY([IdRepartidoress])
REFERENCES [dbo].[Repartidores] ([IdRepatidores])
GO
ALTER TABLE [dbo].[Inspeccion] CHECK CONSTRAINT [fk_Repartidoress]
GO
USE [master]
GO
ALTER DATABASE [Restaurant] SET  READ_WRITE 
GO
