DELIMITER $

CREATE TRIGGER tri_LogAlteraCliente
AFTER UPDATE
ON cliente
FOR EACH ROW

BEGIN 
	
	IF(OLD.nomeCliente != NEW.nomeCliente) then
		SET @mensagem = CONCAT("Nome Alterado: ",OLD.nomeCliente," para ",NEW.nomeCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.cpfCliente != NEW.cpfCliente) then
		SET @mensagem = CONCAT("CPF Alterado: ",OLD.cpfCliente," para ",NEW.cpfCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.emailCliente != NEW.emailCliente) then
		SET @mensagem = CONCAT("E-mail Alterado: ",OLD.emailCliente," para ",NEW.emailCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.telefoneCliente != NEW.telefoneCliente) then
		SET @mensagem = CONCAT("Telefone Alterado: ",OLD.telefoneCliente," para ",NEW.telefoneCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.enderecoCliente != NEW.enderecoCliente) then
		SET @mensagem = CONCAT("Endereço Alterado: ",OLD.enderecoCliente," para ",NEW.enderecoCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.bairroCliente != NEW.bairroCliente) then
		SET @mensagem = CONCAT("Bairro Alterado: ",OLD.bairroCliente," para ",NEW.bairroCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.cidadeCliente != NEW.cidadeCliente) then
		SET @mensagem = CONCAT("Cidade Alterada: ",OLD.cidadeCliente," para ",NEW.cidadeCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.ufCliente != NEW.ufCliente) then
		SET @mensagem = CONCAT("UF Alterada: ",OLD.ufCliente," para ",NEW.ufCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.dataNascimento != NEW.dataNascimento) then
		SET @mensagem = CONCAT("Nascimento Alterado: ",OLD.dataNascimento," para ",NEW.dataNascimento);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.cepCliente != NEW.cepCliente) then
		SET @mensagem = CONCAT("CEP Alterado: ",OLD.cepCliente," para ",NEW.cepCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
END$
DELIMITER ; 