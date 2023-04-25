/* Proposta: criar um trigger que registre no LOG de auditoria a inserção de uma conta com seus respectivos dados: idConta, tipo, saldo*/

#tri_LogInsereConta

delimiter $
CREATE TRIGGER tri_LogInsereConta
AFTER INSERT
ON conta
FOR EACH ROW
BEGIN

	SET @mensagem = CONCAT("Nova Conta com Id:",NEW.idConta,"do Tipo: ", NEW.tipo, "com o Saldo de: ",NEW.saldo);
	
	INSERT INTO auditoria VALUES (NULL,@mensagem,"conta",NOW(),USER());
END$
delimiter ;