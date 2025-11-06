DELIMITER $$
CREATE PROCEDURE division2(IN val1 INT, IN val2 INT)
BEGIN
	DECLARE resu DECIMAL(10,2);
	DECLARE CONTINUE HANDLER FOR SQLSTATE "22012"
    BEGIN
		SELECT "ERROR: Divicion entre cero no permitida" as mensaje;
        SET resu = null;
	END;

    SET resu = val1 / val2;
    SELECT resu AS resu_fin;
END$$
DELIMITER ;