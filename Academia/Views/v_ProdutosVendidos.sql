CREATE VIEW  AS
(SELECT vprod.codVendaProduto AS CODIGO,
cli.nomeCliente AS "CLIENTE",
prod.nomeProduto AS "PRODUTO",
iven.quantidade AS QUANTIDADE,
vprod.formaPagamento AS "FORMA DE PAGAMENTO",
date_format(vprod.dataHora,'%d/%m/%Y') as "DATA",
date_format(vprod.dataHora,'%Hh %Imin %Ssec') AS HORARIO,
fun.nomeFuncionario AS "FUNCIONARIO"
FROM venda_produto vprod
INNER JOIN item_venda iven ON iven.venda_codVendaProduto = vprod.codVendaProduto
INNER JOIN produto prod ON prod.codProduto = iven.produto_codProduto
INNER JOIN cliente cli ON cli.codCliente = vprod.cliente_codCliente
INNER JOIN funcionario fun ON fun.codFuncionario = vprod.funcionario_codFuncionario);

