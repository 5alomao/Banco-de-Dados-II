delimiter $
CREATE PROCEDURE proc_insereVendaPlano (IN novoPagamento ENUM('Pix','Cartão de Crédito','Cartão de Débito'), IN codCliente INT, IN codPlano INT, IN codFuncionario INT)
BEGIN
	INSERT INTO venda_plano VALUES(NULL, novoPagamento, codCliente, codPlano, codFuncionario);
END$
delimiter ;