#Formata o nome do novo cliente para letras maiusculas
BEGIN
	SET NEW.nome = UPPER(NEW.nome);
END