Delimiter $
CREATE PROCEDURE proc_PatrocinadoresEventoX(IN codEventoBusca INT)
BEGIN
	SELECT pat.nome AS "Patrocinador(es)" FROM apoio a
	INNER JOIN patrocinador pat ON a.PATROCINADOR_codPatrocinador = pat.codPatrocinador
	INNER JOIN evento e ON a.EVENTO_codEvento = codEventoBusca;
END$
Delimiter ;