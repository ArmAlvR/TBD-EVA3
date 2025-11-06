DELIMITER $$

CREATE PROCEDURE agregar_Personas(
    IN nombre VARCHAR(50),
    IN paterno VARCHAR(50),
    IN materno VARCHAR(50),
    IN fecha DATE
)
BEGIN
    DECLARE letras_calculadas VARCHAR(4);
    DECLARE año_calculado VARCHAR(2);
    DECLARE mes_calculado VARCHAR(2);
    DECLARE dia_calculado VARCHAR(2);
    DECLARE rfc_final VARCHAR(13);

    SET letras_calculadas = f_get_letras(paterno, materno, nombre);
    SET año_calculado = f_get_año(fecha);
    SET mes_calculado = f_get_mes(fecha);
    SET dia_calculado = f_get_dia(fecha);
    
    SET rfc_final = f_concatenar_rfc(letras_calculadas, año_calculado, mes_calculado, dia_calculado);
    
    INSERT INTO Personas (
        RFC, 
        Nombre, 
        Ap_Paterno, 
        Ap_Materno, 
        Fecha_Nac
    )
    VALUES (
        rfc_final,
        nombre,
        paterno,
        materno,
        fecha
    );

END$$
DELIMITER ;