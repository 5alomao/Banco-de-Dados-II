DELIMITER $

CREATE TRIGGER tri_LogInsereFuncionario
AFTER INSERT
ON funcionario
FOR EACH ROW

BEGIN 

	SET @mensagem = CONCAT("Funcionario Inserido: ",NEW.nomeFuncionario);
	
	INSERT INTO logfuncionario VALUES (NULL, "Insert", "funcionario", NEW.codFuncionario, @mensagem, USER(), NOW());

END$
DELIMITER ; 