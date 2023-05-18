delimiter $

CREATE PROCEDURE proc_alteraMargem (IN codAlterado INT, IN novaMargem DECIMAL(5,2))
BEGIN

	SELECT COUNT(*) INTO @contador FROM produto WHERE codProduto = codAlterado;
	if(@contador = 0) then
		SELECT "Produto não encontrado!" AS ERRO;
		else
			if(novaMargem > 0) then
				UPDATE produto SET margemLucro = novaMargem WHERE codAlterado = codProduto;
			END if;
		END if;
END$

delimiter ;