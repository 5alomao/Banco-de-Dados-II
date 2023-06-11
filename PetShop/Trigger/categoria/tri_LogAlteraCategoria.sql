DELIMITER $

CREATE TRIGGER tri_LogAlteraCategoria
AFTER UPDATE 
ON categoria
FOR EACH ROW

BEGIN

	IF(OLD.nomeCategoria != NEW.nomeCategoria) then
		SET @mensagem = CONCAT("Nome Alterado: ", OLD.nomeCategoria, " para ", NEW.nomeCategoria);
		INSERT INTO logcategoria VALUES (NULL,"Update","categoria",NEW.codCategoria,@mensagem, USER(), NOW());
	END if;

END$

DELIMITER ;
