#Transação para Inserir 3 clientes
SELECT * FROM cliente;
BEGIN;

	INSERT INTO cliente VALUES(NULL,"Messi Lionel","123-321-123-32","MG 123","1992-07-15","3295-1111");
	INSERT INTO cliente VALUES(NULL,"Alex Telles","111-111-111-11","MG 111","1995-02-11","3295-3213");
	INSERT INTO cliente VALUES(NULL,"Neymar Junior","123-331-333-33","MG 333","1991-03-20","3295-1515");
	
COMMIT;
SELECT * FROM cliente;