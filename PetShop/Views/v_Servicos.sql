
CREATE VIEW v_servicos AS (

SELECT s.codServico AS "Codigo",
s.tipoServico AS "Servico",
f.nomeFuncionario AS "Responsavel",
s.precoVenda AS "Valor (R$)"
FROM servico s
INNER JOIN funcionario f ON f.codFuncionario = s.FUNCIONARIO_codFuncionario

);