USE [master]
GO
/****** Object:  Database [MonedasParcial]    Script Date: 7/11/2020 2:38:56 a. m. ******/
CREATE DATABASE [MonedasParcial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MonedasParcial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL_EXPRESS\MSSQL\DATA\MonedasParcial.mdf' , SIZE = 10240KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MonedasParcial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL_EXPRESS\MSSQL\DATA\MonedasParcial_log.ldf' , SIZE = 10240KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MonedasParcial] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MonedasParcial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MonedasParcial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MonedasParcial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MonedasParcial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MonedasParcial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MonedasParcial] SET ARITHABORT OFF 
GO
ALTER DATABASE [MonedasParcial] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MonedasParcial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MonedasParcial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MonedasParcial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MonedasParcial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MonedasParcial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MonedasParcial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MonedasParcial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MonedasParcial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MonedasParcial] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MonedasParcial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MonedasParcial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MonedasParcial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MonedasParcial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MonedasParcial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MonedasParcial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MonedasParcial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MonedasParcial] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MonedasParcial] SET  MULTI_USER 
GO
ALTER DATABASE [MonedasParcial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MonedasParcial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MonedasParcial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MonedasParcial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MonedasParcial] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MonedasParcial] SET QUERY_STORE = OFF
GO
USE [MonedasParcial]
GO
/****** Object:  Table [dbo].[Conversion]    Script Date: 7/11/2020 2:38:56 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Conversion](
	[ConversionID] [int] IDENTITY(1,1) NOT NULL,
	[MonedaOrigen] [varchar](50) NOT NULL,
	[MonedaDestino] [varchar](50) NOT NULL,
	[ValorOrigen] [money] NOT NULL,
	[ValorDestino] [money] NOT NULL,
	[TasaConversion] [money] NOT NULL,
	[FechaHora] [date] NOT NULL,
 CONSTRAINT [PK_Conversion] PRIMARY KEY CLUSTERED 
(
	[ConversionID] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Conversion] ON 

INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (1, N'Dólares americanos', N'Euros', 123.0000, 98.4000, 0.8000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (2, N'Dólares americanos', N'Yuanes(Renminbi)', 333.0000, 99.9000, 0.3000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (3, N'Dólares americanos', N'Euros', 33345.0000, 66690.0000, 0.5000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (4, N'Dólares americanos', N'Yuanes(Renminbi)', 222234.0000, 66670.2000, 0.3000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (5, N'Dólares americanos', N'Euros', 234444.0000, 93777.6000, 0.4000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (6, N'Dólares americanos', N'Euros', 213.0000, 63.9000, 0.3000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (7, N'Dólares americanos', N'Euros', 32333.0000, 12933.2000, 0.4000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (8, N'Euros', N'Yuanes(Renminbi)', 4444.0000, 11110.0000, 0.4000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (9, N'Euros', N'Pesos colombianos', 1.0000, 10.0000, 0.1000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (10, N'Dólares americanos', N'Yuanes(Renminbi)', 123.0000, 246.0000, 0.5000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (11, N'Euros', N'Yenes japoneses', 112333123.4000, 56166561.7000, 0.5000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (12, N'Euros', N'Yuanes(Renminbi)', 3332.2200, 8330.5500, 0.4000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (13, N'Yuanes(Renminbi)', N'Euros', 44445555.0000, 22222777.5000, 0.5000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (14, N'Dólares americanos', N'Pesos colombianos', 3333.0000, 8332.5000, 0.4000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (15, N'Pesos colombianos', N'Euros', 444.0000, 266.4000, 0.6000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (16, N'Euros', N'Yuanes(Renminbi)', 123123.0000, 1001000.0000, 0.1230, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (17, N'Euros', N'Yuanes(Renminbi)', 12123.0000, 4849.2000, 0.4000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (18, N'Euros', N'Yenes japoneses', 1212302.0000, 121230.2000, 0.1000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (19, N'Yuanes(Renminbi)', N'Dólares americanos', 45000.0000, 9000.0000, 0.2000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (20, N'Dólares americanos', N'Euros', 100.0000, 50.0000, 0.5000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (21, N'Dólares americanos', N'Euros', 100.0000, 200.0000, 0.5000, CAST(N'2020-11-07' AS Date))
INSERT [dbo].[Conversion] ([ConversionID], [MonedaOrigen], [MonedaDestino], [ValorOrigen], [ValorDestino], [TasaConversion], [FechaHora]) VALUES (22, N'Euros', N'Yuanes(Renminbi)', 1123.0000, 561.5000, 0.5000, CAST(N'2020-11-07' AS Date))
SET IDENTITY_INSERT [dbo].[Conversion] OFF
GO
USE [master]
GO
ALTER DATABASE [MonedasParcial] SET  READ_WRITE 
GO
