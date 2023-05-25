delimiter $

CREATE PROCEDURE proc_relatorioProduto (IN codProdBusca int)

BEGIN

	SELECT COUNT(*) INTO @existe FROM produto p WHERE p.codProduto = codProdBusca;
	
	if(@existe = 0) then
		SELECT "Produto não encontrado no Sistema!" AS ERRO;
		else
			SELECT p.codProduto AS "Código",
				p.nomeProduto AS "Produto",
				cat.nomeCategoria AS "Categoria",
				mar.nomeMarca AS "Marca",
				p.precoVenda AS "Valor"
			FROM produto p
			INNER JOIN categoria cat ON cat.codCategoria = p.CATEGORIA_codCategoria
			INNER JOIN marca mar ON mar.codMarca = p.MARCA_codMarca
			WHERE p.codProduto = codProdBusca;
	END if;
END$

delimiter ;