DELIMITER $
CREATE TRIGGER tri_AtualizaEstoque
AFTER UPDATE
ON itemvenda
FOR EACH ROW
BEGIN
	
	
	IF(NEW.quantidade > OLD.quantidade) 
		then
			UPDATE produto SET quantidadeEstoque = quantidadeEstoque - (NEW.quantidade - OLD.quantidade) WHERE codProduto = NEW.PRODUTO_codProduto;
			SET @diff = NEW.quantidade - OLD.quantidade;
			SET @mensagem = CONCAT("Quantidade Aumentada. Removido do Estoque [",@diff,"] unidades.");			
	ELSE if (NEW.quantidade < OLD.quantidade)
		then
			UPDATE produto SET quantidadeEstoque = quantidadeEstoque + (OLD.quantidade - NEW.quantidade) WHERE codProduto = NEW.PRODUTO_codProduto;
			SET @diff = OLD.quantidade - NEW.quantidade;
			SET @mensagem = CONCAT("Quantidade Diminuida. Adicionado ao Estoque [",@diff,"] unidades.");	
		END if;
	END if;
		
	INSERT INTO auditoria VALUES(NULL,@mensagem,"itemvenda",NOW(),USER());
	
END$
DELIMITER ;