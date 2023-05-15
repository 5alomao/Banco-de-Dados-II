delimiter $
CREATE PROCEDURE proc_insereCliente (IN novoNome VARCHAR(100), IN novoCpf VARCHAR(45), IN novoTelefone VARCHAR(50), IN novoEmail VARCHAR(150))
BEGIN
	INSERT INTO cliente VALUES (NULL, novoNome, novoCpf, novoEmail, novoTelefone);
END$
delimiter ;
