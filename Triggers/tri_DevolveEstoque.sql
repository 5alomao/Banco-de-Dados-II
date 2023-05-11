DELIMITER $
CREATE TRIGGER tri_DevolveEstoque
AFTER DELETE
ON itemvenda
FOR EACH ROW
BEGIN
	
	SET @qtdItem = OLD.quantidade;
	UPDATE produto SET quantidadeEstoque = quantidadeEstoque + @qtdItem WHERE codProduto = OLD.PRODUTO_codProduto;
	
	SELECT nome INTO @nomeProd FROM produto WHERE codProduto = OLD.PRODUTO_codProduto; 
	
	SET @mensagem = CONCAT("Produto [",@nomeProd,"] devolvido para o Estoque. Quantidade [",@qtdItem,"]. Pela venda [",OLD.VENDA_codVenda,"]");
	
	INSERT INTO auditoria VALUES(NULL,@mensagem,"itemvenda",NOW(),USER());
	
END$
DELIMITER ;