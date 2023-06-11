DELIMITER $

CREATE TRIGGER tri_LogDeletaProduto
AFTER DELETE
ON produto
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Produto Removido: ",OLD.nomeProduto);
	
	INSERT INTO logproduto VALUES(NULL, "Delete", "produto", OLD.codProduto ,@mensagem, USER(), NOW());

END$

DELIMITER ;