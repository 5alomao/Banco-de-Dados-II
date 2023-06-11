DELIMITER $

CREATE TRIGGER tri_LogDeletaPet
AFTER DELETE
ON pet
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Pet Removido: ",OLD.nomePet);
	
	INSERT INTO logpet VALUES(NULL, "Delete", "pet", OLD.codPet ,@mensagem, USER(), NOW());

END$

DELIMITER ;