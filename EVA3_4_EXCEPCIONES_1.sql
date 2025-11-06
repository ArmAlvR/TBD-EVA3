DELIMITER $$
CREATE FUNCTION f_get_letras(
    p_paterno VARCHAR(100),
    p_materno VARCHAR(100),
    p_nombre VARCHAR(100)
)
RETURNS VARCHAR(4)
DETERMINISTIC
BEGIN
    RETURN UPPER(CONCAT(
        SUBSTRING(p_paterno, 1, 2),
        SUBSTRING(p_materno, 1, 1),
        SUBSTRING(p_nombre, 1, 1)
    ));
END$$
DELIMITER ;