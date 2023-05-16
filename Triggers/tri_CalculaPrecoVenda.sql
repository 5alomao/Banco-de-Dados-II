DELIMITER $
CREATE TRIGGER tri_CalculaPrecoVenda
BEFORE INSERT 
ON produto
FOR EACH ROW
BEGIN
	
	if(NEW.margemLucro > 0) 
		then
			SET NEW.precoVenda = NEW.precoCusto + (NEW.precoCusto * margemLucro/100);
	END if;
	
END$
DELIMITER ;