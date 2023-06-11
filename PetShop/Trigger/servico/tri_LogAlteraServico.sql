DELIMITER $

CREATE TRIGGER tri_LogAlteraServico
AFTER UPDATE
ON servico
FOR EACH ROW

BEGIN	

	IF(OLD.tipoServico != NEW.tipoServico) then
		SET @mensagem = CONCAT("Tipo Alterado: ",OLD.tipoServico, " para ", NEW.tipoServico);
		INSERT INTO logservico VALUES(NULL, "Update", "servico", NEW.codServico ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.FUNCIONARIO_codFuncionario != NEW.FUNCIONARIO_codFuncionario) then
		SET @mensagem = CONCAT("Funcionario Alterado: ",OLD.FUNCIONARIO_codFuncionario, " para ", NEW.FUNCIONARIO_codFuncionario);
		INSERT INTO logservico VALUES(NULL, "Update", "servico", NEW.codServico ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.precoVenda != NEW.precoVenda) then
		SET @mensagem = CONCAT("Valor Alterado: ",OLD.precoVenda, " para ", NEW.precoVenda);
		INSERT INTO logservico VALUES(NULL, "Update", "servico", NEW.codServico ,@mensagem, USER(), NOW());
	END if;
	
END$

DELIMITER ;