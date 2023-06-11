DELIMITER $
CREATE TRIGGER tri_LogAlteraMarca
AFTER UPDATE
ON marca
FOR EACH ROW
BEGIN

	IF(OLD.nomeMarca != NEW.nomeMarca) then
		SET @mensagem = CONCAT("Nome Alterado: ", OLD.nomeMarca, " para ",NEW.nomeMarca);
		INSERT INTO logmarca VALUES (NULL, "Update", "marca", NEW.codMarca, @mensagem, USER(), NOW());
	END if;
	
END$
DELIMITER ;