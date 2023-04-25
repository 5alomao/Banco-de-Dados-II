/* 
Proposta: Criar um trigger que registre
na Auditoria a exclusão de uma conta vinculada

(tri_LogApagaContaVinculada)
*/

delimiter $
CREATE TRIGGER tri_LogApagaContaVinculada
AFTER DELETE
ON contavinculada
FOR EACH ROW
BEGIN
	SELECT nome INTO @nomeCliente FROM cliente WHERE idCliente = old.CLIENTE_idCLIENTE;
	
	SET @mensagem = CONCAT("Exclusão de conta do cliente: ",UPPER(@nomeCliente));
	
	INSERT INTO auditoria VALUES (NULL,@mensagem,"contavinculada",NOW(),USER());
END$
delimiter ;
	
