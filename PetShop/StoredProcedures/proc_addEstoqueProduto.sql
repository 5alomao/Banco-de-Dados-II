DELIMITER $

CREATE PROCEDURE proc_addEstoqueProduto(IN codProd INT, IN quantidade INT)
BEGIN
	UPDATE produto SET quantidadeEstoque = quantidadeEstoque + quantidade WHERE codProduto = codProd;
END$

DELIMITER ;