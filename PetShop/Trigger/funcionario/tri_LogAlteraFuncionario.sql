DELIMITER $

CREATE TRIGGER tri_LogAlteraFuncionario
AFTER UPDATE
ON funcionario
FOR EACH ROW

BEGIN 
	
	IF(OLD.nomeFuncionario != NEW.nomeFuncionario) then
		SET @mensagem = CONCAT("Nome Alterado: ",OLD.nomeFuncionario," para ",NEW.nomeFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.cpfFuncionario != NEW.cpfFuncionario) then
		SET @mensagem = CONCAT("CPF Alterado: ",OLD.cpfFuncionario," para ",NEW.cpfFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.emailFuncionario != NEW.emailFuncionario) then
		SET @mensagem = CONCAT("E-mail Alterado: ",OLD.emailFuncionario," para ",NEW.emailFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.telefoneFuncionario != NEW.telefoneFuncionario) then
		SET @mensagem = CONCAT("Telefone Alterado: ",OLD.telefoneFuncionario," para ",NEW.telefoneFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.enderecoFuncionario != NEW.enderecoFuncionario) then
		SET @mensagem = CONCAT("Endereço Alterado: ",OLD.enderecoFuncionario," para ",NEW.enderecoFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.dataNascimento != NEW.dataNascimento) then
		SET @mensagem = CONCAT("Nascimento Alterado: ",OLD.dataNascimento," para ",NEW.dataNascimento);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.carteiraTrabalho != NEW.carteiraTrabalho) then
		SET @mensagem = CONCAT("CTPS Alterada: ",OLD.carteiraTrabalho," para ",NEW.carteiraTrabalho);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.dataAdmissao != NEW.dataAdmissao) then
		SET @mensagem = CONCAT("Admissao Alterada: ",OLD.dataAdmissao," para ",NEW.dataAdmissao);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.dataDemissao != NEW.dataDemissao) then
		SET @mensagem = CONCAT("Demissao Alterada: ",OLD.dataDemissao," para ",NEW.dataDemissao);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.CARGO_codCargo != NEW.CARGO_codCargo) then
		SET @mensagem = CONCAT("Cargo Alterado: ",OLD.CARGO_codCargo," para ",NEW.CARGO_codCargo);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
END$
DELIMITER ; 