DELIMITER $

CREATE TRIGGER tri_VagasDisponiveis
BEFORE INSERT
ON atividade
FOR EACH ROW
BEGIN

	SET NEW.vagasDisponiveis = NEW.numVagas;

END$

DELIMITER ;