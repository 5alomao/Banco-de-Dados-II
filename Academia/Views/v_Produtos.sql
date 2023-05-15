CREATE VIEW v_Produtos AS
(SELECT p.codProduto AS CODIGO,
p.nomeProduto AS NOME,
p.valorProduto AS VALOR,
cat.nomeCategoria AS "CATEGORIA",
mar.nomeMarca AS "MARCA",
p.estoque AS ESTOQUE
FROM produto p
INNER JOIN categoria cat ON cat.codCategoria = p.categoria_codCategoria
INNER JOIN marca mar ON mar.codMarca = p.marca_codMarca);