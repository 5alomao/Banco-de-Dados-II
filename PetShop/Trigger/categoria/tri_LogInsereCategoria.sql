DELIMITER $

CREATE TRIGGER tri_LogInsereCategoria
AFTER INSERT 
ON categoria
FOR EACH ROW

BEGIN

	SET @mensagem = CONCAT("Categoria Inserida: ", NEW.nomeCategoria);
	
	INSERT INTO logcategoria VALUES (NULL,"Insert","categoria",NEW.codCategoria,@mensagem, USER(), NOW());

END$

DELIMITER ;
