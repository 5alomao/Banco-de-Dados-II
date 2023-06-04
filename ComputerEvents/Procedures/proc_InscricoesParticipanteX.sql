DELIMITER ;
CREATE PROCEDURE proc_InscricoesParticipanteX(IN codParticipanteBusca INT, IN codEventoBusca INT)

BEGIN
	SELECT atv.tema AS "Tema", atv.`local` AS "Local", atv.tipo AS "Tipo", CONCAT(pa.nome," ",pa.sobrenome) AS "Palestrante"
	FROM inscricao i
	INNER JOIN atividade atv ON atv.EVENTO_codEvento = codEventoBusca
	INNER JOIN palestrante pa ON atv.PALESTRANTE_codPalestrante = pa.codPalestrante
	INNER JOIN participante p ON i.PARTICIPANTE_codParticipante = codParticipanteBusca 
	INNER JOIN evento e ON e.codEvento = codEventoBusca GROUP BY atv.tema;
END$
DELIMITER ;