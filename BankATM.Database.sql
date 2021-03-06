USE [master]
GO
/****** Object:  Database [BankATM]    Script Date: 2022-05-05 4:53:48 PM ******/
CREATE DATABASE [BankATM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BankATM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BankATM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BankATM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BankATM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BankATM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BankATM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BankATM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BankATM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BankATM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BankATM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BankATM] SET ARITHABORT OFF 
GO
ALTER DATABASE [BankATM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BankATM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BankATM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BankATM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BankATM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BankATM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BankATM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BankATM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BankATM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BankATM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BankATM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BankATM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BankATM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BankATM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BankATM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BankATM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BankATM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BankATM] SET RECOVERY FULL 
GO
ALTER DATABASE [BankATM] SET  MULTI_USER 
GO
ALTER DATABASE [BankATM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BankATM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BankATM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BankATM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BankATM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BankATM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'BankATM', N'ON'
GO
ALTER DATABASE [BankATM] SET QUERY_STORE = OFF
GO
ALTER DATABASE [BankATM] SET  READ_WRITE 
GO
