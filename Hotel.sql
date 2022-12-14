USE [master]
GO
/* Object:  Database [HotelDB]    Script Date: 6/09/2022 08:45:23 */
CREATE DATABASE [HotelDB] ON  PRIMARY 
( NAME = N'HotelDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HotelDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\HotelDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HotelDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HotelDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelDB] SET RECOVERY FULL 
GO
ALTER DATABASE [HotelDB] SET  MULTI_USER 
GO
ALTER DATABASE [HotelDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HotelDB', N'ON'
GO
ALTER DATABASE [HotelDB] SET QUERY_STORE = OFF
GO
USE [HotelDB]
GO
SET NOCOUNT ON

/* Object:  Table [dbo].[AdministracionHotel]    Script Date: 6/09/2022 08:45:23 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AdministracionNHotel](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[NumEmpleados] [varchar](255) NULL,
	[NumHabitaciones] [varchar](255) NULL,
	[NumSociosAfiliados] [varchar](255) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[AdministracionNHotel] ON 

INSERT [dbo].[AdministracionNHotel] ([IDNombre], [NumEmpleados], [NumHabitaciones], [NumSociosAfiliados]) VALUES (1, N'254', N'150', N'450')
INSERT [dbo].[AdministracionNHotel] ([IDNombre], [NumEmpleados], [NumHabitaciones], [NumSociosAfiliados]) VALUES (2, N'417', N'500', N'157')
INSERT [dbo].[AdministracionNHotel] ([IDNombre], [NumEmpleados], [NumHabitaciones], [NumSociosAfiliados]) VALUES (3, N'345', N'3000', N'678')
INSERT [dbo].[AdministracionNHotel] ([IDNombre], [NumEmpleados], [NumHabitaciones], [NumSociosAfiliados]) VALUES (4, N'100', N'754', N'440')
INSERT [dbo].[AdministracionNHotel] ([IDNombre], [NumEmpleados], [NumHabitaciones], [NumSociosAfiliados]) VALUES (5, N'250', N'800', N'780')
SET IDENTITY_INSERT [dbo].[AdministracionNHotel] OFF
/* Object:  Table [dbo].[Datos]    Script Date: 6/09/2022 08:45:23 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DatosS](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[ClasificacióndelHotel] [varchar](255) NULL,
	[Ubicacion] [varchar](255) NULL,
 CONSTRAINT [PK_Datos] PRIMARY KEY CLUSTERED 
(
	[IDNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DatosS] ON 

INSERT [dbo].[DatosS] ([IDNombre], [ClasificacióndelHotel], [Ubicacion]) VALUES (1, N'Baja', N'San Juan de Miraflores')
INSERT [dbo].[DatosS] ([IDNombre], [ClasificacióndelHotel], [Ubicacion]) VALUES (2, N'Alta ', N'San Isidro')
INSERT [dbo].[DatosS] ([IDNombre], [ClasificacióndelHotel], [Ubicacion]) VALUES (3, N'Alta ', N'Miraflores')
INSERT [dbo].[DatosS] ([IDNombre], [ClasificacióndelHotel], [Ubicacion]) VALUES (4, N'Media', N'Lince')
INSERT [dbo].[DatosS] ([IDNombre], [ClasificacióndelHotel], [Ubicacion]) VALUES (5, N'Media', N'Surco')
SET IDENTITY_INSERT [dbo].[DatosS] OFF
/* Object:  Table [dbo].[GestiónHotelAlojamiento]    Script Date: 6/09/2022 08:45:23 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GestionHotelLAlojamiento](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[Reservas] [varchar](255) NOT NULL,
	[Arribos] [varchar](255) NOT NULL,
	[Partidas] [varchar](255) NOT NULL,
	[GastosYFacturación] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GestionHotelLAlojamiento] ON 

INSERT [dbo].[GestionHotelLAlojamiento] ([IDNombre], [Reservas], [Arribos], [Partidas], [GastosYFacturación]) VALUES (1, N'45', N'78', N'102', N'4553')
INSERT [dbo].[GestionHotelLAlojamiento] ([IDNombre], [Reservas], [Arribos], [Partidas], [GastosYFacturación]) VALUES (2, N'200', N'450', N'300', N'6487')
INSERT [dbo].[GestionHotelLAlojamiento] ([IDNombre], [Reservas], [Arribos], [Partidas], [GastosYFacturación]) VALUES (3, N'15', N'50', N'100', N'1502')
INSERT [dbo].[GestionHotelLAlojamiento] ([IDNombre], [Reservas], [Arribos], [Partidas], [GastosYFacturación]) VALUES (4, N'30', N'60', N'80', N'2544')
INSERT [dbo].[GestionHotelLAlojamiento] ([IDNombre], [Reservas], [Arribos], [Partidas], [GastosYFacturación]) VALUES (5, N'300', N'500', N'400', N'9787')
SET IDENTITY_INSERT [dbo].[GestionHotelLAlojamiento] OFF
/* Object:  Table [dbo].[GestiónHotelFacturación]    Script Date: 6/09/2022 08:45:23 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GestionHotelLFacturacion](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[Reserva] [varchar](255) NULL,
	[Agencia] [varchar](255) NULL,
	[Habitación] [varchar](255) NULL,
	[Huesped] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GestionHotelLFacturacion] ON 

INSERT [dbo].[GestionHotelLFacturacion] ([IDNombre], [Reserva], [Agencia], [Habitación], [Huesped]) VALUES (1, N'45678', N'Cabi', N'454', N'Abel Mitma')
INSERT [dbo].[GestionHotelLFacturacion] ([IDNombre], [Reserva], [Agencia], [Habitación], [Huesped]) VALUES (2, N'45678', N'Cabi', N'454', N'Abel Mitma')
SET IDENTITY_INSERT [dbo].[GestionHotelLFacturacion] OFF
/* Object:  Table [dbo].[GestionNumerosHotel]    Script Date: 6/09/2022 08:45:23 */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GestionNumerosSHotel](
	[IDNombre] [int] IDENTITY(1,1) NOT NULL,
	[GastosPorMes] [varchar](255) NULL,
	[PromedioClientesPorMes] [varchar](255) NULL,
	[PromedioUtilidades] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDNombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[GestionNumerosSHotel] ON 

INSERT [dbo].[GestionNumerosSHotel] ([IDNombre], [GastosPorMes], [PromedioClientesPorMes], [PromedioUtilidades]) VALUES (1, N'15000', N'1500', N'20%')
INSERT [dbo].[GestionNumerosSHotel] ([IDNombre], [GastosPorMes], [PromedioClientesPorMes], [PromedioUtilidades]) VALUES (2, N'20345', N'2300', N'15%')
INSERT [dbo].[GestionNumerosSHotel] ([IDNombre], [GastosPorMes], [PromedioClientesPorMes], [PromedioUtilidades]) VALUES (3, N'26000', N'1400', N'20%')
INSERT [dbo].[GestionNumerosSHotel] ([IDNombre], [GastosPorMes], [PromedioClientesPorMes], [PromedioUtilidades]) VALUES (4, N'16545', N'1654', N'10%')
INSERT [dbo].[GestionNumerosSHotel] ([IDNombre], [GastosPorMes], [PromedioClientesPorMes], [PromedioUtilidades]) VALUES (5, N'79840', N'3000', N'15%')
SET IDENTITY_INSERT [dbo].[GestionNumerosSHotel] OFF