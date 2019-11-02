use practica6
go
create trigger TR_productos 
on productos 
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

go
create function FN_Prov (@nom int)
Returns table 
as 
	return (select idProveedor, nomProveedor from proveedores
	where idProveedor = @nom)

create procedure SP_Productos 
@pro int
as 
begin 
	select * from productos where idProducto = @pro
	print 'Busqueda correctra'
end
exec SP_Productos '14004'
go 

create procedure SP_Proveedores
@prov int
as 
begin 
	select * from proveedores where idProveedor = @prov
	print 'Busqueda correctra'
end
exec SP_Proveedores '20003'
go

create procedure SP_Clientes
@clie int
as 
begin 
	select * from clientes where idCliente = @clie
	print 'Busqueda correctra'
end
exec SP_Clientes'7003'
go

create procedure SP_Empleados
@empl int
as 
begin 
	select * from empleados where idEmpleado = @empl
	print 'Busqueda correctra'
end
exec SP_Empleados '1004'
go

create procedure SP_Compra
@com int
as 
begin 
	select * from compra where idCompra = @com
	print 'Busqueda correctra'
end
go