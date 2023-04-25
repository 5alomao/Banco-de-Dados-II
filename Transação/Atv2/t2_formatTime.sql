SELECT * FROM conta;

BEGIN;
	UPDATE conta SET senha = CONCAT(time_format(CURRENT_TIME(),"%H%i%s"),"PO") where tipo = "Poupança";
commit;

SELECT * FROM conta;

