-- ------------------------------------------
-- Vista que tiene los detalles de la sesion 
-- ------------------------------------------
create view detalleSesion as 
select Ses_id,Ses_fecha, Ser_nombre as Nombre, Ses_avance, Ser_numsesiones as TotalSesiones , 
Ses_Emp_cc, Ses_comentario 
from Sesion join Venta_Servicio on ( Venta_Servicio_Vens_id = Vens_id) 
join Servicio using (Ser_id);


-- ------------------------------------------
-- Vista que tiene los detalles de un servicio 
-- ------------------------------------------


create view detalleServicio as
select Ser_id, Ser_nombre,Ser_numsesiones,Ser_precio,Proto_id,Proto_procedimiento,Proto_ubicacion, Proto_medidas, Proto_recomend, tServ_nombre 
from Servicio join Protocolo using (Proto_id)
join tipoServicio on (tipoServicio_idtipoServicio = idtipoServicio);



-- creacion vista para recepcionista (agenda de citas) 

create view agenda_citas as (select Ses_Fecha as 'Fecha' , Cli_cc, ses_avance as 'Avance', concat(Cli_nombre, concat(' ',Cli_apellido))  as 'cliente' , 
concat(Emp_nombre,concat (' ', Emp_Apellido)) as 'Empleado', cargo_nom as 'cargo', ser_nombre as 'servicio'
from sesion join venta_servicio on (Venta_Servicio_Vens_id = vens_id) join venta using (ven_id) join empleado on (Emp_cc = Ses_Emp_cc) join cliente
 using (cli_cc) join cargo using (cargo_id)join Servicio using (ser_id) where Cli_cc = (select user from mysql.user where user()=concat(mysql.user.user,"@",mysql.user.host) ));
-- select * from agenda_citas;
-- drop view agenda_citas;
-- creacion vista para recepcionista ( manejo del inventario ) 

 select * from inventario;
create view vw_inventario as (select idInventario, estado , disponible , Sesion_Ses_id as 
'Sesion' , VEnta_Producto_Venp_id as 'venta' from inventario);
 
-- creacion vista para poder ver productos vencidos  

 create view productos_vencidos as(select idInventario, fecha_vencimiento, pro_nombre from inventario join adquisicion on 
 (adquisicion_idAdquisicion = idAdquisicion) join producto on (producto_pro_id = pro_id)where estado like '%rojo%');
 


-- Extrae el nombre de los usuarios

select user from mysql.user where user()=concat(mysql.user.user,"@",mysql.user.host);


-- Vistas empleados

-- Crea vista  de los horarios ademas Muestra unicamente el horario del usuario quien lo consulta 
-- -- drop view horario; 

create view vwhorario as select Emp_cc as CC, lunes.Tip_descripcion as Lunes,
concat(lunes.Tip_hora_inicio, concat('­',lunes.`Tip_hora fin`)) as Horal, martes.Tip_descripcion as Martes,
 concat(martes.Tip_hora_inicio, concat('­',martes.`Tip_hora fin`)) as Horam, miercoles.Tip_descripcion as miercoles,
 concat(miercoles.Tip_hora_inicio, concat('­',miercoles.`Tip_hora fin`)) as Horami, jueves.Tip_descripcion as jueves ,
 concat(jueves.Tip_hora_inicio, concat('­',jueves.`Tip_hora fin`)) as Horamj, viernes.Tip_descripcion as viernes, 
 concat(viernes.Tip_hora_inicio, concat('­',viernes.`Tip_hora fin`)) as Horav from Empleado join Horario on
 (Horario_Hor_id=Hor_id) join `Tipo horario` as lunes on (Hor_lunes = lunes.Tip_id) join `Tipo horario` as
 martes on (Hor_martes = martes.Tip_id) join `Tipo horario` as miercoles on (Hor_miercoles = miercoles.Tip_id) 
 join `Tipo horario` as jueves on (Hor_jueves = jueves.Tip_id) join `Tipo horario` as viernes on 
 (Hor_viernes = viernes.Tip_id) where Emp_cc = (select user from mysql.user where user()=concat(mysql.user.user,"@",mysql.user.host));
 
-- select * from Empleado;
 
 -- Ejemplo con el usuario 
 
-- create user '69240578'@'localhost';
 -- grant select, insert, update on * to '69240578'@'localhost';
 -- drop user '69240578'@'localhost';
 
 -- Vista muestra los datos principales solo de cada empleado 
 
 
create view datos_empleado as select Emp_nombre, Emp_Apellido, Emp_Telefono, Emp_Direccion from Empleado 
where Emp_cc = (select user from mysql.user where user()=concat(mysql.user.user,"@",mysql.user.host));

 -- Muestra la lista de ventas detalladas realizadas por los empleados 
 -- nombre del nombre del cliente, fecha, Valor 
 

Create view ventas_realizadas as select ven_id, ven_fecha, Ven_costo,cli_cc, concat(cli_nombre,' ',cli_apellido) 
from Venta join Empleado on Ven_Emp_cc = Emp_cc join Cliente using (Cli_cc) where Emp_cc = (select user from mysql.user where user()=concat(mysql.user.user,"@",mysql.user.host)) ;

-- Esteticista


-- Vista que muestra los nombres de los productos que se utilizan en cada servicio 

 
 create view productos_en_servicio as select ser_nombre, Pro_nombre from Servicio join Protocolo using (proto_id) join 
 Producto_has_Protocolo on (Proto_id = Protocolo_Proto_id) join Producto on (Producto_Pro_id = pro_id);


-- Recepcionista

-- Vista que muestra la informacion de las sesiones de cada servicio 

create view info_sesion as select Ser_nombre, Ses_fecha, concat(Emp_nombre,' ', Emp_Apellido) as Empleado, Ses_avance from 
 Cliente natural join Venta natural join `Venta_Servicio` natural join Servicio join Sesion on 
 (`Venta_Servicio_Vens_id`=Ser_id) join Empleado on Ses_Emp_cc=Empleado.emp_cc;
 
 
 -- Vista que muestra que servicio se realizo en cada venta 
 
 create view servicio_venta as select Ser_nombre as 'Nombre',VenS_id as 'Numero de venta Ser' from `Venta_Servicio` right Join (Servicio) 
using (Ser_id);


-- Cliente


-- Vista con los datos modificables del cliente 
-- drop view datos_cliente;
Create view datos_cliente as select Cli_nombre, cli_apellido, Cli_telefono, Cli_direccion from Cliente where Cli_cc = (select user from mysql.user where user()=concat(mysql.user.user,"@",mysql.user.host));


-- Vista que Muestra las compras de  productos  realizados por cada cliente 


create view cliente_compra as Select Ven_id, Ven_fecha , Ven_costo ,pro_nombre , pro_descripcion, pro_precioVenta from Cliente join Venta using (Cli_cc) 
join Venta_Producto using (Ven_id) join Inventario on (Venta_Producto_Venp_id = Venp_id )join Adquisicion
on (Adquisicion_idAdquisicion = idAdquisicion) join Producto on (Pro_id = Producto_Pro_id);

-- drop view cliente_compra;

 -- Vista que mustra los productos que estan a la  venta

create view producto_venta as select Pro_nombre as 'Nombre', count(Pro_id) as 'Cantidad', Pro_precioVenta as 'Precio' 
from ( select * from Inventario where Disponible = 1 ) as Inventario2 join Adquisicion
on (Inventario2.Adquisicion_idAdquisicion = Adquisicion.idAdquisicion ) join Producto 
on (Adquisicion.Producto_Pro_id = Producto.Pro_id) group by Pro_id;

-- drop view producto_venta;
-- select * from producto_venta;
-- vista que muestra los productos usados en un servicio
create view  ProductosEnProtocolo as (select  Ser_nombre as 'Servicio' , Ser_numsesiones as 'Sesiones' , Ser_nombre as 'Tipo' , Proto_medidas as 'Precauciones', 
Proto_ubicacion as 'Sala' , Proto_procedimiento as 'Procedimiento' , Pro_nombre as 'Producto'from  Producto join  
Producto_has_Protocolo on (Pro_id = Producto_Pro_id) join Protocolo on (Protocolo_Proto_id = Proto_id)
join Servicio using (Proto_id));
-- drop view ProductosEnProtocolo;
 -- le muestra al cliente los horarios de todos los empleados 
 
 create view horario_all as select concat( Emp_nombre, ' ' , Emp_apellido) as 'Empleado' , lunes.Tip_descripcion as Lunes,
concat(lunes.Tip_hora_inicio, concat('­',lunes.`Tip_hora fin`)) as Horal, martes.Tip_descripcion as Martes,
 concat(martes.Tip_hora_inicio, concat('­',martes.`Tip_hora fin`)) as Horam, miercoles.Tip_descripcion as miercoles,
 concat(miercoles.Tip_hora_inicio, concat('­',miercoles.`Tip_hora fin`)) as Horami, jueves.Tip_descripcion as jueves ,
 concat(jueves.Tip_hora_inicio, concat('­',jueves.`Tip_hora fin`)) as Horamj, viernes.Tip_descripcion as viernes, 
 concat(viernes.Tip_hora_inicio, concat('­',viernes.`Tip_hora fin`)) as Horav from Empleado join Horario on
 (Horario_Hor_id=Hor_id) join `Tipo horario` as lunes on (Hor_lunes = lunes.Tip_id) join `Tipo horario` as
 martes on (Hor_martes = martes.Tip_id) join `Tipo horario` as miercoles on (Hor_miercoles = miercoles.Tip_id) 
 join `Tipo horario` as jueves on (Hor_jueves = jueves.Tip_id) join `Tipo horario` as viernes on 
 (Hor_viernes = viernes.Tip_id);
  
--  drop view horario_all;
  -- vista que le permite ver al cliente el tipo de servicio con sus respectivas caracteristicas 
 create view vw_cli_serv as (select Ser_nombre as 'Nombre_Servicio', Ser_numsesiones, Ser_precio as 'Precio' , tServ_nombre as 'Tipo_Servicio'
 , Proto_procedimiento as 'Descripcion' , Proto_ubicacion as 'Ubicacion' 
 from servicio join tipoServicio on (tipoServicio_idtipoServicio = idtipoServicio) join Protocolo using (Proto_id)) ;
 