DELIMITER $$
CREATE PROCEDURE agregar_actor(IN actorID INT, IN firstname VARCHAR(50), IN lastname VARCHAR(50))
BEGIN
	INSERT INTO actor(actor_id, first_name, last_name)
    VALUE(actorID, firstname, lastname);
END$$
DELIMITER ;