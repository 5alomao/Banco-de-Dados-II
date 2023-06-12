
CREATE VIEW v_Servicos AS (
SELECT v.codVenda AS "Venda",
cli.nomeCliente AS "Cliente",
s.tipoServico AS "Servico",
sv.quantidade AS "Quantidade(S)",
v.tipoVenda AS "Forma de Pagamento",
DATE_FORMAT(v.dataHora, "%d/%m/%Y") AS "Data",
TIME_FORMAT(v.dataHora, "%h:%i:%s") AS "Horario"
FROM venda v
INNER JOIN servico_venda sv ON sv.VENDA_codVenda = v.codVenda
INNER JOIN servico s ON s.codServico = sv.SERVICO_codServico
INNER JOIN cliente cli ON cli.codCliente = v.CLIENTE_codCliente);
