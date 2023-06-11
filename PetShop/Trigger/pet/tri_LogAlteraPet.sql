DELIMITER $

CREATE TRIGGER tri_LogAlteraPet
AFTER UPDATE
ON pet
FOR EACH ROW

BEGIN	
	
	IF(OLD.nomePet != NEW.nomePet) then
		SET @mensagem = CONCAT("Nome Alterado: ",OLD.nomePet, " para ", NEW.nomePet);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.tipoPet != NEW.tipoPet) then
		SET @mensagem = CONCAT("Tipo Alterado: ",OLD.tipoPet, " para ", NEW.tipoPet);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.racaPet != NEW.racaPet) then
		SET @mensagem = CONCAT("Raca Alterada: ",OLD.racaPet, " para ", NEW.racaPet);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.portePet != NEW.portePet) then
		SET @mensagem = CONCAT("Porte Alterado: ",OLD.portePet, " para ", NEW.portePet);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.CLIENTE_codCliente != NEW.CLIENTE_codCliente) then
		SET @mensagem = CONCAT("Dono Alterado: ",OLD.CLIENTE_codCliente, " para ", NEW.CLIENTE_codCliente);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
END$

DELIMITER ;