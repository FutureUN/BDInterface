
-- procedimiento para obtener la lista de sesiones del usuario actual
DELIMITER $$ 
  create procedure getSesions()
  begin
	select SUBSTR(user(),1, CHAR_LENGTH(user())- 10 );
	select * from detalleSesion where Ses_Emp_cc = SUBSTR(user(),1, CHAR_LENGTH(user())- 10 );
end$$
delimiter ;

-- procedimiento para obtener la lista de servicios que realiza  del usuario actual

DELIMITER $$ 
  create procedure getServices()
  begin
	declare tcargo int default 0;
	select Cargo_id into tcargo from Empleado where Emp_cc = SUBSTR(user(),1, CHAR_LENGTH(user())- 10 );
	if  tcargo = 1 then
		select * from detalleServicio where detalleServicio.tServ_nombre = 'Peluqueria';
	end if;
    if tcargo = 2 then
		select * from detalleServicio where detalleServicio.tServ_nombre != 'Peluqueria';
	end if;
    if tcargo != 1 and tcargo != 2 then
		select "Este perfil no posee servicios";
	end if;
  end$$
delimiter ;


-- procedimiento para obtener la lista de productos usados en un protocolo

DELIMITER $$ 
  create procedure getProduct( IN prot INT )
  begin
	select * from ProductosEnProtocolo where Proto_id = prot;
  end$$
delimiter ;

-- ---------------------------------------------------------------------
-- Procedimiento que determina los productos vencidos tomando como 
-- referencia la fecha actual, me muestra los resultados 
-- ---------------------------------------------------------------------    
DELIMITER $$
CREATE PROCEDURE det_vencimiento()
	BEGIN
	declare done INT DEFAULT 0;
    declare fecha_ven date ;
    declare id int default 0;
	DECLARE det_venci cursor
		for select fecha_vencimiento, idAdquisicion from Adquisicion;
	Declare continue handler for sqlstate '02000' set done = 1;
    open det_venci;
	REPEAT
	fetch det_venci into fecha_ven, id ;
	if not done then
		if fecha_ven < curdate() then 
        update inventario set inventario.disponible = 0, inventario.estado = 'rojo' where
         inventario.Adquisicion_idAdquisicion = id; 
        end if;
	end if;
	until done END REPEAT;
    select idInventario, Pro_nombre,adq_preciocompra, fecha_vencimiento from inventario join Adquisicion 
    on ( Adquisicion_idAdquisicion = idAdquisicion) join Producto on (Producto_Pro_id= Pro_id) where estado like '%rojo%'; 
	close det_venci; END$$ 
DELIMITER ;
-- ejemplo ejecutable 
 call det_vencimiento();
-- select * from inventario ;
-- ---------------------------------------------------------------------
-- Procedimiento que determina, dado un producto, la cantidad total 
-- disponible. 
-- ---------------------------------------------------------------------    
DELIMITER $$
 CREATE PROCEDURE disponibilidad_produ(produ INT)
   BEGIN
     declare cantidad int default 0;
     set cantidad = (select count(idAdquisicion) from producto join Adquisicion on (Producto_Pro_id = Pro_id) 
     join inventario on ( Adquisicion_idAdquisicion = idAdquisicion) where Pro_id = produ and disponible = 1);
     select cantidad;
   END $$
DELIMITER ;
 -- ejemplo ejecutable
-- call disponibilidad_produ (1);


-- ---------------------------------------------------------------------
-- Procedimiento que determina todas las sesiones tomadas por un usuario
-- ---------------------------------------------------------------------    
DELIMITER $$
 CREATE PROCEDURE sesiones_cliente(cliente_revisar INT)
   BEGIN
  select concat(Cli_nombre, concat(' ', Cli_apellido)) as cliente, ser_nombre as servicio, ses_fecha,ses_avance, 
  concat ( Emp_nombre, concat (' ', Emp_Apellido )) as empleado  
  from Venta_Servicio join Sesion on ( Venta_Servicio_Vens_id = VenS_id) join venta using (ven_id) join cliente 
  using (cli_cc) join servicio using (Ser_id) join empleado on ( Ses_Emp_cc = Emp_cc) where cliente.cli_cc = cliente_revisar;
 
   END $$
DELIMITER ;
 -- ejemplo ejecutable
call sesiones_cliente (609336869);


-- ---------------------------------------------------------------------
-- Procedimiento que determina todos los producto que se compraron a 
-- unproveedor, ademas retorna el monto total de compras a dicho proveedor 
-- ---------------------------------------------------------------------
DELIMITER $$
CREATE PROCEDURE Prove_requerido(IN prov_req int, OUT compra_total INT) 
BEGIN
	select idAdquisicion, adq_preciocompra as precio_de_compra , fecha_vencimiento, prov_nombre, pro_nombre, Pro_precioVenta
    from Adquisicion join CompraProveedor on (CompraProveedor_idCompraProveedor = Proveedor_Prov_id) join
	Proveedor on (  Proveedor_Prov_id = Prov_id) join producto on (Producto_Pro_id = Pro_id)
	where Prov_id = prov_req ;
    set compra_total = (select sum(adq_preciocompra) compra_total_proveedor from Adquisicion join CompraProveedor on (CompraProveedor_idCompraProveedor = Proveedor_Prov_id) join
	Proveedor on (  Proveedor_Prov_id = Prov_id) join producto on (Producto_Pro_id = Pro_id) where Prov_id = prov_req );	
END$$ 
DELIMITER ;
 -- ejemplo ejecutable
call Prove_requerido (1, @total);
select @total;

-- ---------------------------------------------------------------------
-- Procedimiento que determina el monto total en dinero de las perdidas
-- por productos vencidos 
-- ---------------------------------------------------------------------
DELIMITER $$
CREATE PROCEDURE perdida_dinero(OUT monto_perdida INT) 
BEGIN
	set monto_perdida = (select sum(adq_preciocompra) from Inventario join Adquisicion on (Adquisicion_idAdquisicion = idAdquisicion)
    where Estado like'%rojo%');	
END$$ 
DELIMITER ;
 -- ejemplo ejecutable
call perdida_dinero (@perdida);
select @perdida;

-- ---------------------------------------------------------------------
--  Procedimiento que cancela una sesion cuando un cliente lo necesite
-- ---------------------------------------------------------------------


Delimiter $$
Create procedure cancelar_sesion(IN idSes int)
begin
	declare boolsesion INT Default 0;
    set boolsesion = (select count(Ses_id) from Sesion where Ses_id=idSes);
	if boolsesion = 1 then
		delete from Sesion where Ses_id = idSes;
        select 'Sesion Cancelada Exitosamente';
	end if;
    if boolsesion = 0 then
		select 'La Sesion ingresada no existe';
	end if;

end$$
Delimiter ;

-- call cancelar_sesion(16);

-- ---------------------------------------------------------------------
-- Procedimiento que dado un producto gastado/vendido lo actualiza como
-- en la tabla inventario, para indicar en cual fue gastado  
-- ---------------------------------------------------------------------
DELIMITER $$
CREATE PROCEDURE productos_gastados_inventario (producto INT , tipo varchar(10), ses_ven_id int) 
BEGIN
	if tipo = '%servicio%' then 
		update inventario set sesion_ses_id= ses_ven_id where Adquisicion_idAdquisicion = producto;
    else
		if tipo = '%producto%' then 
			update inventario set Venta_Producto_Venp_id= ses_ven_id where Adquisicion_idAdquisicion = producto;
		end if;
    end if; 
END$$ 
DELIMITER ;
 -- ejemplo ejecutable
-- call productos_gastados_inventario (1, 'producto' , 1);
-- select * from inventario;
-- procedimiento para asegurar una transaccion segura durante una venta 
DELIMITER $$ 
  create procedure proc_transaccion_compraProv(id int, produ_id int , id_compraProv int , adq_precio int , fecha_ven date)
  begin
	declare estado_i double;
	start transaction ;
    set estado_i = ( select Tran_estado_final from Transaccion order by idTransaccion desc limit 1 );
    INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)
    VALUES (id, produ_id, id_compraProv, adq_precio, fecha_ven);
    if (adq_precio > estado_i) then
		rollback;
    else 
		commit;
    end if;    
		
  end$$
delimiter ;

 -- call proc_transaccion ('104', '8', '3', '2500', '2025-01-01');
 -- select * from transaccion;

-- procedimiento para asegurar una transaccion segura durante una compra al proveedor  
DELIMITER $$ 
  create procedure proc_transaccion_venta(id int, produ_id int , id_compraProv int , adq_precio int , fecha_ven date)
  begin
	start transaction;
    INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)
    VALUES (id, produ_id, id_compraProv, adq_precio, fecha_ven);
    if (adq_precio > Tran_estado_inicial) then
		rollback;
    else 
		commit;
    end if;    
		
  end$$
delimiter ;
/*
-- procedimiento para asegurar una transaccion segura durante una venta  
DELIMITER $$ 
  create procedure proc_transaccion_venta(id int, produ_id int , id_compraProv int , adq_precio int , fecha_ven date)
  begin
	start transaction;
    INSERT INTO `estetica`.`Adquisicion` (`idAdquisicion`, `Producto_Pro_id`, `CompraProveedor_idCompraProveedor`, `adq_preciocompra`, `Fecha_Vencimiento`)
    VALUES (id, produ_id, id_compraProv, adq_precio, fecha_ven);
    if (adq_precio > Tran_estado_inicial) then
		rollback;
    else 
		commit;
    end if;    
		
  end$$
delimiter ;
*/