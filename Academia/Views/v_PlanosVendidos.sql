CREATE VIEW v_PlanosVendidos AS
(SELECT vpla.codVendaPlano AS CODIGO,
cli.nomeCliente AS "CLIENTE",
pla.tipoPlano AS "PLANO",
vpla.formaPagamento AS "FORMA DE PAGAMENTO",
date_format(vpla.dataHora,'%d/%m/%Y') as "DATA",
date_format(vpla.dataHora,'%Hh %Imin %Ssec') AS HORARIO,
fun.nomeFuncionario AS "FUNCIONARIO"
FROM venda_plano vpla
INNER JOIN cliente cli ON cli.codCliente = vpla.cliente_codCliente
INNER JOIN funcionario fun ON fun.codFuncionario = vpla.funcionario_codFuncionario
INNER JOIN plano pla ON pla.codPlano = vpla.plano_codPlano);