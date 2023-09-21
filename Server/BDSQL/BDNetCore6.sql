USE [master]
GO
/****** Object:  Database [NetCore6Ejemplo]    Script Date: 20/09/2023 11:48:15 p. m. ******/
CREATE DATABASE [NetCore6Ejemplo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NetCore6Ejemplo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\NetCore6Ejemplo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NetCore6Ejemplo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\NetCore6Ejemplo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [NetCore6Ejemplo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NetCore6Ejemplo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NetCore6Ejemplo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET ARITHABORT OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NetCore6Ejemplo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NetCore6Ejemplo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NetCore6Ejemplo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NetCore6Ejemplo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NetCore6Ejemplo] SET  MULTI_USER 
GO
ALTER DATABASE [NetCore6Ejemplo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NetCore6Ejemplo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NetCore6Ejemplo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NetCore6Ejemplo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NetCore6Ejemplo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NetCore6Ejemplo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [NetCore6Ejemplo] SET QUERY_STORE = OFF
GO
USE [NetCore6Ejemplo]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 20/09/2023 11:48:15 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUSuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Apellido] [varchar](100) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUSuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUSuario], [Nombre], [Apellido], [Email], [Telefono], [FechaAlta], [FechaBaja]) VALUES (1, N'Omar', N'Dandrea', N'Omar@hotmail.com', N'635337373', CAST(N'2023-09-20T00:00:00.000' AS DateTime), CAST(N'2023-09-21T00:00:00.000' AS DateTime))
INSERT [dbo].[Usuario] ([idUSuario], [Nombre], [Apellido], [Email], [Telefono], [FechaAlta], [FechaBaja]) VALUES (2, N'Diego', N'Zuarez', N'Diego@hotmail.com', N'179518878', CAST(N'2023-08-10T00:00:00.000' AS DateTime), CAST(N'2023-08-11T00:00:00.000' AS DateTime))
INSERT [dbo].[Usuario] ([idUSuario], [Nombre], [Apellido], [Email], [Telefono], [FechaAlta], [FechaBaja]) VALUES (3, N'Pedro', N'Gallardo', N'Pedro2023@gmail.com', N'123456789', CAST(N'2023-09-20T16:57:35.860' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
USE [master]
GO
ALTER DATABASE [NetCore6Ejemplo] SET  READ_WRITE 
GO
