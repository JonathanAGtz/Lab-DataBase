USE [practica6]
GO
/****** Object:  Table [dbo].[cantidadProducto]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cantidadProducto](
	[cantProdu] [bigint] NOT NULL,
	[idProducto] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cantProdu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[clientes]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[idCliente] [bigint] NOT NULL,
	[nombre] [nvarchar](20) NULL,
	[primerApellido] [nvarchar](20) NULL,
	[segundoApellido] [nvarchar](20) NULL,
	[tipoCliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[compra]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra](
	[idCompra] [bigint] NOT NULL,
	[idEmpleado] [bigint] NOT NULL,
	[idProveedor] [bigint] NOT NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalleCompra]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleCompra](
	[idCompra] [bigint] NOT NULL,
	[idProducto] [bigint] NOT NULL,
	[precioProdu] [float] NULL,
	[subTotal] [float] NULL,
	[iva] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleVenta](
	[idVenta] [bigint] NOT NULL,
	[idProducto] [bigint] NOT NULL,
	[precioProdu] [float] NULL,
	[subTotal] [float] NULL,
	[iva] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[direccion]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[direccion] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[empleados]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[idEmpleado] [bigint] NOT NULL,
	[nombre] [nvarchar](20) NULL,
	[primerApellido] [nvarchar](20) NULL,
	[segundoApellido] [nvarchar](20) NULL,
	[tipoEmpleado] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[factura]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[idFactura] [bigint] NOT NULL,
	[idTicket] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[numeracion]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[numeracion](
	[codigo] [nvarchar](50) NULL,
	[descripcion] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productos]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[idProducto] [bigint] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[idProveedor] [bigint] NOT NULL,
	[cantProdu] [bigint] NOT NULL,
	[tipoProducto] [int] NULL,
	[precioProdu] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[idProveedor] [bigint] NOT NULL,
	[nomProveedor] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ticket]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[idTicket] [bigint] NOT NULL,
	[direccion] [nvarchar](50) NOT NULL,
	[idVenta] [bigint] NOT NULL,
	[idFactura] [bigint] NOT NULL,
	[idEmpleado] [bigint] NOT NULL,
	[idCliente] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoCliente](
	[tipoCliente] [int] NOT NULL,
	[descripcion] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipoEmpleado]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoEmpleado](
	[tipoEmpleado] [bigint] NOT NULL,
	[descripcion] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipoProducto]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoProducto](
	[tipoProducto] [int] NOT NULL,
	[descripcion] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[venta]    Script Date: 20/10/2019 08:39:01 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[idVenta] [bigint] NOT NULL,
	[idEmpleado] [bigint] NOT NULL,
	[idCliente] [bigint] NOT NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (9, 14030)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (10, 14026)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (15, 14029)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (19, 14023)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (20, 14024)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (21, 14025)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (25, 14037)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (29, 14032)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (30, 14033)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (31, 14034)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (32, 14036)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (35, 14035)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (40, 14027)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (41, 14028)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (49, 14015)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (50, 14016)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (51, 14014)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (56, 14031)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (70, 14012)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (79, 14018)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (80, 14011)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (81, 14013)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (82, 14017)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (83, 14019)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (84, 14020)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (85, 14021)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (100, 14003)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (110, 14002)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (111, 14006)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (114, 14007)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (120, 14001)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (130, 14004)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (150, 14008)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (170, 14009)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (200, 14010)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (550, 14005)
INSERT [dbo].[cantidadProducto] ([cantProdu], [idProducto]) VALUES (878, 14022)
INSERT [dbo].[clientes] ([idCliente], [nombre], [primerApellido], [segundoApellido], [tipoCliente]) VALUES (7002, N'Juan Isidro', N'Guzman', N'Flores', 1)
INSERT [dbo].[clientes] ([idCliente], [nombre], [primerApellido], [segundoApellido], [tipoCliente]) VALUES (7003, N'Sofia', N'Hernan', N'Ramos', 2)
INSERT [dbo].[clientes] ([idCliente], [nombre], [primerApellido], [segundoApellido], [tipoCliente]) VALUES (7004, N'Fernando', N'Salazar', N'Campos', 1)
INSERT [dbo].[clientes] ([idCliente], [nombre], [primerApellido], [segundoApellido], [tipoCliente]) VALUES (7005, N'Jose Ernesto', N'Rivas', N'Santos', 2)
INSERT [dbo].[clientes] ([idCliente], [nombre], [primerApellido], [segundoApellido], [tipoCliente]) VALUES (7006, N'Israel', N'Palomino', N'Teran', 1)
INSERT [dbo].[clientes] ([idCliente], [nombre], [primerApellido], [segundoApellido], [tipoCliente]) VALUES (7007, N'Emmanuel', N'Garcia', N'Elizondo', 1)
INSERT [dbo].[detalleVenta] ([idVenta], [idProducto], [precioProdu], [subTotal], [iva]) VALUES (250001, 14002, 12, 12, 0)
INSERT [dbo].[direccion] ([direccion]) VALUES (N'Av. Jalisco # 23415, col Roma Gpe Nuevo Leon')
INSERT [dbo].[empleados] ([idEmpleado], [nombre], [primerApellido], [segundoApellido], [tipoEmpleado]) VALUES (1000, N'Jonathan Adrian', N'Gutierrez', N'Alvarado', 5)
INSERT [dbo].[empleados] ([idEmpleado], [nombre], [primerApellido], [segundoApellido], [tipoEmpleado]) VALUES (1001, N'Nelly Alexandra', N'Viera', N'Cardona', 4)
INSERT [dbo].[empleados] ([idEmpleado], [nombre], [primerApellido], [segundoApellido], [tipoEmpleado]) VALUES (1002, N'Fransisco Rafael', N'Castillo', N'Martinez', 2)
INSERT [dbo].[empleados] ([idEmpleado], [nombre], [primerApellido], [segundoApellido], [tipoEmpleado]) VALUES (1003, N'Abel Antonio', N'Castro', N'Valdez', 3)
INSERT [dbo].[empleados] ([idEmpleado], [nombre], [primerApellido], [segundoApellido], [tipoEmpleado]) VALUES (1004, N'Maria de Jesus', N'Gonzalez', N'Cruz', 1)
INSERT [dbo].[empleados] ([idEmpleado], [nombre], [primerApellido], [segundoApellido], [tipoEmpleado]) VALUES (1005, N'Alan Alberto', N'Cuellar', N'Rios', 1)
INSERT [dbo].[empleados] ([idEmpleado], [nombre], [primerApellido], [segundoApellido], [tipoEmpleado]) VALUES (1006, N'Imelda', N'Renteria', N'Vazquez', 2)
INSERT [dbo].[empleados] ([idEmpleado], [nombre], [primerApellido], [segundoApellido], [tipoEmpleado]) VALUES (1007, N'Carolina', N'Hernandez', N'Portillo', 1)
INSERT [dbo].[factura] ([idFactura], [idTicket]) VALUES (25001, 50001)
INSERT [dbo].[numeracion] ([codigo], [descripcion]) VALUES (N'1000 al 7000', N'Empleados')
INSERT [dbo].[numeracion] ([codigo], [descripcion]) VALUES (N'7001 al 13999', N'Clientes ')
INSERT [dbo].[numeracion] ([codigo], [descripcion]) VALUES (N'14000 al 19999', N'Productos ')
INSERT [dbo].[numeracion] ([codigo], [descripcion]) VALUES (N'20000 al 24999', N'Proveedores ')
INSERT [dbo].[numeracion] ([codigo], [descripcion]) VALUES (N'25000 al 49999', N'Facturas')
INSERT [dbo].[numeracion] ([codigo], [descripcion]) VALUES (N'50000 al 149999', N'Tickets')
INSERT [dbo].[numeracion] ([codigo], [descripcion]) VALUES (N'150000 al 249999', N'Compras')
INSERT [dbo].[numeracion] ([codigo], [descripcion]) VALUES (N'250000 en adelante', N'Ventas')
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14001, N'Emperador chocolate 101g', 20001, 120, 1, 15)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14002, N'Coca cola 600ml', 20002, 110, 1, 12)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14003, N'Pepsi 2.5L', 20003, 100, 1, 27.5)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14004, N'Mantecadas 125g', 20004, 130, 1, 17)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14005, N'Takis Fuego 62g', 20005, 550, 1, 12)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14006, N'Sabritones 165g', 20006, 111, 1, 23.5)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14007, N'Filete de pescado 330g', 20007, 114, 2, 33.5)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14008, N'Leche entera 1L', 20008, 150, 3, 20)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14009, N'Salsa verde 300ml', 20009, 170, 1, 24)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14010, N'Cloralex 900ml', 20010, 200, 5, 28)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14011, N'Coca cola 50ml', 20002, 80, 1, 11.5)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14012, N'Coca cola 2L', 20002, 70, 1, 28)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14013, N'Coca cola 2.5L', 20002, 81, 1, 30)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14014, N'Emperador Vainilla 101g', 20001, 50, 1, 17)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14015, N'Chokis 57g', 20001, 50, 1, 14)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14016, N'Emperador Limon', 20001, 50, 1, 17)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14017, N'Pepsi 600ml', 20003, 82, 1, 10)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14018, N'Mirinda 600ml', 20003, 79, 1, 10)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14019, N'Seven Up 600ml', 20003, 83, 1, 10)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14020, N'Pepsi 1L', 20003, 84, 1, 24)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14021, N'Pepsi 3L', 20003, 85, 1, 29)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14022, N'Manzanita 600ml', 20003, 878, 1, 10)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14023, N'Donitas espolvoreadas 105g', 20004, 19, 1, 18)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14024, N'Nito 62g', 20004, 20, 1, 14)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14025, N'Conchas 92g', 20004, 21, 1, 21)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14026, N'Runers 58g', 20005, 10, 1, 13)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14027, N'Takis verdes 62g', 20005, 25, 1, 14)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14028, N'Chipotles 62g', 20005, 41, 1, 14)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14029, N'Leche desclctosada 1L', 20008, 15, 3, 32)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14030, N'Crema lala 80g', 20008, 9, 3, 19)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14031, N'Yopli 20g', 20008, 56, 3, 6)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14032, N'Sabritas Limon 45g', 20006, 29, 1, 13)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14033, N'Ranchertitos', 20006, 30, 1, 13)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14034, N'Chetos 52g', 20006, 31, 1, 11)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14035, N'pinol 1L', 20010, 35, 5, 23)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14036, N'Pinol 500ml', 20010, 32, 5, 14)
INSERT [dbo].[productos] ([idProducto], [descripcion], [idProveedor], [cantProdu], [tipoProducto], [precioProdu]) VALUES (14037, N'Cloralex 250 ml', 20010, 25, 5, 9)
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20001, N'Gamesa')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20002, N'Coca cola')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20003, N'Pepsico')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20004, N'Bimbo')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20005, N'Barcel')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20006, N'Sabritas')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20007, N'Pescadin')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20008, N'Lala corporation')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20009, N'Herdez')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20010, N'Cloralex SA de CV')
INSERT [dbo].[proveedores] ([idProveedor], [nomProveedor]) VALUES (20011, N'Bocados')
INSERT [dbo].[ticket] ([idTicket], [direccion], [idVenta], [idFactura], [idEmpleado], [idCliente]) VALUES (50001, N'Av. Jalisco # 23415, col Roma Gpe Nuevo Leon', 250001, 25001, 1004, 7007)
INSERT [dbo].[tipoCliente] ([tipoCliente], [descripcion]) VALUES (1, N'simple')
INSERT [dbo].[tipoCliente] ([tipoCliente], [descripcion]) VALUES (2, N'Mayoreo')
INSERT [dbo].[tipoEmpleado] ([tipoEmpleado], [descripcion]) VALUES (1, N'Vendedor')
INSERT [dbo].[tipoEmpleado] ([tipoEmpleado], [descripcion]) VALUES (2, N'Cajero')
INSERT [dbo].[tipoEmpleado] ([tipoEmpleado], [descripcion]) VALUES (3, N'Otros')
INSERT [dbo].[tipoEmpleado] ([tipoEmpleado], [descripcion]) VALUES (4, N'Lider')
INSERT [dbo].[tipoEmpleado] ([tipoEmpleado], [descripcion]) VALUES (5, N'Gerente')
INSERT [dbo].[tipoProducto] ([tipoProducto], [descripcion]) VALUES (1, N'Abarrotes')
INSERT [dbo].[tipoProducto] ([tipoProducto], [descripcion]) VALUES (2, N'Perecederos')
INSERT [dbo].[tipoProducto] ([tipoProducto], [descripcion]) VALUES (3, N'Lacteos')
INSERT [dbo].[tipoProducto] ([tipoProducto], [descripcion]) VALUES (4, N'Hogar')
INSERT [dbo].[tipoProducto] ([tipoProducto], [descripcion]) VALUES (5, N'uso diario')
INSERT [dbo].[venta] ([idVenta], [idEmpleado], [idCliente], [fecha]) VALUES (250001, 1004, 7007, CAST(0x0000AAE900000000 AS DateTime))
/****** Object:  Index [UQ__Producto__07F4A133FDE691D2]    Script Date: 20/10/2019 08:39:01 p. m. ******/
ALTER TABLE [dbo].[productos] ADD UNIQUE NONCLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cantidadProducto]  WITH CHECK ADD  CONSTRAINT [fk_productos_cantidadProducto_idProducto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([idProducto])
GO
ALTER TABLE [dbo].[cantidadProducto] CHECK CONSTRAINT [fk_productos_cantidadProducto_idProducto]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [fk_tipoCliente_clientes_tipoCliente] FOREIGN KEY([tipoCliente])
REFERENCES [dbo].[tipoCliente] ([tipoCliente])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [fk_tipoCliente_clientes_tipoCliente]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [fk_empleados_compra_idEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [fk_empleados_compra_idEmpleado]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [fk_proveedores_compra_idProveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [fk_proveedores_compra_idProveedor]
GO
ALTER TABLE [dbo].[detalleCompra]  WITH CHECK ADD  CONSTRAINT [fk_compra_detalleCompra_idCompra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[compra] ([idCompra])
GO
ALTER TABLE [dbo].[detalleCompra] CHECK CONSTRAINT [fk_compra_detalleCompra_idCompra]
GO
ALTER TABLE [dbo].[detalleCompra]  WITH CHECK ADD  CONSTRAINT [fk_productos_detalleCompra_idProducto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([idProducto])
GO
ALTER TABLE [dbo].[detalleCompra] CHECK CONSTRAINT [fk_productos_detalleCompra_idProducto]
GO
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [fk_productos_detalleVenta_idProducto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[productos] ([idProducto])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [fk_productos_detalleVenta_idProducto]
GO
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [fk_venta_detalleVenta_idVenta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[venta] ([idVenta])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [fk_venta_detalleVenta_idVenta]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [fk_tipoEmpleado_empleados_tipoEmpleado] FOREIGN KEY([tipoEmpleado])
REFERENCES [dbo].[tipoEmpleado] ([tipoEmpleado])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [fk_tipoEmpleado_empleados_tipoEmpleado]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [fk_proveedores_productos_idProveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [fk_proveedores_productos_idProveedor]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [fk_tipoProducto_productos_tipoProducto] FOREIGN KEY([tipoProducto])
REFERENCES [dbo].[tipoProducto] ([tipoProducto])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [fk_tipoProducto_productos_tipoProducto]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [fk_clientes_ticket_idCliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[clientes] ([idCliente])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [fk_clientes_ticket_idCliente]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [fk_empleados_ticket_idEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [fk_empleados_ticket_idEmpleado]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [fk_factura_ticket_idFactura] FOREIGN KEY([idFactura])
REFERENCES [dbo].[factura] ([idFactura])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [fk_factura_ticket_idFactura]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [fk_clientes_venta_idCliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[clientes] ([idCliente])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [fk_clientes_venta_idCliente]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [fk_empleados_venta_idEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [fk_empleados_venta_idEmpleado]
GO
