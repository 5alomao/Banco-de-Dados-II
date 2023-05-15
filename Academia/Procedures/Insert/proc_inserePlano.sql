delimiter $
CREATE PROCEDURE proc_inserePlano (IN novoTipo VARCHAR(100), IN novoValor DECIMAL(10,2))
BEGIN
	INSERT INTO plano VALUES (NULL, novoTipo, novoValor);
END$
delimiter ;