delimiter $
CREATE PROCEDURE proc_insereMarca (IN novaMarca VARCHAR(100))
BEGIN
	INSERT INTO marca VALUES (NULL, novaMarca);
END$
delimiter ;
