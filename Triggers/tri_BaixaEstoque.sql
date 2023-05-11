DELIMITER $
CREATE TRIGGER tri_BaixaEstoque
BEFORE INSERT
ON itemvenda
FOR EACH ROW
BEGIN
	
	SET @qtdItem = NEW.quantidade;
	UPDATE produto SET quantidadeEstoque = quantidadeEstoque - @qtdItem WHERE codProduto = NEW.PRODUTO_codProduto;
	
	SELECT nome INTO @nomeProd FROM produto WHERE codProduto = NEW.PRODUTO_codProduto; 
	
	SET @mensagem = CONCAT("Produto [",@nomeProd,"] vendido. Quantidade [",@qtdItem,"]. Para a venda [",NEW.VENDA_codVenda,"]");
	
	INSERT INTO auditoria VALUES(NULL,@mensagem,"itemvenda",NOW(),USER());
	
END$
DELIMITER ;