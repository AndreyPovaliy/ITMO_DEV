USE [master]
GO

/****** Object:  Database [ApressFinancial]    Script Date: 18.11.2022 20:31:04 ******/
CREATE DATABASE [ApressFinancial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ApressFinancial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ApressFinancial.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [SECONDARY]  DEFAULT
( NAME = N'ApressFinancial_act', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ApressFinancial_act.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ApressFinancial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ApressFinancial_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ApressFinancial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [ApressFinancial] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [ApressFinancial] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [ApressFinancial] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [ApressFinancial] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [ApressFinancial] SET ARITHABORT OFF 
GO

ALTER DATABASE [ApressFinancial] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [ApressFinancial] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [ApressFinancial] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [ApressFinancial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [ApressFinancial] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [ApressFinancial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [ApressFinancial] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [ApressFinancial] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [ApressFinancial] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [ApressFinancial] SET  DISABLE_BROKER 
GO

ALTER DATABASE [ApressFinancial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [ApressFinancial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [ApressFinancial] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [ApressFinancial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [ApressFinancial] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [ApressFinancial] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [ApressFinancial] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [ApressFinancial] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [ApressFinancial] SET  MULTI_USER 
GO

ALTER DATABASE [ApressFinancial] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [ApressFinancial] SET DB_CHAINING OFF 
GO

ALTER DATABASE [ApressFinancial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [ApressFinancial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [ApressFinancial] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [ApressFinancial] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [ApressFinancial] SET QUERY_STORE = OFF
GO

ALTER DATABASE [ApressFinancial] SET  READ_WRITE 
GO

