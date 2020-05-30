﻿USE [master]
GO
/****** Object:  Database [LBD34]    Script Date: 18/02/2020 09:17:00 p.m. ******/
CREATE DATABASE [LBD34]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD34', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LBD34.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LBD34_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\LBD34_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LBD34] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD34].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD34] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD34] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD34] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD34] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD34] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD34] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LBD34] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [LBD34] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD34] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD34] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD34] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD34] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD34] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD34] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD34] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD34] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBD34] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD34] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD34] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD34] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD34] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD34] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD34] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD34] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LBD34] SET  MULTI_USER 
GO
ALTER DATABASE [LBD34] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD34] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD34] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD34] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [LBD34]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 18/02/2020 09:17:00 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[client_id] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrimerApellido] [varchar](50) NOT NULL,
	[SegundoApellido] [varchar](50) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+' ')+[PrimerApellido])+' ')+[SegundoApellido]),
	[FechaDeNacimiento] [datetime] NOT NULL,
	[Edad]  AS (datediff(year,[FechaDeNacimiento],getdate())),
PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [indx_FechaDeNaciemto]    Script Date: 18/02/2020 09:17:00 p.m. ******/
CREATE NONCLUSTERED INDEX [indx_FechaDeNaciemto] ON [dbo].[clientes]
(
	[FechaDeNacimiento] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [LBD34] SET  READ_WRITE 
GO
