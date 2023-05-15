delimiter $

CREATE PROCEDURE proc_deletaProduto (IN remProduto int)
BEGIN

	DELETE FROM produto WHERE codProduto = remProduto;
	
END$

delimiter ;