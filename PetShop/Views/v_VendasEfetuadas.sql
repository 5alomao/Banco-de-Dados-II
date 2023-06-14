
CREATE VIEW v_VendasEfetuadas AS (
SELECT v.codVenda AS "Venda",
cli.nomeCliente AS "Cliente",
p.nomeProduto AS "Produto",
iv.quantidade AS "Quantidade(P)",
v.tipoVenda AS "Forma de Pagamento",
DATE_FORMAT(v.dataHora, "%d/%m/%Y") AS "Data",
TIME_FORMAT(v.dataHora, "%h:%i:%s") AS "Horario"
FROM venda v
INNER JOIN item_venda iv ON iv.VENDA_codVenda = v.codVenda
INNER JOIN produto p ON p.codProduto = iv.PRODUTO_codProduto 
INNER JOIN cliente cli ON cli.codCliente = v.CLIENTE_codCliente);
