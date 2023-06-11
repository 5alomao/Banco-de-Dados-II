DELIMITER $

CREATE TRIGGER tri_LogInsereVenda
AFTER INSERT
ON venda
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Venda Inserida: ",NEW.tipoVenda);
	
	INSERT INTO logvenda VALUES(NULL, "Insert", "venda", NEW.codVenda ,@mensagem, USER(), NOW());

END$

DELIMITER ;