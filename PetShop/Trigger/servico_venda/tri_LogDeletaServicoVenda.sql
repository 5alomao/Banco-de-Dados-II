DELIMITER $

CREATE TRIGGER tri_LogDeletaServicoVenda
AFTER DELETE
ON servico_venda
FOR EACH ROW

BEGIN
	
	SELECT tipoServico INTO @nomeServ FROM servico WHERE codServico = OLD.SERVICO_codServico;
	SET @mensagem = CONCAT("ServicoVenda Removido: ", @nomeServ);
	INSERT INTO logservicovenda VALUES(NULL,"Delete","servico_venda",OLD.VENDA_codVenda, OLD.SERVICO_codServico, @mensagem, USER(), NOW());
	
END $

DELIMITER ;