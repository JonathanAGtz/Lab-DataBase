USE [Final]
GO
/****** Object:  Trigger [TR_productos]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TRIGGER [dbo].[TR_productos]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [fk_Empleados_Venta_idEmpleado]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [fk_Clientes_venta_idCliente]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [fk_Venta_ticket_idVenta]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [fk_Empleados_ticket_idEmpleado]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [fk_direccion_ticket_direccion]
GO
ALTER TABLE [dbo].[ticket] DROP CONSTRAINT [fk_Clientes_ticket_idCliente]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [fk_Proveedores_productos_tipoProducto]
GO
ALTER TABLE [dbo].[Productos] DROP CONSTRAINT [fk_Proveedores_productos_idProveedor]
GO
ALTER TABLE [dbo].[factura] DROP CONSTRAINT [fk_Ticket_factura_idTicket]
GO
ALTER TABLE [dbo].[empleados] DROP CONSTRAINT [fk_Empleados_Clientes_tipoEmpleado]
GO
ALTER TABLE [dbo].[detalleVenta] DROP CONSTRAINT [fk_Venta_detalleVenta_idVenta]
GO
ALTER TABLE [dbo].[detalleVenta] DROP CONSTRAINT [fk_Productos_detalleVenta_idProducto]
GO
ALTER TABLE [dbo].[detalleCompra] DROP CONSTRAINT [fk_Productos_detalleCompra_idProducto]
GO
ALTER TABLE [dbo].[detalleCompra] DROP CONSTRAINT [fk_Compra_detalleCompra_idCompra]
GO
ALTER TABLE [dbo].[compra] DROP CONSTRAINT [fk_Proveedores_Compra_idProveedor]
GO
ALTER TABLE [dbo].[compra] DROP CONSTRAINT [fk_Empleados_Compra_idEmpleado]
GO
ALTER TABLE [dbo].[clientes] DROP CONSTRAINT [fk_tipoCliente_Clientes_tipoCliente]
GO
ALTER TABLE [dbo].[cantidadProducto] DROP CONSTRAINT [fk_Productos_prductosCantidad_idProducto]
GO
/****** Object:  Index [INDX_Venta_Factura]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_Venta_Factura] ON [dbo].[Venta]
GO
/****** Object:  Index [INDX_ticket_ticket]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_ticket_ticket] ON [dbo].[ticket]
GO
/****** Object:  Index [INDX_Provedores_proveedor]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_Provedores_proveedor] ON [dbo].[proveedores]
GO
/****** Object:  Index [INDX_Productos_TipoProducto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_Productos_TipoProducto] ON [dbo].[Productos]
GO
/****** Object:  Index [INDX_Productos_Producto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_Productos_Producto] ON [dbo].[Productos]
GO
/****** Object:  Index [INDX_Trabajador_TipoTrabajador]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_Trabajador_TipoTrabajador] ON [dbo].[empleados]
GO
/****** Object:  Index [INDX_compra_Compra]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_compra_Compra] ON [dbo].[compra]
GO
/****** Object:  Index [INDX_Trabajador_NombreCompleto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_Trabajador_NombreCompleto] ON [dbo].[clientes]
GO
/****** Object:  Index [INDX_Clientes_TipoDeClientes]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_Clientes_TipoDeClientes] ON [dbo].[clientes]
GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP INDEX [INDX_Cliente_NombreCompleto] ON [dbo].[clientes]
GO
/****** Object:  View [dbo].[InfoCompleta]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP VIEW [dbo].[InfoCompleta]
GO
/****** Object:  View [dbo].[entradas]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP VIEW [dbo].[entradas]
GO
/****** Object:  View [dbo].[detalleVentas]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP VIEW [dbo].[detalleVentas]
GO
/****** Object:  View [dbo].[detalleProveedor]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP VIEW [dbo].[detalleProveedor]
GO
/****** Object:  UserDefinedFunction [dbo].[FN_Prov]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP FUNCTION [dbo].[FN_Prov]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Tipoproducto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[Tipoproducto]
GO
/****** Object:  Table [dbo].[tipoEmpleado]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[tipoEmpleado]
GO
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[tipoCliente]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[ticket]
GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[proveedores]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[factura]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[empleados]
GO
/****** Object:  Table [dbo].[direccion]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[direccion]
GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[detalleVenta]
GO
/****** Object:  Table [dbo].[detalleCompra]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[detalleCompra]
GO
/****** Object:  Table [dbo].[compra]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[compra]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[clientes]
GO
/****** Object:  Table [dbo].[cantidadProducto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP TABLE [dbo].[cantidadProducto]
GO
/****** Object:  StoredProcedure [dbo].[SP_Proveedores]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP PROCEDURE [dbo].[SP_Proveedores]
GO
/****** Object:  StoredProcedure [dbo].[SP_Productos]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP PROCEDURE [dbo].[SP_Productos]
GO
/****** Object:  StoredProcedure [dbo].[SP_Empleados]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP PROCEDURE [dbo].[SP_Empleados]
GO
/****** Object:  StoredProcedure [dbo].[SP_Compra]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP PROCEDURE [dbo].[SP_Compra]
GO
/****** Object:  StoredProcedure [dbo].[SP_Clientes]    Script Date: 02/11/2019 08:02:51 p. m. ******/
DROP PROCEDURE [dbo].[SP_Clientes]
GO
/****** Object:  StoredProcedure [dbo].[SP_Clientes]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_Clientes]
@clie int
as 
begin 
	select * from clientes where idCliente = @clie
	print 'Busqueda correctra'
end
exec SP_Clientes'7003'

GO
/****** Object:  StoredProcedure [dbo].[SP_Compra]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_Compra]
@com int
as 
begin 
	select * from compra where idCompra = @com
	print 'Busqueda correctra'
end

GO
/****** Object:  StoredProcedure [dbo].[SP_Empleados]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_Empleados]
@empl int
as 
begin 
	select * from empleados where idEmpleado = @empl
	print 'Busqueda correctra'
end
exec SP_Empleados '1004'

GO
/****** Object:  StoredProcedure [dbo].[SP_Productos]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Productos] 
@pro int
as 
begin 
	select * from productos where idProducto = @pro
	print 'Busqueda correctra'
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Proveedores]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_Proveedores]
@prov int
as 
begin 
	select * from proveedores where idProveedor = @prov
	print 'Busqueda correctra'
end
exec SP_Proveedores '20003'

GO
/****** Object:  Table [dbo].[cantidadProducto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cantidadProducto](
	[idProducto] [int] NOT NULL,
	[cantProdu] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[clientes]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[idCliente] [int] NOT NULL,
	[nombre] [nvarchar](20) NULL,
	[primerApellido] [nvarchar](20) NULL,
	[segundoApellido] [nvarchar](20) NULL,
	[tipoCliente] [int] NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+'')+[PrimerApellido])+'')+[SegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[compra]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra](
	[idCompra] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idProveedor] [int] NOT NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalleCompra]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleCompra](
	[idCompra] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[precioProdu] [float] NULL,
	[subTotal] [float] NULL,
	[iva] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[detalleVenta]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalleVenta](
	[idVenta] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[precioProdu] [float] NULL,
	[subTotal] [float] NULL,
	[iva] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[direccion]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion](
	[direccion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[direccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[empleados]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[idEmpleado] [int] NOT NULL,
	[nombre] [nvarchar](20) NULL,
	[primerApellido] [nvarchar](20) NULL,
	[segundoApellido] [nvarchar](20) NULL,
	[tipoEmpleado] [int] NOT NULL,
	[NombreCompleto]  AS (((([nombre]+'')+[PrimerApellido])+'')+[SegundoApellido]),
PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[factura]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[idTicket] [int] NOT NULL,
	[idFactura] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[idProducto] [int] NOT NULL,
	[descripcion] [nvarchar](50) NOT NULL,
	[idProveedor] [int] NOT NULL,
	[cantProdu] [int] NOT NULL,
	[tipoProducto] [int] NULL,
	[precioProdu] [float] NULL,
	[Producto]  AS (([idProducto]+'')+[descripcion]),
PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[proveedores]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedores](
	[idProveedor] [int] NOT NULL,
	[nombreProve] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ticket]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[idTicket] [int] NOT NULL,
	[direccion] [nvarchar](50) NOT NULL,
	[idVenta] [int] NOT NULL,
	[idFactura] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tipoCliente]    Script Date: 02/11/2019 08:02:51 p. m. ******/
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
/****** Object:  Table [dbo].[tipoEmpleado]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipoEmpleado](
	[tipoEmpleado] [int] NOT NULL,
	[descripcion] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipoproducto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipoproducto](
	[tipoProducto] [int] NOT NULL,
	[descripcion] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[tipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[idVenta] [int] NOT NULL,
	[idEmpleado] [int] NOT NULL,
	[idCliente] [int] NOT NULL,
	[fecha] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  UserDefinedFunction [dbo].[FN_Prov]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[FN_Prov] (@nom int)
Returns table 
as 
	return (select idProveedor, nombreProve from proveedores
	where idProveedor = @nom)
GO
/****** Object:  View [dbo].[detalleProveedor]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[detalleProveedor] as 
select idProveedor
from proveedores
union all
select idProducto
from productos
union all
select nombreProve
from proveedores
GO
/****** Object:  View [dbo].[detalleVentas]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[detalleVentas] as 
select idVenta
from venta
union all
select idTicket
from ticket
union all
select idCliente
from clientes
union all
select idProducto
from productos;
GO
/****** Object:  View [dbo].[entradas]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[entradas] as
select nombreProve
from proveedores union all
select idProveedor
from proveedores union all
select cantProdu
from cantidadProducto 
GO
/****** Object:  View [dbo].[InfoCompleta]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[InfoCompleta]
 AS SELECT idProducto, descripcion, cantProdu
 FROM productos

GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF

GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Cliente_NombreCompleto] ON [dbo].[clientes]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Clientes_TipoDeClientes]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Clientes_TipoDeClientes] ON [dbo].[clientes]
(
	[tipoCliente] ASC
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
/****** Object:  Index [INDX_Trabajador_NombreCompleto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Trabajador_NombreCompleto] ON [dbo].[clientes]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_compra_Compra]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_compra_Compra] ON [dbo].[compra]
(
	[idCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Trabajador_TipoTrabajador]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Trabajador_TipoTrabajador] ON [dbo].[empleados]
(
	[tipoEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Productos_Producto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Productos_Producto] ON [dbo].[Productos]
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Productos_TipoProducto]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Productos_TipoProducto] ON [dbo].[Productos]
(
	[tipoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Provedores_proveedor]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Provedores_proveedor] ON [dbo].[proveedores]
(
	[idProveedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_ticket_ticket]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_ticket_ticket] ON [dbo].[ticket]
(
	[idTicket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [INDX_Venta_Factura]    Script Date: 02/11/2019 08:02:51 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Venta_Factura] ON [dbo].[Venta]
(
	[idVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cantidadProducto]  WITH CHECK ADD  CONSTRAINT [fk_Productos_prductosCantidad_idProducto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[cantidadProducto] CHECK CONSTRAINT [fk_Productos_prductosCantidad_idProducto]
GO
ALTER TABLE [dbo].[clientes]  WITH CHECK ADD  CONSTRAINT [fk_tipoCliente_Clientes_tipoCliente] FOREIGN KEY([tipoCliente])
REFERENCES [dbo].[tipoCliente] ([tipoCliente])
GO
ALTER TABLE [dbo].[clientes] CHECK CONSTRAINT [fk_tipoCliente_Clientes_tipoCliente]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [fk_Empleados_Compra_idEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [fk_Empleados_Compra_idEmpleado]
GO
ALTER TABLE [dbo].[compra]  WITH CHECK ADD  CONSTRAINT [fk_Proveedores_Compra_idProveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[compra] CHECK CONSTRAINT [fk_Proveedores_Compra_idProveedor]
GO
ALTER TABLE [dbo].[detalleCompra]  WITH CHECK ADD  CONSTRAINT [fk_Compra_detalleCompra_idCompra] FOREIGN KEY([idCompra])
REFERENCES [dbo].[compra] ([idCompra])
GO
ALTER TABLE [dbo].[detalleCompra] CHECK CONSTRAINT [fk_Compra_detalleCompra_idCompra]
GO
ALTER TABLE [dbo].[detalleCompra]  WITH CHECK ADD  CONSTRAINT [fk_Productos_detalleCompra_idProducto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[detalleCompra] CHECK CONSTRAINT [fk_Productos_detalleCompra_idProducto]
GO
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [fk_Productos_detalleVenta_idProducto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([idProducto])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [fk_Productos_detalleVenta_idProducto]
GO
ALTER TABLE [dbo].[detalleVenta]  WITH CHECK ADD  CONSTRAINT [fk_Venta_detalleVenta_idVenta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[detalleVenta] CHECK CONSTRAINT [fk_Venta_detalleVenta_idVenta]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [fk_Empleados_Clientes_tipoEmpleado] FOREIGN KEY([tipoEmpleado])
REFERENCES [dbo].[tipoEmpleado] ([tipoEmpleado])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [fk_Empleados_Clientes_tipoEmpleado]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [fk_Ticket_factura_idTicket] FOREIGN KEY([idTicket])
REFERENCES [dbo].[ticket] ([idTicket])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [fk_Ticket_factura_idTicket]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [fk_Proveedores_productos_idProveedor] FOREIGN KEY([idProveedor])
REFERENCES [dbo].[proveedores] ([idProveedor])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [fk_Proveedores_productos_idProveedor]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [fk_Proveedores_productos_tipoProducto] FOREIGN KEY([tipoProducto])
REFERENCES [dbo].[Tipoproducto] ([tipoProducto])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [fk_Proveedores_productos_tipoProducto]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [fk_Clientes_ticket_idCliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[clientes] ([idCliente])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [fk_Clientes_ticket_idCliente]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [fk_direccion_ticket_direccion] FOREIGN KEY([direccion])
REFERENCES [dbo].[direccion] ([direccion])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [fk_direccion_ticket_direccion]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [fk_Empleados_ticket_idEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [fk_Empleados_ticket_idEmpleado]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [fk_Venta_ticket_idVenta] FOREIGN KEY([idVenta])
REFERENCES [dbo].[Venta] ([idVenta])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [fk_Venta_ticket_idVenta]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [fk_Clientes_venta_idCliente] FOREIGN KEY([idCliente])
REFERENCES [dbo].[clientes] ([idCliente])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [fk_Clientes_venta_idCliente]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [fk_Empleados_Venta_idEmpleado] FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleados] ([idEmpleado])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [fk_Empleados_Venta_idEmpleado]
GO
/****** Object:  Trigger [dbo].[TR_productos]    Script Date: 02/11/2019 08:02:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create trigger [dbo].[TR_productos] 
on [dbo].[Productos] 
for delete 
as 
begin
	declare @p int 
	select @p = idproducto from productos
	if (@p is null)
		print 'No existe dato'
	else 
		DELETE FROM productos WHERE idProducto = @p;
end


GO
