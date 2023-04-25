#Transação que paga vinculo depois apaga conta;

SELECT * FROM contavinculada;
SELECT * FROM conta;
BEGIN;

	DELETE FROM contavinculada WHERE CONTA_idCONTA = 3;
	DELETE FROM conta WHERE idCONTA = 3;
	
commit;
SELECT * FROM contavinculada;
SELECT * FROM conta;