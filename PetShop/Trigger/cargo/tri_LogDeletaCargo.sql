DELIMITER $

CREATE TRIGGER tri_LogDeletaCargo
AFTER DELETE
ON cargo
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Cargo Removido: ", OLD.tipoCargo);
	
	INSERT INTO logcargo VALUES (NULL,"Delete","cargo",OLD.codCargo, @mensagem, USER(), NOW());

END$

DELIMITER ;