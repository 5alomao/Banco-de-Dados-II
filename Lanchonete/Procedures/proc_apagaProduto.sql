delimiter $

CREATE PROCEDURE proc_apagaProduto (IN codApaga INT)

BEGIN
	SELECT COUNT(*) INTO @contador FROM produto WHERE codProduto = codApaga;
	if(@contador = 0) then
		SELECT "Produto não encontrado!" AS ERRO;
		else
			DELETE FROM produto WHERE codProduto = codApaga;
			END if;
END$

delimiter ;