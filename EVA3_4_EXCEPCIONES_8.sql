DELIMITER $$
create procedure insertar_prueba(clave int)
BEGIN
	declare exit handler for sqlstate "23000"
    BEGIN
		select "Error: calve duplicada" as mensaje_error;
	end;

	insert into prueba1 value(clave);
    select "Clave insertada correctamente" as mensaje;
END$$
DELIMITER ;