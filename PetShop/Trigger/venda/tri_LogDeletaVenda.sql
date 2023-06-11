DELIMITER $

CREATE TRIGGER tri_LogDeletaVenda
AFTER DELETE
ON venda
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Venda Removida: ",OLD.tipoVenda);
	
	INSERT INTO logvenda VALUES(NULL, "Delete", "venda", OLD.codVenda ,@mensagem, USER(), NOW());

END$

DELIMITER ;