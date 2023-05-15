delimiter $

CREATE PROCEDURE proc_deletaCargo (IN remCargo int)
BEGIN

	DELETE FROM cargo WHERE codCargo = remCargo;
	
END$

delimiter ;