use practica8
go
select * 
into productos_p
from productos
go
create view InfoCompleta
 AS SELECT idProducto, descripcion, cantProdu
 FROM productos
 go
 select * from InfoCompleta
create view infoClientes
AS SELECT NombreCompleto, idCliente
FROM clientes
select * from infoClientes
go
create view detalleProveedor as 
select idProveedor
from proveedores
union all
select idProducto
from productos
union all
select nomProveedor
from proveedores;
select * from detalleProveedor
go
create view detalleVentas as 
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
select * from detalleVentas
go

create view entradas as
select nomProveedor
from proveedores union all
select idProveedor
from proveedores union all
select cantProdu
from cantidadProducto 
select * from entradas
go
with prod as (
select idProducto, count (cantProdu) as total 
from productos
group by idProducto )
