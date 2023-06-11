DELIMITER $
CREATE TRIGGER tri_LogDeletaMarca
AFTER DELETE
ON marca
FOR EACH ROW
BEGIN

	SET @mensagem = CONCAT("Marca Removida: ",OLD.nomeMarca);
	
	INSERT INTO logmarca VALUES (NULL,"Delete","marca",OLD.codMarca,@mensagem,USER(),NOW());
	
END$
DELIMITER ;