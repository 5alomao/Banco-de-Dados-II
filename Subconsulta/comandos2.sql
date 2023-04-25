SELECT * FROM cargo;
SELECT * FROM cliente;
SELECT * FROM funcionario;
SELECT * FROM pet;
SELECT * FROM categoria;
SELECT * FROM produto;

SELECT CATEGORIA_codCategoria AS CategoriaProd, format(SUM(precoCusto)*quantidadeEstoque,2) AS TotalCusto FROM produto INNER JOIN categoria GROUP BY CategoriaProd;

