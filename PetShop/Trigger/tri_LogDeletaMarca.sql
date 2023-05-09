DELIMITER $
CREATE TRIGGER tri_LogDeletaMarca
AFTER DELETE
ON marca
FOR EACH ROW
BEGIN
	SET @mensagem = CONCAT("Marca [",OLD.codMarca,"] Removida: ",OLD.nomeMarca);
	INSERT INTO auditoria VALUES (NULL,@mensagem,"marca",NOW(),USER());
END$
DELIMITER ;