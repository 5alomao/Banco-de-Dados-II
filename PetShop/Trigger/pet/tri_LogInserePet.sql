DELIMITER $

CREATE TRIGGER tri_LogInserePet
AFTER INSERT
ON pet
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Pet Inserido: ",NEW.nomePet);
	
	INSERT INTO logpet VALUES(NULL, "Insert", "pet", NEW.codPet ,@mensagem, USER(), NOW());

END$

DELIMITER ;