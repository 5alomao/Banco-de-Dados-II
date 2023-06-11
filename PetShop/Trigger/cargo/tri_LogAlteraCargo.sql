DELIMITER $

CREATE TRIGGER tri_LogAlteraCargo
AFTER UPDATE
ON cargo
FOR EACH ROW

BEGIN	
	
	IF(OLD.tipoCargo != NEW.tipoCargo) then
		SET @mensagem = CONCAT("Tipo Alterado: ",OLD.tipoCargo, " para ",NEW.tipoCargo);
		INSERT INTO logcargo VALUES (NULL,"Update","cargo",NEW.codCargo, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.salarioCargo != NEW.salarioCargo) then
		SET @mensagem = CONCAT("Salario Alterado: ",OLD.salarioCargo, " para ",NEW.salarioCargo);
		INSERT INTO logcargo VALUES (NULL,"Update","cargo",NEW.codCargo, @mensagem, USER(), NOW());
	END if;

END$

DELIMITER ;