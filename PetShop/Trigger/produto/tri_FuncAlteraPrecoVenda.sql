DELIMITER $
CREATE TRIGGER tri_FuncAlteraPrecoVenda
BEFORE UPDATE 
ON produto
FOR EACH ROW
BEGIN
	
	if(NEW.precoCusto != OLD.precoVenda AND NEW.precoCusto > 0) 
		then
			SET NEW.precoVenda = NEW.precoCusto + (NEW.precoCusto * NEW.margemLucro/100);
	END if;
	
	if(NEW.margemLucro != OLD.margemLucro AND NEW.margemLucro >= 0) 
		then
			SET NEW.precoVenda = NEW.precoCusto + (NEW.precoCusto * NEW.margemLucro/100);
	END if;
	
END$
DELIMITER ;