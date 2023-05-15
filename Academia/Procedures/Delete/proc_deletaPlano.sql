delimiter $

CREATE PROCEDURE proc_deletaPlano (IN remPlano int)
BEGIN

	DELETE FROM plano WHERE codPlano = remPlano;
	
END$

delimiter ;