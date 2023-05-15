delimiter $

CREATE PROCEDURE proc_deletaCliente (IN remCliente int)
BEGIN

	DELETE FROM cliente WHERE codCliente = remCliente;
	
END$

delimiter ;