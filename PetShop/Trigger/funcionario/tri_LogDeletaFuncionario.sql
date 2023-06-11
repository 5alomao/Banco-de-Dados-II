DELIMITER $

CREATE TRIGGER tri_LogDeletaFuncionario
AFTER DELETE
ON funcionario
FOR EACH ROW

BEGIN 

	SET @mensagem = CONCAT("Funcionario Removido: ",OLD.nomeFuncionario);
	
	INSERT INTO logfuncionario VALUES (NULL, "Delete", "funcionario", OLD.codFuncionario, @mensagem, USER(), NOW());

END$
DELIMITER ; 