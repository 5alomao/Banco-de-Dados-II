delimiter $

CREATE PROCEDURE proc_alteraPrecoVenda (IN codProdBusca INT, IN precoV DECIMAL(5,2))

BEGIN

	SELECT COUNT(*) INTO @existe FROM produto p WHERE p.codProduto = codProdBusca;
	
	if(@existe = 0) then
		SELECT "Produto não encontrado no Sistema!" AS ERRO;
		else
			update produto set precoVenda = precoV where codProduto = codProd;
			SELECT "Preço de Venda Alterado!" AS "Registro Afetado";
	END if;
END$

delimiter ;


SELECT * FROM produto;
