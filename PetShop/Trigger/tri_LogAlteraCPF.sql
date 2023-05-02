delimiter $
CREATE TRIGGER tri_LogAlteraCPF
AFTER UPDATE
ON cliente
FOR EACH ROW
BEGIN

	IF(OLD.cpfCliente != NEW.cpfCliente) then
	SET @mensagem = CONCAT("CPF Alterado - Cliente[",NEW.codCliente,"]");
	INSERT INTO auditoria VALUES (NULL,@mensagem,"cliente",NOW(),USER());
	END if;
	
END$
delimiter ;