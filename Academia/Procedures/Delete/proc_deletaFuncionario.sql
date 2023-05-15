delimiter $

CREATE PROCEDURE proc_deletaFuncionario (IN remFuncionario int)
BEGIN

	DELETE FROM funcionario WHERE codFuncionario = remFuncionario;
	
END$

delimiter ;