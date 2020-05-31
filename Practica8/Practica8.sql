USE [master]
GO
/****** Object:  Database [Locaciones]    Script Date: 30/05/2020 09:54:53 p. m. ******/
DROP DATABASE IF EXISTS [Locaciones]
GO
/****** Object:  Database [Locaciones]    Script Date: 30/05/2020 09:54:53 p. m. ******/
CREATE DATABASE [Locaciones]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Locaciones', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Locaciones.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Locaciones_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Locaciones_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Locaciones] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Locaciones].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Locaciones] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Locaciones] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Locaciones] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Locaciones] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Locaciones] SET ARITHABORT OFF 
GO
ALTER DATABASE [Locaciones] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Locaciones] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Locaciones] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Locaciones] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Locaciones] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Locaciones] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Locaciones] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Locaciones] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Locaciones] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Locaciones] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Locaciones] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Locaciones] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Locaciones] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Locaciones] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Locaciones] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Locaciones] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Locaciones] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Locaciones] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Locaciones] SET  MULTI_USER 
GO
ALTER DATABASE [Locaciones] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Locaciones] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Locaciones] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Locaciones] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Locaciones] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Locaciones] SET QUERY_STORE = OFF
GO
ALTER DATABASE [Locaciones] SET  READ_WRITE 
GO