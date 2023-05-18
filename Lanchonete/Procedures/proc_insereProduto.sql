delimiter $

CREATE PROCEDURE proc_insereProduto (IN nomeInserir VARCHAR(200), IN precoCustoInserir DECIMAL(10,2), IN precoVendaInserir DECIMAL(10,2), IN categoriaInserir INT, IN marcaInserir int)
BEGIN
	INSERT INTO produto(nome,precoCusto,precoVenda,CATEGORIA_codCategoria,MARCA_codMarca) VALUES (nomeInserir,precoCustoInserir,precoVendaInserir,categoriaInserir,marcaInserir);
END$

delimiter ;