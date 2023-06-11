CREATE VIEW v_Produtos AS 
(SELECT p.codProduto as Codigo, 
p.nomeProduto as Nome, 
cat.nomeCategoria AS "Categoria", 
mar.nomeMarca AS "Marca", 
p.precoVenda AS "Valor", 
p.quantidadeEstoque as Estoque 
from produto p
inner join marca mar, 
categoria cat
where mar.codMarca = p.MARCA_codMarca and cat.codCategoria = p.CATEGORIA_codCategoria);