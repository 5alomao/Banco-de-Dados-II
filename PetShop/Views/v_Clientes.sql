CREATE VIEW v_Clientes AS (
SELECT c.codCliente as Codigo,
c.nomeCliente as Nome,
c.telefoneCliente AS Telefone, 
c.emailCliente as Email,
c.ufCliente AS UF,
c.cidadeCliente as Cidade,
c.cepCliente AS CEP
from cliente c order BY c.nomeCliente ASC);