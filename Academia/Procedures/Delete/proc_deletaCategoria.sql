delimiter $

CREATE PROCEDURE proc_deletaCategoria (IN remCategoria int)
BEGIN

	DELETE FROM categoria WHERE codCategoria = remCategoria;
	
END$

delimiter ;