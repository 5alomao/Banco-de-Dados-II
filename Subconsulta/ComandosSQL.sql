#Ver Bancos
SHOW DATABASES;

#Usar banco específico
USE agencia3si2023;

#mostrar tabelas
SHOW TABLES;

#Descrever tabela específica
DESC cliente;

#Inserir cliente
INSERT INTO cliente(nome,cpf,rg,dataNascimento) VALUES("Salomao","174.133.196-08","teste","2003-07-15");

#ordenar nome ordem decrescente
select * FROM cliente ORDER by nome DESC;

SELECT * FROM cliente;

DESC conta;

INSERT INTO conta VALUES (NULL,"Salário",800.50,"abc123");

SELECT * FROM conta;

INSERT INTO conta VALUES (NULL,"Poupança",1250.00,"abc123");
INSERT INTO conta VALUES (NULL,"Poupança",3000.00,"abc123");
INSERT INTO conta VALUES (NULL,"Corrente",2000.10,"abc123");

#mostrar valor financeiro em poder da agência
SELECT format(SUM(saldo),2) as Total FROM conta;

#mostrar menor saldo
SELECT min(saldo) AS "Menor Saldo" FROM conta;

#mostrar maior saldo
SELECT max(saldo) AS "Maior Saldo" FROM conta;

#mostrar media saldo
SELECT format(avg(saldo),2) AS "Média dos Saldos" FROM conta;

SELECT * FROM conta ORDER BY saldo DESC LIMIT 1;

#Descrever a tabela de contas vinculadas e inserir dados
DESC contavinculada;

INSERT INTO contavinculada VALUES(1,3,"2023-01-08");
INSERT INTO contavinculada VALUES(2,1,"2022-02-09");
INSERT INTO contavinculada VALUES(3,2,"2022-07-10");
INSERT INTO contavinculada VALUES(3,4,"2023-03-11");

SELECT * FROM conta;
SELECT * FROM cliente;
SELECT * FROM contavinculada;

SELECT cliente.nome AS Nome, conta.idCONTA AS "Conta", conta.saldo AS Saldo, date_Format(dataAbertura,"%d/%m/%Y") AS "Abertura da Conta" FROM contavinculada 
INNER JOIN cliente INNER JOIN conta WHERE CLIENTE_idCLIENTE = idCLIENTE AND CONTA_idCONTA = idCONTA;

UPDATE cliente SET telefone = "99632-5115" WHERE idCliente = 2;

#SubConsulta -> Mostrar contas vinculadas onde o cliente possui o campo telefone não nulo
SELECT * from contavinculada having CLIENTE_idCLIENTE IN(SELECT idCLIENTE FROM cliente WHERE telefone IS NOT NULL);



SELECT * FROM conta;
#Soma tudo
SELECT format(SUM(saldo),2) as Total FROM conta;

#Contador de Contas
SELECT COUNT(*) FROM conta;

#Soma e divide pra fazer media
SELECT SUM(saldo) / COUNT(*) from conta;


#SubConsulta -> Mostrar contas desde que os saldos sejam iguais ou maiores que a média dos saldos
SELECT * from conta saldo > (SELECT AVG(saldo) from conta);

SELECT * FROM cliente;

#Mostra idCliente e a diferença da data atual com a de nascimento chamada de Idade
SELECT idCliente, FLOOR(DATEDIFF(CURDATE(), dataNascimento)/365) AS Idade FROM cliente;

#SubConsulta -> Mostrar as contas vinculadas onde os clientes possuem mais de 45 anos;
SELECT * from contavinculada having CLIENTE_idCliente IN (SELECT idCliente FROM cliente where FLOOR(DATEDIFF(CURDATE(), dataNascimento)/365) > 45);