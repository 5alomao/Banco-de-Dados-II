DELIMITER $
CREATE TRIGGER tri_LogAlteraMarca
AFTER UPDATE
ON marca
FOR EACH ROW
BEGIN

	IF(OLD.nomeMarca != NEW.nomeMarca) 
		then
			SET @mensagem = CONCAT("Marca Alterada: [",NEW.codMarca,"] ", NEW.nomeMarca);
			INSERT INTO auditoria VALUES (NULL,@mensagem,"marca",NOW(),USER());
	END if;
	
END$
DELIMITER ;