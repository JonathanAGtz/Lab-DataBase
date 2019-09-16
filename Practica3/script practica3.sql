USE [practica3]
GO
ALTER TABLE [dbo].[venta] DROP CONSTRAINT [venta_Ticket]
GO
ALTER TABLE [dbo].[trabajador] DROP CONSTRAINT [Trabajador_Venta]
GO
ALTER TABLE [dbo].[trabajador] DROP CONSTRAINT [Trabajador_Ticket]
GO
ALTER TABLE [dbo].[Tipoproducto] DROP CONSTRAINT [Tipoproducto_Provedor]
GO
ALTER TABLE [dbo].[Tipoproducto] DROP CONSTRAINT [Tipoproducto_Productos]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [Ticket_Venta]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [Productos_Provedor]
GO
ALTER TABLE [dbo].[productos] DROP CONSTRAINT [Productos_Compra]
GO
ALTER TABLE [dbo].[operacion] DROP CONSTRAINT [Operacion_Venta]
GO
ALTER TABLE [dbo].[operacion] DROP CONSTRAINT [Operacion_Ticket]
GO
ALTER TABLE [dbo].[operacion] DROP CONSTRAINT [Operacion_provedor]
GO
ALTER TABLE [dbo].[operacion] DROP CONSTRAINT [Operacion_compra]
GO
ALTER TABLE [dbo].[compra] DROP CONSTRAINT [Compra_Ticket]
GO
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [Cliente_Venta]
GO
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [Cliente_Ticket]
GO
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [Cliente_Compra]
GO
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [Default_tipo]
GO
/****** Object:  Index [INDX_Venta_Ticket]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Venta_Ticket] ON [dbo].[venta]
GO
/****** Object:  Index [INDX_Venta_Factura]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Venta_Factura] ON [dbo].[venta]
GO
/****** Object:  Index [INDX_Trabajador_TipoTrabajador]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Trabajador_TipoTrabajador] ON [dbo].[trabajador]
GO
/****** Object:  Index [INDX_ticket_Trabajador]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_ticket_Trabajador] ON [dbo].[ticket]
GO
/****** Object:  Index [INDX_ticket_ticket]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_ticket_ticket] ON [dbo].[ticket]
GO
/****** Object:  Index [INDX_Provedores_proveedor]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Provedores_proveedor] ON [dbo].[provedores]
GO
/****** Object:  Index [INDX_Productos_TipoProducto]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Productos_TipoProducto] ON [dbo].[productos]
GO
/****** Object:  Index [INDX_Productos_Producto]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Productos_Producto] ON [dbo].[productos]
GO
/****** Object:  Index [INDX_compra_NombreCliente]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_compra_NombreCliente] ON [dbo].[compra]
GO
/****** Object:  Index [INDX_compra_Compra]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_compra_Compra] ON [dbo].[compra]
GO
/****** Object:  Index [INDX_Trabajador_NombreCompleto]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Trabajador_NombreCompleto] ON [dbo].[clientes]
GO
/****** Object:  Index [INDX_Clientes_TipoDeClientes]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Clientes_TipoDeClientes] ON [dbo].[clientes]
GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP INDEX [INDX_Cliente_NombreCompleto] ON [dbo].[clientes]
GO
/****** Object:  Table [dbo].[venta]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[venta]
GO
/****** Object:  Table [dbo].[trabajador]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[trabajador]
GO
/****** Object:  Table [dbo].[Tipoproducto]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[Tipoproducto]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[ticket]
GO
/****** Object:  Table [dbo].[provedores]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[provedores]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[productos]
GO
/****** Object:  Table [dbo].[operacion]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[operacion]
GO
/****** Object:  Table [dbo].[compra]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[compra]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 15/09/2019 10:56:50 p. m. ******/
DROP TABLE [dbo].[clientes]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 15/09/2019 10:56:50 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[iNumCliente] [int] NOT NULL,
	[vNombre] [varchar](255) NOT NULL,
	[vPrimerApellido] [varchar](255) NOT NULL,
	[vSegundoApellido] [varchar](255) NOT NULL,
	[vTipoDeClientes] [varchar](58) NOT NULL,
	[NombreCompleto]  AS (((([vNombre]+'')+[vPrimerApellido])+'')+[vSegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[iNumCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unique_iNumCliente] UNIQUE NONCLUSTERED 
(
	[iNumCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[compra]    Script Date: 15/09/2019 10:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra](
	[iNumComp] [int] NOT NULL,
	[iNumCliente] [int] NOT NULL,
	[iNumProdu] [int] NOT NULL,
	[icantidad] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iNumComp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unique_iNumComp] UNIQUE NONCLUSTERED 
(
	[iNumComp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[operacion]    Script Date: 15/09/2019 10:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operacion](
	[icantidad] [int] NOT NULL,
	[iDevolucion] [int] NOT NULL,
	[iDescuentos] [int] NOT NULL,
	[iOtros] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[icantidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[productos]    Script Date: 15/09/2019 10:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[productos](
	[iNumProdu] [int] NOT NULL,
	[vNombre] [varchar](255) NOT NULL,
	[vTipProdu] [varchar](155) NOT NULL,
	[Producto]  AS (((([iNumProdu]+'')+[vNombre])+'')+[vTipProdu]),
PRIMARY KEY CLUSTERED 
(
	[iNumProdu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unique_iNumProdu] UNIQUE NONCLUSTERED 
(
	[iNumProdu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[provedores]    Script Date: 15/09/2019 10:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provedores](
	[iNumProv] [int] NOT NULL,
	[iNumProdu] [int] NOT NULL,
	[icantidad] [int] NOT NULL,
	[vTipProdu] [varchar](155) NULL,
PRIMARY KEY CLUSTERED 
(
	[iNumProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unique_iNumProv] UNIQUE NONCLUSTERED 
(
	[iNumProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 15/09/2019 10:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[iNumTick] [int] NOT NULL,
	[iNumComp] [int] NOT NULL,
	[iFactura] [int] NOT NULL,
	[iNumCliente] [int] NOT NULL,
	[icantidad] [int] NOT NULL,
	[iNumTrabajador] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iNumTick] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unique_iNumTick] UNIQUE NONCLUSTERED 
(
	[iNumTick] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipoproducto]    Script Date: 15/09/2019 10:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipoproducto](
	[vTipProdu] [varchar](155) NOT NULL,
	[iAlmacen] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[vTipProdu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[trabajador]    Script Date: 15/09/2019 10:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[trabajador](
	[iNumTrabajador] [int] NOT NULL,
	[vNombre] [varchar](255) NOT NULL,
	[vPrimerApellido] [varchar](255) NOT NULL,
	[vSegundoApellido] [varchar](255) NOT NULL,
	[vTipoTrabajador] [varchar](58) NOT NULL,
	[NombreCompleto]  AS (((([vNombre]+'')+[vPrimerApellido])+'')+[vSegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[iNumTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unique_iNumTrabajador] UNIQUE NONCLUSTERED 
(
	[iNumTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[venta]    Script Date: 15/09/2019 10:56:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta](
	[iFactura] [int] NOT NULL,
	[iNumTrabajador] [int] NULL,
	[iNumCliente] [int] NOT NULL,
	[icantidad] [int] NOT NULL,
	[INumTick] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[iFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [unique_iFactura] UNIQUE NONCLUSTERED 
(
	[iFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Cliente_NombreCompleto] ON [dbo].[clientes]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [INDX_Clientes_TipoDeClientes]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Clientes_TipoDeClientes] ON [dbo].[clientes]
(
	[vTipoDeClientes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [INDX_Trabajador_NombreCompleto]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Trabajador_NombreCompleto] ON [dbo].[clientes]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_compra_Compra]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_compra_Compra] ON [dbo].[compra]
(
	[iNumComp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_compra_NombreCliente]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_compra_NombreCliente] ON [dbo].[compra]
(
	[iNumCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [INDX_Productos_Producto]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Productos_Producto] ON [dbo].[productos]
(
	[Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [INDX_Productos_TipoProducto]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Productos_TipoProducto] ON [dbo].[productos]
(
	[vTipProdu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Provedores_proveedor]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Provedores_proveedor] ON [dbo].[provedores]
(
	[iNumProv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_ticket_ticket]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_ticket_ticket] ON [dbo].[ticket]
(
	[iNumTick] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_ticket_Trabajador]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_ticket_Trabajador] ON [dbo].[ticket]
(
	[iNumTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [INDX_Trabajador_TipoTrabajador]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Trabajador_TipoTrabajador] ON [dbo].[trabajador]
(
	[vTipoTrabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Venta_Factura]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Venta_Factura] ON [dbo].[venta]
(
	[iFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Venta_Ticket]    Script Date: 15/09/2019 10:56:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Venta_Ticket] ON [dbo].[venta]
(
	[INumTick] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[clientes] ADD  CONSTRAINT [Default_tipo]  DEFAULT ('Normal') FOR [vTipoDeClientes]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [Cliente_Compra] FOREIGN KEY([iNumCliente])
REFERENCES [dbo].[clientes] ([iNumCliente])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [Cliente_Compra]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [Cliente_Ticket] FOREIGN KEY([iNumCliente])
REFERENCES [dbo].[clientes] ([iNumCliente])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [Cliente_Ticket]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [Cliente_Venta] FOREIGN KEY([iNumCliente])
REFERENCES [dbo].[clientes] ([iNumCliente])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [Cliente_Venta]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [Compra_Ticket] FOREIGN KEY([iNumComp])
REFERENCES [dbo].[compra] ([iNumComp])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [Compra_Ticket]
GO
ALTER TABLE [dbo].[operacion]  WITH CHECK ADD  CONSTRAINT [Operacion_compra] FOREIGN KEY([icantidad])
REFERENCES [dbo].[operacion] ([icantidad])
GO
ALTER TABLE [dbo].[operacion] CHECK CONSTRAINT [Operacion_compra]
GO
ALTER TABLE [dbo].[operacion]  WITH CHECK ADD  CONSTRAINT [Operacion_provedor] FOREIGN KEY([icantidad])
REFERENCES [dbo].[operacion] ([icantidad])
GO
ALTER TABLE [dbo].[operacion] CHECK CONSTRAINT [Operacion_provedor]
GO
ALTER TABLE [dbo].[operacion]  WITH CHECK ADD  CONSTRAINT [Operacion_Ticket] FOREIGN KEY([icantidad])
REFERENCES [dbo].[operacion] ([icantidad])
GO
ALTER TABLE [dbo].[operacion] CHECK CONSTRAINT [Operacion_Ticket]
GO
ALTER TABLE [dbo].[operacion]  WITH CHECK ADD  CONSTRAINT [Operacion_Venta] FOREIGN KEY([icantidad])
REFERENCES [dbo].[operacion] ([icantidad])
GO
ALTER TABLE [dbo].[operacion] CHECK CONSTRAINT [Operacion_Venta]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [Productos_Compra] FOREIGN KEY([iNumProdu])
REFERENCES [dbo].[productos] ([iNumProdu])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [Productos_Compra]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [Productos_Provedor] FOREIGN KEY([iNumProdu])
REFERENCES [dbo].[productos] ([iNumProdu])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [Productos_Provedor]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [Ticket_Venta] FOREIGN KEY([iNumTick])
REFERENCES [dbo].[ticket] ([iNumTick])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [Ticket_Venta]
GO
ALTER TABLE [dbo].[Tipoproducto]  WITH CHECK ADD  CONSTRAINT [Tipoproducto_Productos] FOREIGN KEY([vTipProdu])
REFERENCES [dbo].[Tipoproducto] ([vTipProdu])
GO
ALTER TABLE [dbo].[Tipoproducto] CHECK CONSTRAINT [Tipoproducto_Productos]
GO
ALTER TABLE [dbo].[Tipoproducto]  WITH CHECK ADD  CONSTRAINT [Tipoproducto_Provedor] FOREIGN KEY([vTipProdu])
REFERENCES [dbo].[Tipoproducto] ([vTipProdu])
GO
ALTER TABLE [dbo].[Tipoproducto] CHECK CONSTRAINT [Tipoproducto_Provedor]
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD  CONSTRAINT [Trabajador_Ticket] FOREIGN KEY([iNumTrabajador])
REFERENCES [dbo].[trabajador] ([iNumTrabajador])
GO
ALTER TABLE [dbo].[trabajador] CHECK CONSTRAINT [Trabajador_Ticket]
GO
ALTER TABLE [dbo].[trabajador]  WITH CHECK ADD  CONSTRAINT [Trabajador_Venta] FOREIGN KEY([iNumTrabajador])
REFERENCES [dbo].[trabajador] ([iNumTrabajador])
GO
ALTER TABLE [dbo].[trabajador] CHECK CONSTRAINT [Trabajador_Venta]
GO
ALTER TABLE [dbo].[venta]  WITH CHECK ADD  CONSTRAINT [venta_Ticket] FOREIGN KEY([iFactura])
REFERENCES [dbo].[venta] ([iFactura])
GO
ALTER TABLE [dbo].[venta] CHECK CONSTRAINT [venta_Ticket]
GO
