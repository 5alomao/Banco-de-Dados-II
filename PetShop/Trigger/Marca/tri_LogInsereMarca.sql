DELIMITER $
CREATE TRIGGER tri_LogInsereMarca
AFTER INSERT
ON marca
FOR EACH ROW
BEGIN
	SET @mensagem = CONCAT("Marca Inserida: ",NEW.nomeMarca);
	INSERT INTO auditoria VALUES (NULL,@mensagem,"marca",NOW(),USER());
END$
DELIMITER ;