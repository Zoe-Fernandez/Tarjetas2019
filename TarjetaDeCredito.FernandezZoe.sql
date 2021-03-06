USE [master]
GO
/****** Object:  Database [TarjetaDeCredito.FernandezZoe]    Script Date: 27/11/2020 19:42:36 ******/
CREATE DATABASE [TarjetaDeCredito.FernandezZoe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TarjetaDeCredito', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TarjetaDeCredito.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TarjetaDeCredito_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TarjetaDeCredito_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TarjetaDeCredito.FernandezZoe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET ARITHABORT OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET RECOVERY FULL 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET  MULTI_USER 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TarjetaDeCredito.FernandezZoe', N'ON'
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET QUERY_STORE = OFF
GO
USE [TarjetaDeCredito.FernandezZoe]
GO
/****** Object:  Table [dbo].[CarteraConsumos]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarteraConsumos](
	[IdCartera] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[LimiteCredito] [nvarchar](50) NULL,
	[CostoRenovacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarteraConsumos] PRIMARY KEY CLUSTERED 
(
	[IdCartera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[IdCliente] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[FechaNac] [datetime] NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[NroDoc] [nvarchar](50) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[IdLocalidad] [int] NOT NULL,
	[Calle] [nvarchar](50) NULL,
	[Altura] [nvarchar](50) NULL,
	[TelFijo] [nvarchar](50) NULL,
	[TelMovil] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IdCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comercios]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comercios](
	[IdComercio] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [nvarchar](50) NOT NULL,
	[PersonaContacto] [nvarchar](50) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[IdLocalidad] [int] NOT NULL,
	[Calle] [nvarchar](50) NULL,
	[Altura] [nvarchar](50) NULL,
	[TelFijo] [nvarchar](50) NULL,
	[TelMovil] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Comercios] PRIMARY KEY CLUSTERED 
(
	[IdComercio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compras]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compras](
	[IdCompra] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[IdComercio] [int] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[IdTarjeta] [int] NOT NULL,
 CONSTRAINT [PK_Compras] PRIMARY KEY CLUSTERED 
(
	[IdCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[IdTipoDocumento] [int] NOT NULL,
	[NroDoc] [nvarchar](50) NOT NULL,
	[IdProvincia] [int] NOT NULL,
	[IdLocalidad] [int] NOT NULL,
	[Calle] [nvarchar](50) NULL,
	[Altura] [nvarchar](50) NULL,
	[TelFijo] [nvarchar](50) NULL,
	[TelMovil] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IdComercio] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCompras]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCompras](
	[IdItemCompra] [int] IDENTITY(1,1) NOT NULL,
	[IdCompra] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[PrecioUnitario] [decimal](18, 2) NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[CantCuotas] [int] NOT NULL,
	[PrecioCuota] [decimal](18, 2) NOT NULL,
	[Detalle] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ItemCompras] PRIMARY KEY CLUSTERED 
(
	[IdItemCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[IdLocalidad] [int] IDENTITY(1,1) NOT NULL,
	[NombreLocalidad] [nvarchar](50) NOT NULL,
	[IdProvincia] [int] NOT NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED 
(
	[IdLocalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[IdProvincia] [int] IDENTITY(1,1) NOT NULL,
	[NombreProvincia] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[IdProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarjetas]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarjetas](
	[IdTarjeta] [int] IDENTITY(1,1) NOT NULL,
	[IdCliente] [int] NOT NULL,
	[NroTarjeta] [nvarchar](50) NOT NULL,
	[IdCartera] [int] NOT NULL,
	[ValidaDesde] [datetime] NOT NULL,
	[ValidaHasta] [datetime] NOT NULL,
 CONSTRAINT [PK_Tarjeta] PRIMARY KEY CLUSTERED 
(
	[IdTarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDocumentos]    Script Date: 27/11/2020 19:42:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDocumentos](
	[IdTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TiposDocumentos] PRIMARY KEY CLUSTERED 
(
	[IdTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Localidades] FOREIGN KEY([IdLocalidad])
REFERENCES [dbo].[Localidades] ([IdLocalidad])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Localidades]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_Provincias] FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincias] ([IdProvincia])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_Provincias]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_Clientes_TiposDocumentos] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[TiposDocumentos] ([IdTipoDocumento])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_Clientes_TiposDocumentos]
GO
ALTER TABLE [dbo].[Comercios]  WITH CHECK ADD  CONSTRAINT [FK_Comercios_Localidades] FOREIGN KEY([IdLocalidad])
REFERENCES [dbo].[Localidades] ([IdLocalidad])
GO
ALTER TABLE [dbo].[Comercios] CHECK CONSTRAINT [FK_Comercios_Localidades]
GO
ALTER TABLE [dbo].[Comercios]  WITH CHECK ADD  CONSTRAINT [FK_Comercios_Provincias] FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincias] ([IdProvincia])
GO
ALTER TABLE [dbo].[Comercios] CHECK CONSTRAINT [FK_Comercios_Provincias]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Comercios] FOREIGN KEY([IdComercio])
REFERENCES [dbo].[Comercios] ([IdComercio])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Comercios]
GO
ALTER TABLE [dbo].[Compras]  WITH CHECK ADD  CONSTRAINT [FK_Compras_Tarjeta] FOREIGN KEY([IdTarjeta])
REFERENCES [dbo].[Tarjetas] ([IdTarjeta])
GO
ALTER TABLE [dbo].[Compras] CHECK CONSTRAINT [FK_Compras_Tarjeta]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Comercios] FOREIGN KEY([IdComercio])
REFERENCES [dbo].[Comercios] ([IdComercio])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Comercios]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Localidades] FOREIGN KEY([IdLocalidad])
REFERENCES [dbo].[Localidades] ([IdLocalidad])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Localidades]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Provincias] FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincias] ([IdProvincia])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Provincias]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_TiposDocumentos] FOREIGN KEY([IdTipoDocumento])
REFERENCES [dbo].[TiposDocumentos] ([IdTipoDocumento])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_TiposDocumentos]
GO
ALTER TABLE [dbo].[ItemCompras]  WITH CHECK ADD  CONSTRAINT [FK_ItemCompras_Compras1] FOREIGN KEY([IdCompra])
REFERENCES [dbo].[Compras] ([IdCompra])
GO
ALTER TABLE [dbo].[ItemCompras] CHECK CONSTRAINT [FK_ItemCompras_Compras1]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_Localidades_Provincias] FOREIGN KEY([IdProvincia])
REFERENCES [dbo].[Provincias] ([IdProvincia])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_Localidades_Provincias]
GO
ALTER TABLE [dbo].[Tarjetas]  WITH CHECK ADD  CONSTRAINT [FK_Tarjetas_CarteraConsumos] FOREIGN KEY([IdCartera])
REFERENCES [dbo].[CarteraConsumos] ([IdCartera])
GO
ALTER TABLE [dbo].[Tarjetas] CHECK CONSTRAINT [FK_Tarjetas_CarteraConsumos]
GO
ALTER TABLE [dbo].[Tarjetas]  WITH CHECK ADD  CONSTRAINT [FK_Tarjetas_Clientes] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Clientes] ([IdCliente])
GO
ALTER TABLE [dbo].[Tarjetas] CHECK CONSTRAINT [FK_Tarjetas_Clientes]
GO
USE [master]
GO
ALTER DATABASE [TarjetaDeCredito.FernandezZoe] SET  READ_WRITE 
GO
