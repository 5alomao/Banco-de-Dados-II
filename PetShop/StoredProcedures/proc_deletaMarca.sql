DELIMITER $

CREATE PROCEDURE proc_deletaMarca (IN codRem INT)
BEGIN
	SELECT COUNT(*) INTO @existe FROM marca WHERE codMarca = codRem;
	if(@existe <= 0)then
		SELECT "Marca não encontrada no Sistema" AS "Erro";
	else
		DELETE FROM marca WHERE codMarca = codRem;
	END if;
END$

DELIMITER ;