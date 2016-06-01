
-- Permisos Clientes 

 -- '62702537'@'localhost';
 
grant select on table estetica.datos_cliente  to '62702537'@'localhost';
grant select on table estetica.cliente_compra  to '62702537'@'localhost';
grant select on table estetica.producto_venta  to '62702537'@'localhost';
grant select on table estetica.agenda_citas to '62702537'@'localhost';
grant select on table estetica.tipoServicio  to '62702537'@'localhost';
grant select on table estetica.datos_empleado to '62702537'@'localhost';
grant select on table estetica.vw_cli_serv to '62702537'@'localhost';
grant select on table estetica.horario_all to '62702537'@'localhost';
grant update on Table estetica.datos_cliente to  '62702537'@'localhost';
grant update on Table detalleServicio to  '62702537'@'localhost';
grant update on Table detalleSesion   to  '62702537'@'localhost';


-- permisos user esteticista
grant select on estetica.detalleSesion to '171182110'@'localhost';
grant select on estetica.ProductosEnProtocolo to '171182110'@'localhost';
grant update on estetica.detalleSesion to '171182110'@'localhost';
grant execute on procedure getSesions to '171182110'@'localhost';
grant execute on procedure getProduct to '171182110'@'localhost';
grant execute on procedure getServices to '171182110'@'localhost';
grant update, select on estetica.Empleado to '171182110'@'localhost';


-- permisos user peluquero
grant select on estetica.detalleSesion to '599891092'@'localhost';
grant update on estetica.datos_empleado to '599891092'@'localhost';
grant update on estetica.detalleSesion to '599891092'@'localhost';
grant select on estetica.ProductosEnProtocolo to '599891092'@'localhost';
grant execute on procedure getSesions to '599891092'@'localhost';
grant execute on procedure getServices to '599891092'@'localhost';
grant execute on procedure getProduct to '599891092'@'localhost';


-- permisos Administrador 

grant select, insert, update  on estetica.* to '248465319'@'localhost';


-- permisos user recepcionista
grant select on estetica.detalleSesion to '147283400'@'localhost';
grant update on estetica.detalleSesion to '147283400'@'localhost';
grant select on estetica.ProductosEnProtocolo to '147283400'@'localhost';
grant execute on procedure getSesions to '147283400'@'localhost';
grant execute on procedure getServices to '147283400'@'localhost';
grant execute on procedure getProduct to '147283400'@'localhost';


