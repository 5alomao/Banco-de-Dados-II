
#Transação para colocar os nomes dos clientes em letras MAIÚSCULAS desde que possuam telefone cadastrado

SELECT * FROM cliente;
BEGIN;

	update cliente set nome= upper(nome) WHERE telefone IS NOT NULL;
	
commit;
SELECT * FROM cliente;