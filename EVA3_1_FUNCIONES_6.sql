DELIMITER $$
CREATE FUNCTION comprar(val1 INT, val2 INT)
RETURNS VARCHAR(50) DETERMINISTIC
BEGIN
	DECLARE resu VARCHAR(50);
    IF val1 < val2 THEN
		SET resu = "Valor 2 es mayor que Valor 1";
    ELSEIF val1 > val2 THEN
		SET resu = "Valor 1 es MAYOR que Valor 2";
	ELSE
		SET resu = "Ambos valores son IGUALES";
	END IF;
    RETURN resu;
END$$
DELIMITER ;