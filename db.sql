USE [master]
GO
/****** Object:  Database [DBVENTA]    Script Date: 6/09/2024 9:17:57 a. m. ******/
CREATE DATABASE [DBVENTA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBVENTA', FILENAME = N'C:\SqlData\DBVENTA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBVENTA_log', FILENAME = N'C:\SqlData\log\DBVENTA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DBVENTA] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBVENTA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBVENTA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBVENTA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBVENTA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBVENTA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBVENTA] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBVENTA] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBVENTA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBVENTA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBVENTA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBVENTA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBVENTA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBVENTA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBVENTA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBVENTA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBVENTA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DBVENTA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBVENTA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBVENTA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBVENTA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBVENTA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBVENTA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBVENTA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBVENTA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBVENTA] SET  MULTI_USER 
GO
ALTER DATABASE [DBVENTA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBVENTA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBVENTA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBVENTA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBVENTA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBVENTA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBVENTA] SET QUERY_STORE = ON
GO
ALTER DATABASE [DBVENTA] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DBVENTA]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[idCategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[esActivo] [bit] NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[idDetalleVenta] [int] IDENTITY(1,1) NOT NULL,
	[idVenta] [int] NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[precio] [decimal](10, 2) NULL,
	[total] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDetalleVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[idMenu] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[icono] [varchar](50) NULL,
	[url] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idMenu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuRol]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuRol](
	[idMenuRol] [int] IDENTITY(1,1) NOT NULL,
	[idMenu] [int] NULL,
	[idRol] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMenuRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumeroDocumento]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumeroDocumento](
	[idNumeroDocumento] [int] IDENTITY(1,1) NOT NULL,
	[ultimo_Numero] [int] NOT NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idNumeroDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[idCategoria] [int] NULL,
	[stock] [int] NULL,
	[precio] [decimal](10, 2) NULL,
	[esActivo] [bit] NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreCompleto] [varchar](100) NULL,
	[correo] [varchar](40) NULL,
	[idRol] [int] NULL,
	[clave] [varchar](40) NULL,
	[esActivo] [bit] NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 6/09/2024 9:17:58 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] IDENTITY(1,1) NOT NULL,
	[numeroDocumento] [varchar](40) NULL,
	[tipoPago] [varchar](50) NULL,
	[total] [decimal](10, 2) NULL,
	[fechaRegistro] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([idCategoria], [nombre], [esActivo], [fechaRegistro]) VALUES (1, N'Laptops', 1, CAST(N'2024-09-06T08:25:22.127' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [nombre], [esActivo], [fechaRegistro]) VALUES (2, N'Monitores', 1, CAST(N'2024-09-06T08:25:22.127' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [nombre], [esActivo], [fechaRegistro]) VALUES (3, N'Teclados', 1, CAST(N'2024-09-06T08:25:22.127' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [nombre], [esActivo], [fechaRegistro]) VALUES (4, N'Auriculares', 1, CAST(N'2024-09-06T08:25:22.127' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [nombre], [esActivo], [fechaRegistro]) VALUES (5, N'Memorias', 1, CAST(N'2024-09-06T08:25:22.127' AS DateTime))
INSERT [dbo].[Categoria] ([idCategoria], [nombre], [esActivo], [fechaRegistro]) VALUES (6, N'Accesorios', 1, CAST(N'2024-09-06T08:25:22.127' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categoria] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([idMenu], [nombre], [icono], [url]) VALUES (1, N'DashBoard', N'dashboard', N'/pages/dashboard')
INSERT [dbo].[Menu] ([idMenu], [nombre], [icono], [url]) VALUES (2, N'Usuarios', N'group', N'/pages/usuarios')
INSERT [dbo].[Menu] ([idMenu], [nombre], [icono], [url]) VALUES (3, N'Productos', N'collections_bookmark', N'/pages/productos')
INSERT [dbo].[Menu] ([idMenu], [nombre], [icono], [url]) VALUES (4, N'Venta', N'currency_exchange', N'/pages/venta')
INSERT [dbo].[Menu] ([idMenu], [nombre], [icono], [url]) VALUES (5, N'Historial Ventas', N'edit_note', N'/pages/historial_venta')
INSERT [dbo].[Menu] ([idMenu], [nombre], [icono], [url]) VALUES (6, N'Reportes', N'receipt', N'/pages/reportes')
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuRol] ON 

INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (1, 1, 1)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (2, 2, 1)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (3, 3, 1)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (4, 4, 1)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (5, 5, 1)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (6, 6, 1)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (7, 4, 2)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (8, 5, 2)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (9, 3, 3)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (10, 4, 3)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (11, 5, 3)
INSERT [dbo].[MenuRol] ([idMenuRol], [idMenu], [idRol]) VALUES (12, 6, 3)
SET IDENTITY_INSERT [dbo].[MenuRol] OFF
GO
SET IDENTITY_INSERT [dbo].[NumeroDocumento] ON 

INSERT [dbo].[NumeroDocumento] ([idNumeroDocumento], [ultimo_Numero], [fechaRegistro]) VALUES (1, 0, CAST(N'2024-09-06T08:25:22.160' AS DateTime))
SET IDENTITY_INSERT [dbo].[NumeroDocumento] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (1, N'laptop samsung book pro', 1, 20, CAST(2500000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (2, N'laptop lenovo idea pad', 1, 30, CAST(2200000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (3, N'laptop asus zenbook duo', 1, 30, CAST(2100000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (4, N'monitor teros gaming te-2', 2, 25, CAST(1050000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (5, N'monitor samsung curvo', 2, 15, CAST(1400000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (6, N'monitor huawei gamer', 2, 10, CAST(1350000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (7, N'teclado seisen gamer', 3, 10, CAST(800000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (8, N'teclado antryx gamer', 3, 10, CAST(100000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (9, N'teclado logitech', 3, 10, CAST(100000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (10, N'auricular logitech gamer', 4, 15, CAST(80000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (11, N'auricular hyperx gamer', 4, 20, CAST(680000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (12, N'auricular redragon rgb', 4, 25, CAST(95000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (13, N'memoria kingston rgb', 5, 10, CAST(20000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (14, N'ventilador cooler master', 6, 20, CAST(200000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
INSERT [dbo].[Producto] ([idProducto], [nombre], [idCategoria], [stock], [precio], [esActivo], [fechaRegistro]) VALUES (15, N'mini ventilador lenono', 6, 15, CAST(200000.00 AS Decimal(10, 2)), 1, CAST(N'2024-09-06T08:25:22.137' AS DateTime))
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([idRol], [nombre], [fechaRegistro]) VALUES (1, N'Administrador', CAST(N'2024-09-06T08:25:22.113' AS DateTime))
INSERT [dbo].[Rol] ([idRol], [nombre], [fechaRegistro]) VALUES (2, N'Empleado', CAST(N'2024-09-06T08:25:22.113' AS DateTime))
INSERT [dbo].[Rol] ([idRol], [nombre], [fechaRegistro]) VALUES (3, N'Supervisor', CAST(N'2024-09-06T08:25:22.113' AS DateTime))
SET IDENTITY_INSERT [dbo].[Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([idUsuario], [nombreCompleto], [correo], [idRol], [clave], [esActivo], [fechaRegistro]) VALUES (1, N'Jeisson Llarave', N'llaraveje@gmail.com', 1, N'123', 1, CAST(N'2024-09-06T08:25:22.120' AS DateTime))
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
ALTER TABLE [dbo].[Categoria] ADD  DEFAULT ((1)) FOR [esActivo]
GO
ALTER TABLE [dbo].[Categoria] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[NumeroDocumento] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Producto] ADD  DEFAULT ((1)) FOR [esActivo]
GO
ALTER TABLE [dbo].[Producto] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Rol] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT ((1)) FOR [esActivo]
GO
ALTER TABLE [dbo].[Usuario] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[Venta] ADD  DEFAULT (getdate()) FOR [fechaRegistro]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[MenuRol]  WITH CHECK ADD FOREIGN KEY([idMenu])
REFERENCES [dbo].[Menu] ([idMenu])
GO
ALTER TABLE [dbo].[MenuRol]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD FOREIGN KEY([idCategoria])
REFERENCES [dbo].[Categoria] ([idCategoria])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
USE [master]
GO
ALTER DATABASE [DBVENTA] SET  READ_WRITE 
GO
