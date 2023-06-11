DELIMITER $

CREATE TRIGGER tri_LogAlteraProduto
AFTER UPDATE
ON produto
FOR EACH ROW

BEGIN	
	
	IF(OLD.nomeProduto != NEW.nomeProduto) then
		SET @mensagem = CONCAT("Nome Alterado: ",OLD.nomeProduto, " para ", NEW.nomeProduto);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.precoCusto != NEW.precoCusto) then
		SET @mensagem = CONCAT("Custo Alterado: ",OLD.precoCusto, " para ", NEW.precoCusto);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.precoVenda != NEW.precoVenda) then
		SET @mensagem = CONCAT("Valor Alterado: ",OLD.precoVenda, " para ", NEW.precoVenda);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.margemLucro != NEW.margemLucro) then
		SET @mensagem = CONCAT("Lucro Alterado: ",OLD.margemLucro, "% para ", NEW.margemLucro,"%");
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.quantidadeEstoque != NEW.quantidadeEstoque) then
		SET @mensagem = CONCAT("Estoque Alterado: ",OLD.quantidadeEstoque, " para ", NEW.quantidadeEstoque);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.quantidadeMinima != NEW.quantidadeMinima) then
		SET @mensagem = CONCAT("Minimo Alterado: ",OLD.quantidadeMinima, " para ", NEW.quantidadeMinima);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.CATEGORIA_codCategoria != NEW.CATEGORIA_codCategoria) then
		SET @mensagem = CONCAT("Categoria Alterada: ",OLD.CATEGORIA_codCategoria, " para ", NEW.CATEGORIA_codCategoria);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.MARCA_codMarca != NEW.MARCA_codMarca) then
		SET @mensagem = CONCAT("Marca Alterada: ",OLD.MARCA_codMarca, " para ", NEW.MARCA_codMarca);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
END$

DELIMITER ;