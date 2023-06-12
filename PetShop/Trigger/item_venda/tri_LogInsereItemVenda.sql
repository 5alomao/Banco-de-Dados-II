DELIMITER $

CREATE TRIGGER tri_LogInsereItemVenda
AFTER INSERT
ON item_venda
FOR EACH ROW

BEGIN

	SELECT nomeProduto INTO @nomeProd FROM produto WHERE codProduto = NEW.PRODUTO_codProduto;
	SET @mensagem = CONCAT("ItemVenda Inserido: ", @nomeProd);
	INSERT INTO logitemvenda VALUES(NULL,"Insert","itemvenda",NEW.VENDA_codVenda, NEW.PRODUTO_codProduto, @mensagem, USER(), NOW());

END $

DELIMITER ;