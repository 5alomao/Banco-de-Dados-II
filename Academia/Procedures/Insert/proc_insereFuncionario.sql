delimiter $
CREATE PROCEDURE proc_insereFuncionario (IN novoNome VARCHAR(100), IN novoCpf VARCHAR(45), IN novoTelefone VARCHAR(50), IN novoEmail VARCHAR(150), IN novoCargo int)
BEGIN
	INSERT INTO funcionario VALUES (NULL, novoNome, novoCpf, novoEmail, novoTelefone, novoCargo);
END$
delimiter ;
