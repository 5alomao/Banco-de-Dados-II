DELIMITER $

CREATE TRIGGER tri_FuncAlteraEstoque
BEFORE INSERT
ON item_venda
FOR EACH ROW

BEGIN
	
	SET @qtdItem = NEW.quantidade;
	
	UPDATE produto SET quantidadeEstoque = quantidadeEstoque - @qtdItem WHERE codProduto = NEW.PRODUTO_codProduto;
	
END$

DELIMITER ;