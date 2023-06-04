CREATE VIEW v_Participantes AS (SELECT
p.codParticipante AS "Id",
CONCAT(p.nome," ",p.sobrenome) AS "Nome",
p.email AS "E-mail",
t.descricao AS "Turma"
FROM participante p
INNER JOIN turma t ON p.TURMA_codTurma = t.codTurma
);
