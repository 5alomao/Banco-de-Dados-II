DELIMITER $

CREATE TRIGGER tri_LogInsereServico
AFTER INSERT
ON servico
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Servico Inserido: ",NEW.tipoServico);
	
	INSERT INTO logservico VALUES(NULL, "Insert", "servico", NEW.codServico ,@mensagem, USER(), NOW());

END$

DELIMITER ;