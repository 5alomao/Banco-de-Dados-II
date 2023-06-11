DELIMITER $

CREATE TRIGGER tri_LogAlteraVenda
AFTER UPDATE
ON venda
FOR EACH ROW

BEGIN	

	IF(OLD.tipoVenda != NEW.tipoVenda) then
		SET @mensagem = CONCAT("Tipo Alterado: ",OLD.tipoVenda, " para ", NEW.tipoVenda);
		INSERT INTO logvenda VALUES(NULL, "Update", "venda", NEW.codVenda ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.dataHora != NEW.dataHora) then
		SET @mensagem = CONCAT("Data Alterada: ",OLD.dataHora, " para ", NEW.dataHora);
		INSERT INTO logvenda VALUES(NULL, "Update", "venda", NEW.codVenda ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.CLIENTE_codCliente != NEW.CLIENTE_codCliente) then
		SET @mensagem = CONCAT("Cliente Alterado: ",OLD.CLIENTE_codCliente, " para ", NEW.CLIENTE_codCliente);
		INSERT INTO logvenda VALUES(NULL, "Update", "venda", NEW.codVenda ,@mensagem, USER(), NOW());
	END if;
	
END$

DELIMITER ;