delimiter $

CREATE PROCEDURE proc_deletaMarca (IN remMarca int)
BEGIN

	DELETE FROM marca WHERE codMarca = remMarca;
	
END$

delimiter ;