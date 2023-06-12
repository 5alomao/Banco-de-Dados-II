DELIMITER $

CREATE TRIGGER tri_LogAlteraServicoVenda
AFTER UPDATE
ON servico_venda
FOR EACH ROW

BEGIN
	
	IF(OLD.SERVICO_codServico != NEW.SERVICO_codServico) then
		SELECT tipoServico INTO @oldServ FROM servico WHERE codServico = OLD.SERVICO_codServico;
		SELECT tipoServico INTO @newServ FROM servico WHERE codServico = NEW.SERVICO_codServico;
		SET @mensagem = CONCAT("Servico Alterado: ", @oldServ, " para ", @newServ);
		INSERT INTO logservicovenda VALUES(NULL,"Update","servico_venda",NEW.VENDA_codVenda, NEW.SERVICO_codServico, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.VENDA_codVenda != NEW.VENDA_codVenda) then
		SET @mensagem = CONCAT("Venda Alterada: ",OLD.VENDA_codVenda, " para ", NEW.VENDA_codVenda);
		INSERT INTO logservicovenda VALUES(NULL,"Update","servico_venda",NEW.VENDA_codVenda, NEW.SERVICO_codServico, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.quantidade != NEW.quantidade) then
		SET @mensagem = CONCAT("Quantidade Alterada: ",OLD.quantidade, " para ", NEW.quantidade);
		INSERT INTO logservicovenda VALUES(NULL,"Update","servico_venda",NEW.VENDA_codVenda, NEW.SERVICO_codServico, @mensagem, USER(), NOW());
	END if;
END $

DELIMITER ;