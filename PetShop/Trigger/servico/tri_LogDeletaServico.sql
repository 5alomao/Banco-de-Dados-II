DELIMITER $

CREATE TRIGGER tri_LogDeletaServico
AFTER DELETE
ON servico
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Servico Removido: ",OLD.tipoServico);
	
	INSERT INTO logservico VALUES(NULL, "Delete", "servico", OLD.codServico ,@mensagem, USER(), NOW());

END$

DELIMITER ;