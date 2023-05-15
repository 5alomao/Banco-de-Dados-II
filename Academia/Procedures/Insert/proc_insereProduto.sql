delimiter $
CREATE PROCEDURE proc_insereProduto (IN novoProduto VARCHAR(100), IN novoValor DECIMAL(10,2), IN codMarca INT, IN codCategoria INT, IN qtdEstoque int)
BEGIN
	INSERT INTO produto VALUES (NULL, novoProduto, novoValor, codCategoria, codMarca, qtdEstoque);
END$
delimiter ;