DELIMITER $
CREATE TRIGGER tri_LogInsereMarca
AFTER INSERT
ON marca
FOR EACH ROW
BEGIN

	SET @mensagem = CONCAT("Marca Inserida: ", NEW.nomeMarca);
	
	INSERT INTO logmarca VALUES (NULL,"Insert","marca",NEW.codMarca,@mensagem, USER(), NOW());
	
END$
DELIMITER ;