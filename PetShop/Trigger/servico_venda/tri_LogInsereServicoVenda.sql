DELIMITER $

CREATE TRIGGER tri_LogInsereServicoVenda
AFTER INSERT
ON servico_venda
FOR EACH ROW

BEGIN
	
	SELECT tipoServico INTO @nomeServ FROM servico WHERE codServico = NEW.SERVICO_codServico;
	SET @mensagem = CONCAT("ServicoVenda Inserido: ", @nomeServ);
	INSERT INTO logservicovenda VALUES(NULL,"Insert","servico_venda",NEW.VENDA_codVenda, NEW.SERVICO_codServico, @mensagem, USER(), NOW());
	
END $

DELIMITER ;