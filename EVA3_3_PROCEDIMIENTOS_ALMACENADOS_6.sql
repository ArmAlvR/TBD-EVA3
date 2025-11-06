DELIMITER $$
CREATE PROCEDURE agregar_actor2(IN firstname VARCHAR(50), IN lastname VARCHAR(50))
BEGIN
    DECLARE nuevo_actorID INT;
    SELECT COALESCE(maximo_actores(), 0) + 1 INTO nuevo_actorID;
    INSERT INTO actor (actor_id, first_name, last_name)
    VALUES (nuevo_actorID, firstname, lastname);
END$$
DELIMITER ;