delimiter $
CREATE PROCEDURE proc_insereCargo (IN novoCargo VARCHAR(100), IN novoSalario DECIMAL(10,2))
BEGIN
	INSERT INTO cargo VALUES (NULL, novoCargo, novoSalario);
END$
delimiter ;
