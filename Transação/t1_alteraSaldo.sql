

#Transação para atualização dos saldos das contas do tipo Poupança em 10%

SELECT * FROM conta;
BEGIN;

	UPDATE conta set saldo = saldo*1.1 WHERE tipo = "Poupança";
	
COMMIT;  
SELECT * FROM conta;
