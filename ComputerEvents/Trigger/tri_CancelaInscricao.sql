DELIMITER $

CREATE TRIGGER tri_CancelaInscricao
AFTER DELETE
ON inscricao
FOR EACH ROW
BEGIN

	UPDATE atividade SET vagasDisponiveis = vagasDisponiveis + 1 WHERE codAtividade = OLD.ATIVIDADE_codAtividade;

END$
DELIMITER ;