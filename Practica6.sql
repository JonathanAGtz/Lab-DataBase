USE [practica6]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [fk_empleados_venta_idEmpleado]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [fk_clientes_venta_idCliente]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [fk_factura_ticket_idFactura]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [fk_empleados_ticket_idEmpleado]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [fk_clientes_ticket_idCliente]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [fk_tipoProducto_productos_tipoProducto]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [fk_proveedores_productos_idProveedor]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [fk_cantidadPrducto_productos_cantProdu]
GO
ALTER TABLE [dbo].[factura] DROP CONSTRAINT [fk_ticket_factura_idTicket]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [fk_tipoEmpleado_empleados_tipoEmpleado]
GO
ALTER TABLE [dbo].[detalleVenta] DROP CONSTRAINT [fk_venta_detalleVenta_idVenta]
GO
ALTER TABLE [dbo].[detalleVenta] DROP CONSTRAINT [fk_productos_detalleVenta_idProducto]
GO
ALTER TABLE [dbo].[detalleCompra] DROP CONSTRAINT [fk_productos_detalleCompra_idProducto]
GO
ALTER TABLE [dbo].[detalleCompra] DROP CONSTRAINT [fk_compra_detalleCompra_idCompra]
GO
ALTER TABLE [dbo].[compra] DROP CONSTRAINT [fk_proveedores_compra_idProveedor]
GO
ALTER TABLE [dbo].[compra] DROP CONSTRAINT [fk_empleados_compra_idEmpleado]
GO
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [fk_tipoCliente_clientes_tipoCliente]
GO
ALTER TABLE [dbo].[cantidadProducto] DROP CONSTRAINT [fk_productos_cantidadProducto_idProducto]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[tipoProducto]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[tipoProducto]
GO
/****** Object:  Table [dbo].[tipoEmpleado]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[tipoEmpleado]
GO
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[tipoCliente]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[ticket]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[productos]
GO
/****** Object:  Table [dbo].[numeracion]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[numeracion]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[factura]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[direccion]
GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[detalleVenta]
GO
/****** Object:  Table [dbo].[detalleCompra]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[detalleCompra]
GO
/****** Object:  Table [dbo].[compra]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[compra]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[clientes]
GO
/****** Object:  Table [dbo].[cantidadProducto]    Script Date: 20/10/2019 07:53:45 p. m. ******/
DROP TABLE [dbo].[cantidadProducto]
GO
/****** Object:  Table [dbo].[cantidadProducto]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[clientes]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[compra]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[detalleCompra]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[direccion]    Script Date: 20/10/2019 07:53:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[direccion] [nvarchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[empleados]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[factura]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[numeracion]    Script Date: 20/10/2019 07:53:45 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[numeracion](
	[codigo] [nvarchar](50) NULL,
	[descripcion] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productos]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[ticket]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[tipoEmpleado]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[tipoProducto]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
/****** Object:  Table [dbo].[venta]    Script Date: 20/10/2019 07:53:45 p. m. ******/
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
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [fk_ticket_factura_idTicket] FOREIGN KEY([idTicket])
REFERENCES [dbo].[ticket] ([idTicket])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [fk_ticket_factura_idTicket]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [fk_cantidadPrducto_productos_cantProdu] FOREIGN KEY([cantProdu])
REFERENCES [dbo].[cantidadProducto] ([cantProdu])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [fk_cantidadPrducto_productos_cantProdu]
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
