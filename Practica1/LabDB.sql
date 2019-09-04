USE [master]
GO
/****** Object:  Database [LabBD]    Script Date: 08/31/2019 10:07:23 ******/
CREATE DATABASE [LabBD] ON  PRIMARY 
( NAME = N'LabBD', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\LabBD.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LabBD_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\LabBD_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LabBD] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LabBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LabBD] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [LabBD] SET ANSI_NULLS OFF
GO
ALTER DATABASE [LabBD] SET ANSI_PADDING OFF
GO
ALTER DATABASE [LabBD] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [LabBD] SET ARITHABORT OFF
GO
ALTER DATABASE [LabBD] SET AUTO_CLOSE ON
GO
ALTER DATABASE [LabBD] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LabBD] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [LabBD] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [LabBD] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [LabBD] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [LabBD] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [LabBD] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [LabBD] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [LabBD] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [LabBD] SET  ENABLE_BROKER
GO
ALTER DATABASE [LabBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [LabBD] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [LabBD] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [LabBD] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [LabBD] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [LabBD] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [LabBD] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [LabBD] SET  READ_WRITE
GO
ALTER DATABASE [LabBD] SET RECOVERY SIMPLE
GO
ALTER DATABASE [LabBD] SET  MULTI_USER
GO
ALTER DATABASE [LabBD] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [LabBD] SET DB_CHAINING OFF
GO
