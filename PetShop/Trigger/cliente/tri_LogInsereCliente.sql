DELIMITER $

CREATE TRIGGER tri_LogInsereCliente
AFTER INSERT
ON cliente
FOR EACH ROW

BEGIN 

	SET @mensagem = CONCAT("Cliente Inserido: ",NEW.nomeCliente);
	
	INSERT INTO logcliente VALUES (NULL,"Insert","cliente",@mensagem,USER(),NOW());

END$
DELIMITER ; 