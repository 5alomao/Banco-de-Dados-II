DELIMITER $
CREATE TRIGGER tri_LogInsereCliente
AFTER INSERT
ON cliente
FOR EACH ROW
BEGIN

	SET @mensagem = CONCAT("Cliente Inserido: ",NEW.nomeCliente);
	
	INSERT INTO auditoria VALUES (NULL,@mensagem,"cliente",NOW(),USER());
	
END $
DELIMITER ;