#Criação de uma tabela virtual - VIEW para ordenar os clientes em ordem alfabética crescente
CREATE VIEW v_ClientesOrdemCrescrente AS (SELECT nome, cpf FROM cliente ORDER BY nome); 

SHOW TABLES;

SELECT * FROM v_clientesordemcrescrente;

CREATE VIEW v_TotalFinanceiroBanco AS (SELECT SUM(saldo) AS TotalSaldo FROM conta); 

SELECT * FROM conta;
SELECT SUM(saldo) AS TotalSaldo FROM conta;

SELECT * FROM v_TotalFinanceiroBanco;

#Comando para mostrar nome do cliente, o tipo da conta, saldo
SELECT * FROM contavinculada;
SELECT cli.nome,con.tipo,con.saldo FROM cliente AS cli INNER JOIN conta AS con INNER join contavinculada AS cv where cv.CLIENTE_idCLIENTE = cli.idCLIENTE AND cv.CONTA_idCONTA = con.idCONTA;