DELIMITER $
CREATE TRIGGER tri_LogCliente18anos
AFTER INSERT
ON CLIENTE
FOR EACH ROW
BEGIN
	SELECT floor(DATEDIFF(CURDATE(),new.dataNascimento)/365) INTO @idade FROM cliente WHERE idCLIENTE = NEW.idCliente;
	IF(@idade < 18) 
		THEN
			SET @mensagem = CONCAT("Cliente: [",NEW.idCliente,"] - Não possui 18 anos");
			INSERT INTO auditoria VALUES (NULL,@mensagem,"cliente",NOW(),USER());
	END if;
END$
DELIMITER ;