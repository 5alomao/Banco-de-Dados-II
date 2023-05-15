delimiter $
CREATE PROCEDURE proc_insereCategoria (IN novaCategoria VARCHAR(100))
BEGIN
	INSERT INTO categoria VALUES (NULL, novaCategoria);
END$
delimiter ;