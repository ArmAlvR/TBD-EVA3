DELIMITER $$
CREATE FUNCTION f_concatenar_rfc(
    p_letras VARCHAR(4),
    p_anio VARCHAR(2),
    p_mes VARCHAR(2),
    p_dia VARCHAR(2)
)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    RETURN CONCAT(p_letras, p_anio, p_mes, p_dia);
END$$
DELIMITER ;