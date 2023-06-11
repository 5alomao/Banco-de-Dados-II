/*
Trigger para inserir na tabela auditoria 
um registro informando que algum CLIENTE foi deletado
*/
DELIMITER $

CREATE TRIGGER tri_LogDeletaCliente
AFTER DELETE
ON cliente
FOR EACH ROW

BEGIN

	SET @mensagem = CONCAT("Cliente Removido: ",OLD.nomeCliente);
	
	INSERT INTO logcliente VALUES (NULL, "Delete", OLD.codCliente, "cliente", @mensagem, USER(), NOW());
	
END$

DELIMITER ; 
