DELIMITER $

CREATE TRIGGER tri_LogDeletaItemVenda
AFTER DELETE
ON item_venda
FOR EACH ROW

BEGIN
	
	SET @qtdItem = OLD.quantidade;
	UPDATE produto SET quantidadeEstoque = quantidadeEstoque + @qtdItem WHERE codProduto = OLD.PRODUTO_codProduto;
	
	SELECT nomeProduto INTO @nomeProd FROM produto WHERE codProduto = OLD.PRODUTO_codProduto;
	SET @mensagem = CONCAT("ItemVenda Removido: ", @nomeProd);
	INSERT INTO logitemvenda VALUES(NULL,"Delete","itemvenda",OLD.VENDA_codVenda, OLD.PRODUTO_codProduto, @mensagem, USER(), NOW());

END $

DELIMITER ;