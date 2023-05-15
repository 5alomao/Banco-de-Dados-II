delimiter $
CREATE PROCEDURE proc_insereItemVenda (IN codVendaProd INT, IN codProd INT, IN quantidade INT)
BEGIN
	INSERT INTO item_venda VALUES(codVendaProd,codProd,quantidade);
END$
delimiter ;