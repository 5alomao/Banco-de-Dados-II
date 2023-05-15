CREATE VIEW v_Clientes as 
(SELECT codCliente AS CODIGO, 
nomeCliente AS NOME, 
cpfCliente AS CPF, 
telefoneCliente AS TELEFONE, 
emailCliente AS EMAIL 
FROM cliente);	