DELIMITER $

CREATE TRIGGER tri_LogInsereProduto
AFTER INSERT
ON produto
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Produto Inserido: ",NEW.nomeProduto);
	
	INSERT INTO logproduto VALUES(NULL, "Insert", "produto", NEW.codProduto ,@mensagem, USER(), NOW());

END$

DELIMITER ;