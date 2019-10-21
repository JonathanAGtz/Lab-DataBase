use practica7
go
select *
from productos

select top 3 nomProveedor as 'Nombre proveedores'
from proveedores

select nombre
from empleados, tipoEmpleado
where idEmpleado > 1000  

select Direccion as 'Localización del punto de venta '
from direccion

-- selelects group by
select descripcion, count(d.tipoEmpleado) as total
from [tipoEmpleado] as d
group by descripcion

select idproducto, sum(p.cantProdu) as total
from [productos] as p
group by descripcion

select direccion, count(a.Direccion) as total
from [ticket] as a
group by Direccion


SELECT p.idCliente as nombre, COUNT(p.idCliente) as 'Registrados al momento'
FROM [clientes] as p
group by p.idCliente
having COUNT(p.tipoCliente) =5

select top 4 NombreCompleto as 'Nombre del cliente'
from clientes