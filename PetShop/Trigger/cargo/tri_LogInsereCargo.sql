DELIMITER $

CREATE TRIGGER tri_LogInsereCargo
AFTER INSERT
ON cargo
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Cargo Inserido: ", NEW.tipoCargo);
	
	INSERT INTO logcargo VALUES (NULL,"Insert","cargo",NEW.codCargo, @mensagem, USER(), NOW());

END$

DELIMITER ;