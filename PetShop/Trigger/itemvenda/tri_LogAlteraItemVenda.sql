DELIMITER $

CREATE TRIGGER tri_LogAlteraItemVenda
AFTER UPDATE
ON item_venda
FOR EACH ROW

BEGIN
	
	IF(OLD.PRODUTO_codProduto != NEW.PRODUTO_codProduto) then
		SELECT nomeProduto INTO @oldName FROM produto WHERE codProduto = OLD.PRODUTO_codProduto;
		SELECT nomeProduto INTO @newName FROM produto WHERE codProduto = NEW.PRODUTO_codProduto;
		SET @mensagem = CONCAT("Produto Alterado: ",@oldName, " para ", @newName);
		INSERT INTO logitemvenda VALUES(NULL,"Update","itemvenda",NEW.VENDA_codVenda, NEW.PRODUTO_codProduto, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.VENDA_codVenda != NEW.VENDA_codVenda) then
		SET @mensagem = CONCAT("Venda Alterada: ",OLD.VENDA_codVenda, " para ", NEW.VENDA_codVenda);
		INSERT INTO logitemvenda VALUES(NULL,"Update","itemvenda",NEW.VENDA_codVenda, NEW.PRODUTO_codProduto, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.quantidade != NEW.quantidade) then
	
		IF(OLD.quantidade < NEW.quantidade) then
			UPDATE produto SET quantidadeEstoque = quantidadeEstoque - (NEW.quantidade - OLD.quantidade) WHERE codProduto = NEW.PRODUTO_codProduto;
		
		ELSE IF(OLD.quantidade > NEW.quantidade) then
			UPDATE produto SET quantidadeEstoque = quantidadeEstoque + (OLD.quantidade - NEW.quantidade) WHERE codProduto = NEW.PRODUTO_codProduto;
		
		END if;
		END if;
			
		SET @mensagem = CONCAT("Quantidade Alterada: ",OLD.quantidade, " para ", NEW.quantidade);
		INSERT INTO logitemvenda VALUES(NULL,"Update","itemvenda",NEW.VENDA_codVenda, NEW.PRODUTO_codProduto, @mensagem, USER(), NOW());
	
	END if;
	
END $

DELIMITER ;