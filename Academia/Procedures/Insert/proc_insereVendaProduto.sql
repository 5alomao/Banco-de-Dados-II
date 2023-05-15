delimiter $
CREATE PROCEDURE proc_insereVendaProduto (IN novoPagamento ENUM('Pix','Cartão de Crédito','Cartão de Débito'), IN codCliente INT, IN codFuncionario INT)
BEGIN
	INSERT INTO venda_produto VALUES (NULL, novoPagamento, codCliente, codFuncionario);
END$
delimiter ;