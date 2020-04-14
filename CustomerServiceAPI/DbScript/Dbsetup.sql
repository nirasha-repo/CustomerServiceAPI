USE [master]
GO

/****** Object:  Database [CustomerDB]    Script Date: 7/04/2020 11:16:06 AM ******/
IF( (SELECT Count(1) FROM master.dbo.sysdatabases WHERE name = 'CustomerDB')=0)

BEGIN

CREATE DATABASE [CustomerDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CustomerDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CustomerDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CustomerDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\CustomerDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )




ALTER DATABASE [CustomerDB] SET ANSI_NULL_DEFAULT OFF 


ALTER DATABASE [CustomerDB] SET ANSI_NULLS OFF 


ALTER DATABASE [CustomerDB] SET ANSI_PADDING OFF 


ALTER DATABASE [CustomerDB] SET ANSI_WARNINGS OFF 


ALTER DATABASE [CustomerDB] SET ARITHABORT OFF 


ALTER DATABASE [CustomerDB] SET AUTO_CLOSE OFF 


ALTER DATABASE [CustomerDB] SET AUTO_SHRINK OFF 


ALTER DATABASE [CustomerDB] SET AUTO_UPDATE_STATISTICS ON 


ALTER DATABASE [CustomerDB] SET CURSOR_CLOSE_ON_COMMIT OFF 


ALTER DATABASE [CustomerDB] SET CURSOR_DEFAULT  GLOBAL 


ALTER DATABASE [CustomerDB] SET CONCAT_NULL_YIELDS_NULL OFF 


ALTER DATABASE [CustomerDB] SET NUMERIC_ROUNDABORT OFF 


ALTER DATABASE [CustomerDB] SET QUOTED_IDENTIFIER OFF 


ALTER DATABASE [CustomerDB] SET RECURSIVE_TRIGGERS OFF 


ALTER DATABASE [CustomerDB] SET  DISABLE_BROKER 


ALTER DATABASE [CustomerDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 


ALTER DATABASE [CustomerDB] SET DATE_CORRELATION_OPTIMIZATION OFF 


ALTER DATABASE [CustomerDB] SET TRUSTWORTHY OFF 


ALTER DATABASE [CustomerDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 


ALTER DATABASE [CustomerDB] SET PARAMETERIZATION SIMPLE 


ALTER DATABASE [CustomerDB] SET READ_COMMITTED_SNAPSHOT OFF 


ALTER DATABASE [CustomerDB] SET HONOR_BROKER_PRIORITY OFF 


ALTER DATABASE [CustomerDB] SET RECOVERY FULL 


ALTER DATABASE [CustomerDB] SET  MULTI_USER 


ALTER DATABASE [CustomerDB] SET PAGE_VERIFY CHECKSUM  


ALTER DATABASE [CustomerDB] SET DB_CHAINING OFF 


ALTER DATABASE [CustomerDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 


ALTER DATABASE [CustomerDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 


ALTER DATABASE [CustomerDB] SET DELAYED_DURABILITY = DISABLED 


ALTER DATABASE [CustomerDB] SET QUERY_STORE = OFF


ALTER DATABASE [CustomerDB] SET  READ_WRITE 



END
GO


USE CustomerDB
IF NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = OBJECT_ID(N'[dbo].[Customer]'))
BEGIN

CREATE TABLE [Customer](
[CustomerID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
[Title] [nvarchar](8) NOT NULL,
[FirstName] [nvarchar](256) NOT NULL,
[LastName] [nvarchar](100) NOT NULL,
[EmailAddress] [nvarchar](100) NOT NULL,
[DateOfBirth] [datetime] NOT NULL,
[MobilePhoneNo] [nvarchar](25) NULL,
[StreetAddress] [nvarchar](255) NULL,
[SuburbCity] [nvarchar](100) NULL,
[PostCode] [nvarchar](15) NULL--,
CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED
(
[CustomerID] ASC
))


END



