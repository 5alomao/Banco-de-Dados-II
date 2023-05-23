
SELECT v.codVenda AS "Código Venda", date_format(v.dataHora,"%d/%m/%Y %H:%i:%s") AS "Data/Hora",
c.nome AS "Cliente",
c.cpf AS "CPF",
v.tipoVenda AS "Tipo Venda"
FROM venda v INNER JOIN cliente c on c.codCliente = v.CLIENTE_codCliente ORDER BY v.codVenda;