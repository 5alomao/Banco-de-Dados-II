DELIMITER $

CREATE TRIGGER tri_LogDeletaCategoria
AFTER DELETE 
ON categoria
FOR EACH ROW

BEGIN

	SET @mensagem = CONCAT("Categoria Removida: ", OLD.nomeCategoria);
	
	INSERT INTO logcategoria VALUES (NULL,"Delete","categoria",OLD.codCategoria,@mensagem, USER(), NOW());

END$

DELIMITER ;
