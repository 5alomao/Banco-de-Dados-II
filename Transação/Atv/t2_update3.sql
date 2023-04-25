



SELECT * FROM cargo;
BEGIN;
	UPDATE cargo SET salarioCargo = 5000 WHERE codCargo = 8; 
	UPDATE cargo SET salarioCargo = 5000 WHERE codCargo = 11; 
	UPDATE cargo SET salarioCargo = 2500 WHERE codCargo = 15; 
commit;
SELECT * FROM cargo;