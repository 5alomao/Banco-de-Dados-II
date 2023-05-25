delimiter $
CREATE PROCEDURE proc_deletaProduto (IN codProdBusca int)

BEGIN

	SELECT COUNT(*) INTO @existe FROM produto p WHERE p.codProduto = codProdBusca;
	
	if(@existe = 0) then
		SELECT "Produto não encontrado no Sistema!" AS ERRO;
		else
			delete from produto where codProduto = codProdBusca;
			SELECT "Produto Removido!" AS "Registro Afetado";
	END if;
END$

delimiter ;