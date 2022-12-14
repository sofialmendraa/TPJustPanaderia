USE [JustPan]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[mail] [varchar](max) NULL,
	[nroDocumento] [varchar](max) NOT NULL,
	[idTipoDocumento] [int] NOT NULL,
	[puntos] [int] NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleVenta]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleVenta](
	[nroVenta] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precioUnitario] [int] NOT NULL,
	[idUnidadMedida] [int] NULL,
 CONSTRAINT [PK_DetalleVenta] PRIMARY KEY CLUSTERED 
(
	[nroVenta] ASC,
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[mail] [varchar](max) NULL,
	[nroDocumento] [int] NOT NULL,
	[idTipoDocumento] [int] NOT NULL,
	[usuario] [varchar](50) NULL,
	[clave] [varchar](50) NULL,
	[idPerfil] [int] NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MateriaPrima]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MateriaPrima](
	[idMateriaPrima] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[stock] [int] NULL,
	[idUnidadMedida] [int] NOT NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_MateriaPrima] PRIMARY KEY CLUSTERED 
(
	[idMateriaPrima] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Niveles]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Niveles](
	[idNivel] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[puntosDesde] [int] NOT NULL,
	[puntosHasta] [int] NOT NULL,
	[descuento] [int] NOT NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_Niveles] PRIMARY KEY CLUSTERED 
(
	[idNivel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[idPerfil] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_Perfiles] PRIMARY KEY CLUSTERED 
(
	[idPerfil] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[tipoProducto] [int] NOT NULL,
	[precio] [int] NULL,
	[puntos] [int] NULL,
	[borrado] [int] NOT NULL,
	[idUnidadMedida] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[idProveedor] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idMateriaPrima] [int] NOT NULL,
	[mail] [varchar](max) NOT NULL,
	[telefono] [varchar](max) NOT NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[idTipoDocumento] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[idTipoDocumento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoProducto]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoProducto](
	[idTipo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_TipoProducto] PRIMARY KEY CLUSTERED 
(
	[idTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UnidadMedida]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UnidadMedida](
	[idUnidadMedida] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[borrado] [int] NOT NULL,
 CONSTRAINT [PK_UnidadMedida] PRIMARY KEY CLUSTERED 
(
	[idUnidadMedida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 15/11/2022 22:51:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[nroVenta] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[idCliente] [int] NOT NULL,
	[idEmpleado] [int] NULL,
	[subtotal] [float] NOT NULL,
	[descuento] [int] NOT NULL,
 CONSTRAINT [PK_Ventas] PRIMARY KEY CLUSTERED 
(
	[nroVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (1, N'Andrea ', N'Alvarez', N'andialvarez@gmail.com', N'17534343', 1, 780, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (2, N'Alejandro', N'Valle', N'alevalle@gmail.com', N'16014338', 1, 1460, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (3, N'Ileana', N'Fernandez', N'ilefernandez@gmail.com', N'20997775', 1, 1980, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (4, N'Ricardo', N'Dionisio', N'riquidionisio@gmail.com', N'17670969', 1, 0, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (5, N'Javier ', N'Almendra', N'javialmen@gmail.com', N'24614639', 1, 2020, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (6, N'Fernanda', N'Giubergia', N'fergiuber@gmail.com', N'25610472', 1, 14480, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (7, N'Paola', N'Carrara', N'paocarrara@gmail.com', N'23993712', 1, 30, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (8, N'Mario', N'Arrascaeta', N'marioarrascaeta@gmail.com', N'21995471', 1, 5000, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (9, N'Belen', N'Valle', N'', N'41962375', 1, 400, 1)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (12, N'juan', N'pablo', N'juan@hola', N'2000000', 1, 0, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (13, N'Mati', N'Almendra', N'mati@alm.com', N'47000222', 1, 0, 0)
INSERT [dbo].[Clientes] ([idCliente], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [puntos], [borrado]) VALUES (14, N'Cliente', N'Generico', NULL, N'00000000', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (13, 9, 3, 50, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (13, 25, 3, 200, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (14, 24, 4, 150, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (14, 37, 4, 3200, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (31, 23, 3, 120, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (31, 40, 2, 200, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (32, 19, 5, 90, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (32, 39, 2, 180, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (33, 1, 5, 520, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (33, 32, 1, 3000, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (34, 20, 5, 60, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (34, 40, 1, 200, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (35, 9, 8, 50, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (36, 24, 5, 150, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (36, 41, 5, 200, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (37, 18, 1, 90, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (37, 24, 5, 150, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (38, 24, 2, 150, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (39, 19, 2, 90, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (40, 1, 2, 520, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (41, 3, 2, 570, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (42, 24, 4, 150, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (43, 8, 2, 500, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (43, 24, 3, 150, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (44, 24, 10, 150, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (44, 36, 2, 2400, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (45, 3, 2, 570, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (45, 18, 3, 90, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (46, 6, 5, 450, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (46, 17, 20, 70, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (47, 12, 12, 80, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (47, 22, 18, 40, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (47, 27, 6, 300, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (48, 8, 3, 500, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (48, 14, 12, 90, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (49, 39, 3, 180, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (50, 8, 3, 500, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (50, 24, 4, 150, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (51, 1, 4, 520, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (51, 18, 4, 90, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (52, 1, 4, 520, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (53, 17, 1, 70, 1)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (54, 3, 3, 570, 2)
INSERT [dbo].[DetalleVenta] ([nroVenta], [idProducto], [cantidad], [precioUnitario], [idUnidadMedida]) VALUES (54, 32, 1, 3000, 1)
GO
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (1, N'Ana Paula', N'Arrascaeta', N'pauarrascaeta@gmail.com', 43880100, 1, N'pauarrascaeta', N'321', 1, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (2, N'Delfina', N'Valle', N'delfi.valle3@gmail.com', 43694422, 1, N'delfivalle', N'hola5', 1, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (3, N'Delfina', N'Dionisio', N'delfidionisio@gmail.com', 43883283, 1, N'delfidionisio', N'54321', 1, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (4, N'Sofia', N'Almendra', NULL, 43928985, 1, N'sofialmendra', N'1234', 1, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (5, N'Ramiro', N'Somavilla', N'', 43267542, 1, N'ramisomavilla', N'33333', 2, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (6, N'Pedro', N'Argañaraz', NULL, 43694423, 1, N'pedroarganaraz', N'pedro2', 3, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (7, N'Francisco', N'Ferraro', NULL, 43298671, 1, N'franferraro', N'555', 4, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (8, N'Consuelo', N'Cordoba', N'', 42987616, 1, N'consucordoba', N'consuuu', 4, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (9, N'Lucas ', N'Lopez', NULL, 43456789, 1, N'lucaslopez', N'lucas', 3, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (10, N'Celina', N'Hunziker', NULL, 43675419, 1, N'celhunziker', N'celi', 3, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (11, N'Valentina', N'Brocanelli', NULL, 41289763, 1, N'valebrocanelli', N'vale4545', 3, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (12, N'Francisco', N'Menendez', N'', 43678543, 1, N'franmenendez', N'apendicitis', 4, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (13, N'Valentina', N'Beato', NULL, 42567893, 1, N'valebeato', N'valeee', 2, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (14, N'Santiago', N'Gutierrez', N'', 43567129, 1, N'santigutierrez', N'santi', 2, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (19, N'juan', N'perez', N'juan@perez.com', 42985654, 1, NULL, NULL, NULL, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (21, N'Mateo', N'Gondikas', N'mate@gmail.com', 41256986, 1, N'mategondikas', N'123', 3, 0)
INSERT [dbo].[Empleados] ([idEmpleado], [nombre], [apellido], [mail], [nroDocumento], [idTipoDocumento], [usuario], [clave], [idPerfil], [borrado]) VALUES (25, N'Gonzita', N'Alvarez', N'gonza@alvarez', 43698547, 1, N'gonzitalvarez', N'gonza', 3, 0)
SET IDENTITY_INSERT [dbo].[Empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[MateriaPrima] ON 

INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (1, N'Harina 0000', 10, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (2, N'Huevo', 30, 3, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (3, N'Leche', 5, 4, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (4, N'Harina Integral', 8, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (5, N'Harina Leudante', 15, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (6, N'Chips Chocolate', 2, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (7, N'Queso Parmesano', 3, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (8, N'Manteca', 10, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (9, N'Aceite', 20, 4, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (10, N'Sal', 7, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (11, N'Azucar', 15, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (12, N'Crema', 10, 4, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (13, N'Dulce de Leche', 20, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (14, N'Paquete Oreo', 25, 1, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (16, N'Paquete Chocolinas', 20, 1, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (17, N'Frutilla', 3, 2, 0)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (19, N'Limón', 4, 2, 1)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (20, N'Mandarina', 5, 1, 1)
INSERT [dbo].[MateriaPrima] ([idMateriaPrima], [nombre], [stock], [idUnidadMedida], [borrado]) VALUES (21, N'Limon', 3, 1, 0)
SET IDENTITY_INSERT [dbo].[MateriaPrima] OFF
GO
SET IDENTITY_INSERT [dbo].[Niveles] ON 

INSERT [dbo].[Niveles] ([idNivel], [nombre], [puntosDesde], [puntosHasta], [descuento], [borrado]) VALUES (1, N'Cobre', 0, 10000, 0, 0)
INSERT [dbo].[Niveles] ([idNivel], [nombre], [puntosDesde], [puntosHasta], [descuento], [borrado]) VALUES (2, N'Bronce', 10001, 25000, 5, 0)
INSERT [dbo].[Niveles] ([idNivel], [nombre], [puntosDesde], [puntosHasta], [descuento], [borrado]) VALUES (3, N'Plata', 25001, 40000, 10, 0)
INSERT [dbo].[Niveles] ([idNivel], [nombre], [puntosDesde], [puntosHasta], [descuento], [borrado]) VALUES (4, N'Oro', 40001, 70000, 20, 0)
INSERT [dbo].[Niveles] ([idNivel], [nombre], [puntosDesde], [puntosHasta], [descuento], [borrado]) VALUES (5, N'Platino', 70001, 150000, 25, 0)
SET IDENTITY_INSERT [dbo].[Niveles] OFF
GO
SET IDENTITY_INSERT [dbo].[Perfiles] ON 

INSERT [dbo].[Perfiles] ([idPerfil], [nombre], [descripcion], [borrado]) VALUES (1, N'Administrador', NULL, 0)
INSERT [dbo].[Perfiles] ([idPerfil], [nombre], [descripcion], [borrado]) VALUES (2, N'Vendedor', NULL, 0)
INSERT [dbo].[Perfiles] ([idPerfil], [nombre], [descripcion], [borrado]) VALUES (3, N'Receptor mercaderia', NULL, 0)
INSERT [dbo].[Perfiles] ([idPerfil], [nombre], [descripcion], [borrado]) VALUES (4, N'Responsable de reportes', NULL, 0)
SET IDENTITY_INSERT [dbo].[Perfiles] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (1, N'Pan Lactal', 1, 520, 200, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (2, N'Pan Integral', 1, 560, 220, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (3, N'Pan Integral con Semillas', 1, 570, 230, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (4, N'Pan Francés', 1, 350, 100, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (5, N'Pan Mignon', 1, 350, 100, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (6, N'Pan de Campo', 1, 450, 150, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (7, N'Pan Brioche', 1, 400, 130, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (8, N'Pan Árabe', 1, 500, 180, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (9, N'Medialuna Dulce', 9, 50, 20, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (10, N'Medialuna Salada', 9, 70, 30, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (11, N'Cañoncito', 9, 30, 10, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (12, N'Vigilante', 9, 80, 10, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (13, N'Factura con Crema', 9, 90, 30, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (14, N'Factura con Dulce de Leche', 9, 90, 30, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (15, N'Tortita Negra', 9, 40, 10, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (16, N'Alfajor de Maicena', 2, 60, 20, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (17, N'Bomba de Crema', 2, 70, 10, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (18, N'Cuadrado Lemon', 2, 90, 40, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (19, N'Merenguitos', 2, 90, 20, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (20, N'Coquito', 2, 60, 20, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (21, N'Ojo de Buey', 2, 70, 10, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (22, N'Trufa', 2, 40, 40, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (23, N'Jugo de Naranja', 3, 120, 50, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (24, N'Limonada', 3, 150, 60, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (25, N'Café', 3, 200, 100, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (26, N'Café con Leche', 3, 250, 120, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (27, N'Galleta Bañada en Chocolate', 6, 300, 130, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (28, N'Galleta con Chips ', 6, 330, 140, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (29, N'Galleta de Limón', 6, 350, 150, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (30, N'Tarta de Frutilla', 4, 2500, 500, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (31, N'Tarta de coco', 4, 2000, 300, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (32, N'Lemon Pie', 4, 3000, 400, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (33, N'Cabsha', 4, 2300, 350, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (34, N'Cheesecake de Frutos Rojos', 5, 3400, 600, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (35, N'Rogel', 5, 3000, 400, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (36, N'Chocotorta', 5, 2400, 380, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (37, N'Marquise', 5, 3200, 550, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (38, N'Torta Oreo', 5, 3600, 700, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (39, N'Sandwich de Miga', 8, 180, 80, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (40, N'Pebete JYQ', 8, 200, 120, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (41, N'Pebete Salame', 8, 200, 120, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (42, N'Sandwich Veggie', 8, 300, 200, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (43, N'Pan Lactal sin TACC', 7, 620, 250, 0, 2)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (44, N'Alfajores sin TACC ', 7, 90, 40, 0, 1)
INSERT [dbo].[Productos] ([idProducto], [nombre], [tipoProducto], [precio], [puntos], [borrado], [idUnidadMedida]) VALUES (45, N'Chocotorta sin TACC', 7, 2600, 520, 0, 1)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 

INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [idMateriaPrima], [mail], [telefono], [borrado]) VALUES (1, N'Harinas San Patricio', 1, N'sanpatricio@gmail.com', N'352345756', 0)
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [idMateriaPrima], [mail], [telefono], [borrado]) VALUES (2, N'La Vainilla', 8, N'lavaini@gmail.com', N'3512587391', 0)
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [idMateriaPrima], [mail], [telefono], [borrado]) VALUES (3, N'Punto Panadero', 13, N'ptopan@gmail.com', N'3542765892', 0)
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [idMateriaPrima], [mail], [telefono], [borrado]) VALUES (4, N'Panadex', 5, N'panadex@gmail.com', N'3876452190', 0)
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [idMateriaPrima], [mail], [telefono], [borrado]) VALUES (5, N'Granja Millonaria', 2, N'granamillo@gmai.com', N'3514576823', 0)
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [idMateriaPrima], [mail], [telefono], [borrado]) VALUES (6, N'Gran Pan', 1, N'granpancito@gmail.com', N'3512369985', 0)
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [idMateriaPrima], [mail], [telefono], [borrado]) VALUES (7, N'Gallinas Felices', 2, N'lagallinita@gmail.com', N'3512385674', 0)
INSERT [dbo].[Proveedores] ([idProveedor], [nombre], [idMateriaPrima], [mail], [telefono], [borrado]) VALUES (8, N'BuenosDias', 11, N'sisis@hotmail.com', N'3512406958', 1)
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoDocumento] ON 

INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre], [borrado]) VALUES (1, N'DNI', 0)
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre], [borrado]) VALUES (2, N'Libreta Cívica', 0)
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre], [borrado]) VALUES (3, N'Libreta de Enrolamiento', 0)
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre], [borrado]) VALUES (4, N'Pasaporte', 0)
INSERT [dbo].[TipoDocumento] ([idTipoDocumento], [nombre], [borrado]) VALUES (5, N'Otros', 0)
SET IDENTITY_INSERT [dbo].[TipoDocumento] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoProducto] ON 

INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (1, N'Panificación', 0)
INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (2, N'Masas finas', 0)
INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (3, N'Bebidas', 0)
INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (4, N'Tartas', 0)
INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (5, N'Tortas', 0)
INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (6, N'Galletas', 0)
INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (7, N'Sin TACC', 0)
INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (8, N'Sandwiches', 0)
INSERT [dbo].[TipoProducto] ([idTipo], [nombre], [borrado]) VALUES (9, N'Facturas', 0)
SET IDENTITY_INSERT [dbo].[TipoProducto] OFF
GO
SET IDENTITY_INSERT [dbo].[UnidadMedida] ON 

INSERT [dbo].[UnidadMedida] ([idUnidadMedida], [nombre], [borrado]) VALUES (1, N'Unidad', 0)
INSERT [dbo].[UnidadMedida] ([idUnidadMedida], [nombre], [borrado]) VALUES (2, N'Kilo', 0)
INSERT [dbo].[UnidadMedida] ([idUnidadMedida], [nombre], [borrado]) VALUES (3, N'Maple', 0)
INSERT [dbo].[UnidadMedida] ([idUnidadMedida], [nombre], [borrado]) VALUES (4, N'Litro', 0)
INSERT [dbo].[UnidadMedida] ([idUnidadMedida], [nombre], [borrado]) VALUES (5, N'Gramos', 0)
SET IDENTITY_INSERT [dbo].[UnidadMedida] OFF
GO
SET IDENTITY_INSERT [dbo].[Ventas] ON 

INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (13, CAST(N'2022-10-17' AS Date), 3, 1, 750, 5)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (14, CAST(N'2022-10-17' AS Date), 3, 2, 13400, 5)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (31, CAST(N'2022-10-17' AS Date), 3, 2, 760, 5)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (32, CAST(N'2022-10-17' AS Date), 3, 1, 810, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (33, CAST(N'2022-10-18' AS Date), 14, 3, 5600, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (34, CAST(N'2022-10-18' AS Date), 3, 1, 500, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (35, CAST(N'2022-10-18' AS Date), 6, 3, 400, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (36, CAST(N'2022-10-18' AS Date), 5, 1, 1750, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (37, CAST(N'2022-10-18' AS Date), 6, 1, 840, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (38, CAST(N'2022-10-18' AS Date), 6, 1, 300, 5)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (39, CAST(N'2022-10-18' AS Date), 5, 1, 180, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (40, CAST(N'2022-10-18' AS Date), 14, 1, 1040, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (41, CAST(N'2022-10-18' AS Date), 6, 1, 1140, 5)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (42, CAST(N'2022-10-18' AS Date), 14, 1, 600, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (43, CAST(N'2022-10-21' AS Date), 6, 1, 1450, 5)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (44, CAST(N'2022-09-11' AS Date), 2, 2, 6300, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (45, CAST(N'2022-09-15' AS Date), 1, 2, 1410, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (46, CAST(N'2022-09-17' AS Date), 5, 1, 3650, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (47, CAST(N'2022-09-19' AS Date), 14, 1, 3480, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (48, CAST(N'2022-09-24' AS Date), 6, 1, 2580, 5)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (49, CAST(N'2022-11-01' AS Date), 14, 1, 540, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (50, CAST(N'2022-11-14' AS Date), 14, 4, 2100, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (51, CAST(N'2022-11-15' AS Date), 14, 4, 2440, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (52, CAST(N'2022-11-15' AS Date), 14, 4, 2080, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (53, CAST(N'2022-11-15' AS Date), 14, 4, 70, 0)
INSERT [dbo].[Ventas] ([nroVenta], [fecha], [idCliente], [idEmpleado], [subtotal], [descuento]) VALUES (54, CAST(N'2022-11-15' AS Date), 14, 4, 4710, 0)
SET IDENTITY_INSERT [dbo].[Ventas] OFF
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_TipoDocumento_Clientes] FOREIGN KEY([idTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_TipoDocumento_Clientes]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Productos1] FOREIGN KEY([idUnidadMedida])
REFERENCES [dbo].[UnidadMedida] ([idUnidadMedida])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Productos1]
GO
ALTER TABLE [dbo].[DetalleVenta]  WITH CHECK ADD  CONSTRAINT [FK_DetalleVenta_Ventas] FOREIGN KEY([nroVenta])
REFERENCES [dbo].[Ventas] ([nroVenta])
GO
ALTER TABLE [dbo].[DetalleVenta] CHECK CONSTRAINT [FK_DetalleVenta_Ventas]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_Perfiles] FOREIGN KEY([idPerfil])
REFERENCES [dbo].[Perfiles] ([idPerfil])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_Perfiles]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD  CONSTRAINT [FK_Empleados_TipoDocumento] FOREIGN KEY([idTipoDocumento])
REFERENCES [dbo].[TipoDocumento] ([idTipoDocumento])
GO
ALTER TABLE [dbo].[Empleados] CHECK CONSTRAINT [FK_Empleados_TipoDocumento]
GO
ALTER TABLE [dbo].[MateriaPrima]  WITH CHECK ADD  CONSTRAINT [FK_MateriaPrima_UnidadMedida] FOREIGN KEY([idUnidadMedida])
REFERENCES [dbo].[UnidadMedida] ([idUnidadMedida])
GO
ALTER TABLE [dbo].[MateriaPrima] CHECK CONSTRAINT [FK_MateriaPrima_UnidadMedida]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_TipoProducto] FOREIGN KEY([tipoProducto])
REFERENCES [dbo].[TipoProducto] ([idTipo])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_TipoProducto]
GO
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_MateriaPrima] FOREIGN KEY([idMateriaPrima])
REFERENCES [dbo].[MateriaPrima] ([idMateriaPrima])
GO
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_MateriaPrima]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Clientes] FOREIGN KEY([idCliente])
REFERENCES [dbo].[Clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Clientes]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Empleados] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[Empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Empleados]
GO
