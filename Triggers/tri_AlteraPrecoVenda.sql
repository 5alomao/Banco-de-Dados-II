DELIMITER $
CREATE TRIGGER tri_AlteraPrecoVenda
BEFORE UPDATE 
ON produto
FOR EACH ROW
BEGIN
	
	if(NEW.margemLucro != OLD.margemLucro) 
		then
			SET NEW.precoVenda = NEW.precoCusto + (NEW.precoCusto * NEW.margemLucro/100);
	END if;
	
END$
DELIMITER ;