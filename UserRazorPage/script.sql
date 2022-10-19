USE [master]
GO
/****** Object:  Database [MyDb]    Script Date: 19/10/2022 11:09:07 pm ******/
CREATE DATABASE [MyDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyDb', FILENAME = N'C:\Users\Nejat Jafarli\MyDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyDb_log', FILENAME = N'C:\Users\Nejat Jafarli\MyDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MyDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MyDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MyDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MyDb] SET  MULTI_USER 
GO
ALTER DATABASE [MyDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MyDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MyDb] SET QUERY_STORE = OFF
GO
USE [MyDb]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 19/10/2022 11:09:07 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](50) NOT NULL,
	[Surname] [nchar](50) NOT NULL,
	[Email] [nchar](250) NOT NULL,
	[Phone] [nchar](20) NOT NULL,
	[ImgUrl] [nchar](250) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [MyDb] SET  READ_WRITE 
GO
