
-- ---------------------------------------------------------------------
-- Trigger que determina el valor acumulado de una compra al proveedor 
-- ---------------------------------------------------------------------    
DELIMITER $$
  CREATE TRIGGER trig_adquis before INSERT ON Adquisicion
    FOR EACH ROW BEGIN
    
      declare sum_total int default 0;
      declare sum_parcial int default 0;
      set sum_parcial = (select CPRO_costo from CompraProveedor where 
      CompraProveedor.idCompraProveedor = new.CompraProveedor_idCompraProveedor);
      set sum_total = sum_parcial + new.adq_preciocompra;
      update CompraProveedor set CPRO_costo = sum_total where 
      CompraProveedor.idCompraProveedor = new.CompraProveedor_idCompraProveedor;
     END$$
DELIMITER ;



-- ---------------------------------------------------------------------
-- Trigger que inserta los productos en el inventario luego de una adquisicion
-- ---------------------------------------------------------------------    
DELIMITER $$
  CREATE TRIGGER trig_adquis_inv after INSERT ON Adquisicion
    FOR EACH ROW BEGIN
	INSERT INTO Inventario (`Estado`, `Disponible`, `Adquisicion_idAdquisicion`) 
      VALUES ('verde ', '1', new.idAdquisicion);
    END$$
DELIMITER ;


-- --------------------------------------------------------------------------------------------------------
-- Trigger para verificar que solo el empleado correspondiente a la sesion pueda modificar el comentario
-- --------------------------------------------------------------------------------------------------------

DELIMITER $$
	CREATE TRIGGER trig_verify_ses_com BEFORE UPDATE ON Sesion
	FOR EACH ROW 
    BEGIN
		IF  SUBSTR(user(),1, CHAR_LENGTH(user())- 10 ) != old.Ses_Emp_cc and old.Ses_Emp_cc is not null
        and (old.Ses_Comentario != new.Ses_comentario  or old.Ses_Comentario is null ) THEN
			set new.Ses_comentario = old.Ses_comentario;
		END IF;
     END$$
DELIMITER ;

-- ------------------------------------------------------------------------------------------
-- Trigger que determina el valor acumulado de una venta al realizar una venta de un servicio 
-- ------------------------------------------------------------------------------------------
DELIMITER $$
  CREATE TRIGGER trig_Venta_servicio after INSERT ON Venta_Servicio
    FOR EACH ROW BEGIN
    
      declare sum_total double default 0;
      declare sum_parcial double default 0;
      declare valorSer double default 0;
      set sum_parcial = (Select Ven_costo from Venta where Venta.Ven_id = new.Ven_id);
      if sum_parcial is null then
		set sum_parcial = 0;
	  end if;
      set ValorSer = (select Ser_precio from Servicio where 
      Servicio.Ser_id = new.Ser_id);
      set sum_total = sum_parcial + ValorSer;
      update Venta set Ven_costo = sum_total where 
      Venta.Ven_id =new.Ven_id;
     END$$
DELIMITER 



-- ------------------------------------------------------------------------
-- Trigger verifica que los datos ingresados en inventario sean congruentes 
-- ------------------------------------------------------------------------
DELIMITER $$
	CREATE TRIGGER trig_inventario_verify before update ON Inventario
		FOR EACH ROW BEGIN
            declare msg varchar(128);	
            
            if ( new.Venta_Producto_Venp_id != old.Venta_Producto_Venp_id 
			or (old.Venta_Producto_Venp_id is null and new.Venta_Producto_Venp_id is not null)) AND 
			( new.Sesion_Ses_id != old.Sesion_Ses_id 
			or (old.Sesion_Ses_id is null and new.Sesion_Ses_id is not null)) then
				set new.Sesion_Ses_id = old.Sesion_Ses_id;
                set new.Venta_Producto_Venp_id =  old.Venta_Producto_Venp_id;
			    set msg = concat('MyTriggerError: Just insert one value, Sesion_id or Venta_producto id on idInventario : ', cast(old.IdInventario as char));
				signal sqlstate '45000' set message_text = msg;
			end if;
			if old.Disponible = 0 then
				set new.Disponible = 0;
			    set new.Sesion_Ses_id = old.Sesion_Ses_id;
                set new.Venta_Producto_Venp_id =  old.Venta_Producto_Venp_id;
                set msg = concat('MyTriggerError: Is not available idInventario : ', cast(old.IdInventario as char));
				signal sqlstate '45000' set message_text = msg;
			end if;
            
            
            if ( new.Venta_Producto_Venp_id != old.Venta_Producto_Venp_id 
			or (old.Venta_Producto_Venp_id is null and new.Venta_Producto_Venp_id is not null)) or
			( new.Sesion_Ses_id != old.Sesion_Ses_id 
			or (old.Sesion_Ses_id is null and new.Sesion_Ses_id is not null)) then
				set new.Disponible = 0;
			end if;
            
            
     END$$
DELIMITER ;

-- --------------------------------------------------------------------------------------
-- Trigger que actualiza el valor de la venta cuando se reazliza la venta de un producto 
-- --------------------------------------------------------------------------------------

DELIMITER $$
	CREATE TRIGGER trig_inventario_update after update ON Inventario
		FOR EACH ROW BEGIN
        
			declare sum_total double default 0;
			declare sum_parcial double default 0;
			declare valorPro double default 0;
            
            if new.Venta_Producto_Venp_id != old.Venta_Producto_Venp_id 
			or (old.Venta_Producto_Venp_id is null and new.Venta_Producto_Venp_id is not null) then
				set sum_parcial = (Select Ven_costo from Venta where Venta.Ven_id =  (Select Venta_Producto.Ven_id from Venta_Producto where
					Venta_Producto.Venp_id = new.Venta_Producto_Venp_id ));
				if sum_parcial is null then
					set sum_parcial = 0;
				end if;
				set ValorPro = (Select Pro_precioVenta from Producto 
					where Pro_id = (select Producto_Pro_id from Adquisicion 
					where idAdquisicion = old.Adquisicion_idAdquisicion));
				set sum_total = sum_parcial + ValorPro;
				UPDATE Venta 
				SET 
					Ven_costo = sum_total
				WHERE
					Venta.Ven_id = (SELECT Venta_Producto.Ven_id FROM Venta_Producto WHERE Venta_Producto.Venp_id = new.Venta_Producto_Venp_id);
			End if ;       
     END$$
DELIMITER ;

-- ---------------------------------------------------------------------
-- Trigger que actualiza la tabla transaccion luego de una compra al proveedor . 
-- ---------------------------------------------------------------------    
 DELIMITER $$
  CREATE TRIGGER trig_trans after UPDATE ON compraProveedor 
    FOR EACH ROW BEGIN
	 declare monto double; 
     declare estado_i int default (select Tran_estado_final from transaccion order by idTransaccion desc limit 1);
     set monto = new.CPRO_costo -  old.CPRO_costo ;
     insert into Transaccion ( `Tran_monto`, `Tran_tipo` , `Tran_idCompraProveedor`, `Tran_estado_inicial`, `Tran_estado_final`)
     values( monto , 'Compra',  new.idCompraProveedor, estado_i ,  estado_i - monto);
    END$$
DELIMITER ;

-- drop  trigger trig_trans;

 -- ---------------------------------------------------------------------
-- Trigger que actualiza la tabla transaccion luego de una venta . 
-- ---------------------------------------------------------------------    
 DELIMITER $$
  CREATE TRIGGER trig_trans_venta after UPDATE ON Venta 
    FOR EACH ROW BEGIN
	 declare monto double; 
     declare estado_i int default (select Tran_estado_final from transaccion order by idTransaccion desc limit 1);
     set monto = new.Ven_costo -  old.Ven_costo ;
     insert into Transaccion ( `Tran_monto`, `Tran_tipo` , `Tran_Ven_id`, `Tran_estado_inicial`, `Tran_estado_final`)
     values( monto , 'Venta',  new.Ven_id , estado_i ,  estado_i - monto);
    END$$
DELIMITER ;
