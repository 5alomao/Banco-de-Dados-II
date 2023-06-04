
CREATE VIEW v_Atividades AS (
SELECT atv.codAtividade AS "Id",
atv.tema AS "Tema", atv.tipo AS "Tipo",
atv.`local` AS "Local",
atv.numVagas AS "Vagas",
atv.vagasDisponiveis AS "Disponiveis",
CONCAT(pa.nome," ",pa.sobrenome) AS "Palestrante",
e.nome AS "Evento" FROM atividade atv
INNER JOIN palestrante pa ON pa.codPalestrante = atv.PALESTRANTE_codPalestrante
INNER JOIN evento e ON e.codEvento = atv.EVENTO_codEvento
);