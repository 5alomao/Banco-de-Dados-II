DELIMITER $
CREATE TRIGGER tri_LogDeletaCliente
AFTER DELETE
ON cliente
FOR EACH ROW
BEGIN

	SET @mensagem = CONCAT("Cliente [",OLD.codCliente,"] Removido: ",OLD.nomeCliente);
	
	INSERT INTO auditoria VALUES (NULL,@mensagem,"cliente",NOW(),USER());
	
END $
DELIMITER ;