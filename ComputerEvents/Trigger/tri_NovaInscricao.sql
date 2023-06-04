DELIMITER $

CREATE TRIGGER tri_NovaInscricao
BEFORE INSERT
ON inscricao
FOR EACH ROW
BEGIN

	UPDATE atividade SET vagasDisponiveis = vagasDisponiveis - 1 WHERE codAtividade = NEW.ATIVIDADE_codAtividade;

END$
DELIMITER ;