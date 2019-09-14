create database practica2
go
use practica2
go
Create table clientes (
iNumCliente int not null  primary key,
vNombre varchar(255) not null, 
vPrimerApellido varchar(255) not null,
vSegundoApellido varchar(255) not null,
vTipoDeClientes varchar(58) not null, 
NombreCompleto as (vNombre + '' + vPrimerApellido + '' + vSegundoApellido))

create table cajeros(
iNumCajero int not null  primary key,
vNombreC varchar(255) not null, 
vPrimerApellidoC varchar(255) not null,
vSegundoApellidoC varchar(255) not null,
NombreCompleto as (vNombreC + '' + vPrimerApellidoC + '' + vSegundoApellidoC))	

create table productos(
iNumProdu int not null  primary key,
vNombre varchar(255) not null, 
vTipProdu varchar(58) not null, 
Producto as ( iNumProdu + '' + vTipProdu))


drop table productos

select * from productos