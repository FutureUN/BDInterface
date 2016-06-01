delimiter %%
create function nombredelafuncion(cargoid int) 
returns int
begin
	declare cant int default 0;
	set cant = 6 * cargoid;
    return cant;
end %% 
delimiter ;
delimiter %%


-- estas dos funciones solo se deben ejecutar por un usuario administrador

-- funcion que cuenta el numero de empleados para un cargo especifico

create function numEmpl(cargoid int) 
returns int
begin
	declare cant int default 0;
	set cant = (select count(*) from Empleado where Cargo_id = cargoid); 
    return cant;
end %% 
delimiter ;



-- funcion que retorna las ganancias para la estetica actualmente 


delimiter %%
create function ganancias() 
returns double
begin
	declare gasto double default 0;
	declare ingresos double default 0;
    set gasto = (select sum(CPRO_costo) from CompraProveedor);
    set ingresos = (select sum(Ven_costo) from Venta);
    return ingresos  - gasto;
end %% 
delimiter ;
select numEmpl(1);
select ganancias();
