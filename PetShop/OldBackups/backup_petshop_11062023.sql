-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.27-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para petshop
DROP DATABASE IF EXISTS `petshop`;
CREATE DATABASE IF NOT EXISTS `petshop` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `petshop`;

-- Copiando estrutura para tabela petshop.cargo
DROP TABLE IF EXISTS `cargo`;
CREATE TABLE IF NOT EXISTS `cargo` (
  `codCargo` int(11) NOT NULL AUTO_INCREMENT,
  `tipoCargo` varchar(200) NOT NULL,
  `salarioCargo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `codCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(100) NOT NULL,
  PRIMARY KEY (`codCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `codCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(200) NOT NULL,
  `enderecoCliente` varchar(100) DEFAULT NULL,
  `bairroCliente` varchar(100) DEFAULT NULL,
  `cidadeCliente` varchar(45) DEFAULT 'Machado',
  `cepCliente` varchar(20) DEFAULT '37750-000',
  `ufCliente` char(2) DEFAULT 'MG',
  `dataNascimento` date DEFAULT NULL,
  `cpfCliente` varchar(20) NOT NULL,
  `emailCliente` varchar(200) DEFAULT NULL,
  `telefoneCliente` varchar(45) NOT NULL,
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.funcionario
DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `codFuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` varchar(200) NOT NULL,
  `cpfFuncionario` varchar(50) NOT NULL,
  `telefoneFuncionario` varchar(100) NOT NULL,
  `dataNascimento` date NOT NULL,
  `enderecoFuncionario` varchar(200) NOT NULL,
  `carteiraTrabalho` varchar(45) NOT NULL,
  `emailFuncionario` varchar(200) DEFAULT NULL,
  `dataDemissao` datetime DEFAULT NULL,
  `dataAdmissao` datetime DEFAULT NULL,
  `CARGO_codCargo` int(11) NOT NULL,
  `ufFuncionario` char(2) DEFAULT 'MG',
  `cepFuncionario` varchar(50) DEFAULT '37750-000',
  `cidadeFuncionario` varchar(150) DEFAULT 'Machado',
  PRIMARY KEY (`codFuncionario`),
  KEY `fk_FUNCIONARIO_CARGO1_idx` (`CARGO_codCargo`),
  CONSTRAINT `fk_FUNCIONARIO_CARGO1` FOREIGN KEY (`CARGO_codCargo`) REFERENCES `cargo` (`codCargo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.item_venda
DROP TABLE IF EXISTS `item_venda`;
CREATE TABLE IF NOT EXISTS `item_venda` (
  `VENDA_codVenda` int(11) NOT NULL,
  `PRODUTO_codProduto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`VENDA_codVenda`,`PRODUTO_codProduto`),
  KEY `fk_PRODUTO_has_VENDA_VENDA1_idx` (`VENDA_codVenda`),
  KEY `fk_PRODUTO_has_VENDA_PRODUTO1_idx` (`PRODUTO_codProduto`),
  CONSTRAINT `fk_PRODUTO_has_VENDA_PRODUTO1` FOREIGN KEY (`PRODUTO_codProduto`) REFERENCES `produto` (`codProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUTO_has_VENDA_VENDA1` FOREIGN KEY (`VENDA_codVenda`) REFERENCES `venda` (`codVenda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logcargo
DROP TABLE IF EXISTS `logcargo`;
CREATE TABLE IF NOT EXISTS `logcargo` (
  `codLogCargo` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codCargo` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogCargo`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logcategoria
DROP TABLE IF EXISTS `logcategoria`;
CREATE TABLE IF NOT EXISTS `logcategoria` (
  `codLogCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codCategoria` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogCategoria`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logcliente
DROP TABLE IF EXISTS `logcliente`;
CREATE TABLE IF NOT EXISTS `logcliente` (
  `codLogCliente` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codCliente` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logfuncionario
DROP TABLE IF EXISTS `logfuncionario`;
CREATE TABLE IF NOT EXISTS `logfuncionario` (
  `codLogFuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codFuncionario` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogFuncionario`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logitemvenda
DROP TABLE IF EXISTS `logitemvenda`;
CREATE TABLE IF NOT EXISTS `logitemvenda` (
  `codLogItemVenda` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codVenda` int(11) NOT NULL,
  `codProduto` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogItemVenda`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logmarca
DROP TABLE IF EXISTS `logmarca`;
CREATE TABLE IF NOT EXISTS `logmarca` (
  `codLogMarca` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codMarca` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogMarca`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logpet
DROP TABLE IF EXISTS `logpet`;
CREATE TABLE IF NOT EXISTS `logpet` (
  `codLogPet` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codPet` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogPet`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logproduto
DROP TABLE IF EXISTS `logproduto`;
CREATE TABLE IF NOT EXISTS `logproduto` (
  `codLogProduto` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codProduto` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogProduto`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logservico
DROP TABLE IF EXISTS `logservico`;
CREATE TABLE IF NOT EXISTS `logservico` (
  `codLogServico` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codServico` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogServico`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logservicovenda
DROP TABLE IF EXISTS `logservicovenda`;
CREATE TABLE IF NOT EXISTS `logservicovenda` (
  `codLogServicoVenda` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codVenda` int(11) NOT NULL,
  `codServico` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogServicoVenda`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.logvenda
DROP TABLE IF EXISTS `logvenda`;
CREATE TABLE IF NOT EXISTS `logvenda` (
  `codLogVenda` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(200) NOT NULL,
  `tabela` varchar(200) NOT NULL,
  `codVenda` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `dataHora` datetime NOT NULL,
  PRIMARY KEY (`codLogVenda`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.marca
DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `codMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nomeMarca` varchar(100) NOT NULL,
  PRIMARY KEY (`codMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.pet
DROP TABLE IF EXISTS `pet`;
CREATE TABLE IF NOT EXISTS `pet` (
  `codPet` int(11) NOT NULL AUTO_INCREMENT,
  `nomePet` varchar(200) NOT NULL,
  `tipoPet` varchar(200) NOT NULL,
  `racaPet` varchar(100) DEFAULT NULL,
  `portePet` varchar(50) DEFAULT NULL,
  `CLIENTE_codCliente` int(11) NOT NULL,
  PRIMARY KEY (`codPet`),
  KEY `fk_PET_CLIENTE1_idx` (`CLIENTE_codCliente`),
  CONSTRAINT `fk_PET_CLIENTE1` FOREIGN KEY (`CLIENTE_codCliente`) REFERENCES `cliente` (`codCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para procedure petshop.proc_alteraPrecoVenda
DROP PROCEDURE IF EXISTS `proc_alteraPrecoVenda`;
DELIMITER //
CREATE PROCEDURE `proc_alteraPrecoVenda`(
	IN `codProdBusca` int,
	IN `precoV` DECIMAL(5,2)
)
BEGIN

	SELECT COUNT(*) INTO @existe FROM produto p WHERE p.codProduto = codProdBusca;
	
	if(@existe = 0) then
		SELECT "Produto não encontrado no Sistema!" AS ERRO;
		else
			update produto set precoVenda = precoV where codProduto = codProdBusca;
			SELECT "Preço de Venda Alterado!" AS "Registro Afetado";
	END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaProduto
DROP PROCEDURE IF EXISTS `proc_deletaProduto`;
DELIMITER //
CREATE PROCEDURE `proc_deletaProduto`(IN codProdBusca int)
BEGIN

	SELECT COUNT(*) INTO @existe FROM produto p WHERE p.codProduto = codProdBusca;
	
	if(@existe = 0) then
		SELECT "Produto não encontrado no Sistema!" AS ERRO;
		else
			delete from produto where codProduto = codProdBusca;
			SELECT "Produto Removido!" AS "Registro Afetado";
	END if;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereCliente
DROP PROCEDURE IF EXISTS `proc_insereCliente`;
DELIMITER //
CREATE PROCEDURE `proc_insereCliente`(in nome varchar(200), in cpf varchar(20), in endereco varchar(100), in bairro varchar (100), in nascimento date, in email varchar(150), in telefone varchar(100))
BEGIN
	insert into cliente(nomeCliente,cpfCliente,enderecoCliente,bairroCliente,dataNascimento,emailCliente,telefoneCliente) values (nome,cpf,endereco,bairro,nascimento,email,telefone);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereFuncionario
DROP PROCEDURE IF EXISTS `proc_insereFuncionario`;
DELIMITER //
CREATE PROCEDURE `proc_insereFuncionario`(in nome varchar(200),in cpf varchar(20), in telefone varchar(100), in nascimento date, in endereco varchar(200), in carteira varchar (45), in emailFun varchar (150), in admissao datetime ,in demissao datetime, in codCarg int)
BEGIN
	insert into funcionario(nomeFuncionario,cpfFuncionario,telefoneFuncionario, dataNascimento, enderecoFuncionario, carteiraTrabalho,emailFuncionario,dataAdmissao,dataDemissao,CARGO_codCargo) values (nome,cpf,telefone,nascimento,endereco,carteira,emailFun,admissao,demissao,codCarg);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereMarca
DROP PROCEDURE IF EXISTS `proc_insereMarca`;
DELIMITER //
CREATE PROCEDURE `proc_insereMarca`(in marca varchar(100))
BEGIN
	insert into marca(nomeMarca) values (marca);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_inserePet
DROP PROCEDURE IF EXISTS `proc_inserePet`;
DELIMITER //
CREATE PROCEDURE `proc_inserePet`(in nome varchar(150), in tipo varchar(100),in raca varchar (100), in porte varchar(20), in codCli int)
BEGIN
	insert into pet(nomePet,tipoPet,racaPet,portePet, CLIENTE_codCliente) values (nome,tipo,raca,porte,codCli);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereProduto
DROP PROCEDURE IF EXISTS `proc_insereProduto`;
DELIMITER //
CREATE PROCEDURE `proc_insereProduto`(
	IN `nome` varchar(200),
	IN `precoC` decimal(10,2),
	IN `precoV` decimal(10,2),
	IN `qntEstoque` decimal(10,2),
	IN `qntMinima` decimal(10,2),
	IN `codCat` int,
	IN `codMar` int
)
BEGIN
	insert into produto(nomeProduto,precoCusto,precoVenda,quantidadeEstoque,quantidadeMinima,CATEGORIA_codCategoria,MARCA_codMarca) 
	values(nome,precoC,precoV,qntEstoque,qntMinima,codCat,codMar);
	SELECT "Produto Inserido" AS "Registro Afetado";
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereServico
DROP PROCEDURE IF EXISTS `proc_insereServico`;
DELIMITER //
CREATE PROCEDURE `proc_insereServico`(in servico varchar (200), in preco decimal(10,2), in codFun int)
BEGIN
	insert into servico(tipoServico,precoVenda,FUNCIONARIO_codFuncionario) values (servico,preco,codFun);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereVenda
DROP PROCEDURE IF EXISTS `proc_insereVenda`;
DELIMITER //
CREATE PROCEDURE `proc_insereVenda`(
	IN `horaData` datetime,
	IN `tipo_venda` ENUM('À vista', 'Pix', 'Cartão Débito', 'Cartão Crédito'),
	IN `codCli` int
)
BEGIN
	insert into venda(dataHora, tipoVenda, CLIENTE_codCliente) values (horaData,tipo_venda, codCli);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_relatorioProduto
DROP PROCEDURE IF EXISTS `proc_relatorioProduto`;
DELIMITER //
CREATE PROCEDURE `proc_relatorioProduto`(
	IN `codProdBusca` int
)
BEGIN

	SELECT COUNT(*) INTO @existe FROM produto p WHERE p.codProduto = codProdBusca;
	
	if(@existe = 0) then
		SELECT "Produto não encontrado no Sistema!" AS ERRO;
		else
			SELECT p.codProduto AS "Código",
				p.nomeProduto AS "Produto",
				cat.nomeCategoria AS "Categoria",
				mar.nomeMarca AS "Marca",
				p.precoVenda AS "Valor"
			FROM produto p
			INNER JOIN categoria cat ON cat.codCategoria = p.CATEGORIA_codCategoria
			INNER JOIN marca mar ON mar.codMarca = p.MARCA_codMarca
			WHERE p.codProduto = codProdBusca;
	END if;
END//
DELIMITER ;

-- Copiando estrutura para tabela petshop.produto
DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `codProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(200) NOT NULL,
  `precoCusto` decimal(10,2) NOT NULL,
  `precoVenda` decimal(10,2) DEFAULT NULL,
  `margemLucro` int(11) NOT NULL,
  `quantidadeEstoque` int(11) NOT NULL,
  `quantidadeMinima` int(11) NOT NULL,
  `CATEGORIA_codCategoria` int(11) NOT NULL,
  `MARCA_codMarca` int(11) NOT NULL,
  PRIMARY KEY (`codProduto`),
  KEY `fk_PRODUTO_CATEGORIA_idx` (`CATEGORIA_codCategoria`),
  KEY `fk_PRODUTO_MARCA1_idx` (`MARCA_codMarca`),
  CONSTRAINT `fk_PRODUTO_CATEGORIA` FOREIGN KEY (`CATEGORIA_codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUTO_MARCA1` FOREIGN KEY (`MARCA_codMarca`) REFERENCES `marca` (`codMarca`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.servico
DROP TABLE IF EXISTS `servico`;
CREATE TABLE IF NOT EXISTS `servico` (
  `codServico` int(11) NOT NULL AUTO_INCREMENT,
  `tipoServico` varchar(150) NOT NULL,
  `FUNCIONARIO_codFuncionario` int(11) NOT NULL,
  `precoVenda` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codServico`),
  KEY `fk_SERVICO_FUNCIONARIO1_idx` (`FUNCIONARIO_codFuncionario`),
  CONSTRAINT `fk_SERVICO_FUNCIONARIO1` FOREIGN KEY (`FUNCIONARIO_codFuncionario`) REFERENCES `funcionario` (`codFuncionario`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.servico_venda
DROP TABLE IF EXISTS `servico_venda`;
CREATE TABLE IF NOT EXISTS `servico_venda` (
  `SERVICO_codServico` int(11) NOT NULL,
  `VENDA_codVenda` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`SERVICO_codServico`,`VENDA_codVenda`),
  KEY `fk_SERVICO_has_VENDA_VENDA1_idx` (`VENDA_codVenda`),
  KEY `fk_SERVICO_has_VENDA_SERVICO1_idx` (`SERVICO_codServico`),
  CONSTRAINT `fk_SERVICO_has_VENDA_SERVICO1` FOREIGN KEY (`SERVICO_codServico`) REFERENCES `servico` (`codServico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SERVICO_has_VENDA_VENDA1` FOREIGN KEY (`VENDA_codVenda`) REFERENCES `venda` (`codVenda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela petshop.venda
DROP TABLE IF EXISTS `venda`;
CREATE TABLE IF NOT EXISTS `venda` (
  `codVenda` int(11) NOT NULL AUTO_INCREMENT,
  `dataHora` datetime NOT NULL,
  `tipoVenda` enum('À vista','Pix','Cartão Débito','Cartão Crédito') NOT NULL,
  `CLIENTE_codCliente` int(11) NOT NULL,
  PRIMARY KEY (`codVenda`),
  KEY `fk_VENDA_CLIENTE1_idx` (`CLIENTE_codCliente`),
  CONSTRAINT `fk_VENDA_CLIENTE1` FOREIGN KEY (`CLIENTE_codCliente`) REFERENCES `cliente` (`codCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para view petshop.v_cargos
DROP VIEW IF EXISTS `v_cargos`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_cargos` (
	`Codigo` INT(11) NOT NULL,
	`Cargo` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Salario` DECIMAL(10,2) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_categorias
DROP VIEW IF EXISTS `v_categorias`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_categorias` (
	`Codigo` INT(11) NOT NULL,
	`Categoria` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_clientes
DROP VIEW IF EXISTS `v_clientes`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_clientes` (
	`Codigo` INT(11) NOT NULL,
	`Nome` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Telefone` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`Email` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`Nascimento` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`UF` CHAR(2) NULL COLLATE 'utf8_general_ci',
	`Cidade` VARCHAR(45) NULL COLLATE 'utf8_general_ci',
	`CEP` VARCHAR(20) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_funcionarios
DROP VIEW IF EXISTS `v_funcionarios`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_funcionarios` (
	`Codigo` INT(11) NOT NULL,
	`Nome` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Cargo` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Telefone` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`Email` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`Nascimento` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`UF` CHAR(2) NULL COLLATE 'utf8_general_ci',
	`Cidade` VARCHAR(150) NULL COLLATE 'utf8_general_ci',
	`CEP` VARCHAR(50) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_marcas
DROP VIEW IF EXISTS `v_marcas`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_marcas` (
	`Codigo` INT(11) NOT NULL,
	`Marca` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_pets
DROP VIEW IF EXISTS `v_pets`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_pets` (
	`Codigo` INT(11) NOT NULL,
	`Nome` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Especie` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Raca` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`Porte` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Dono` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_produtos
DROP VIEW IF EXISTS `v_produtos`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_produtos` (
	`Codigo` INT(11) NOT NULL,
	`Nome` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Categoria` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`Marca` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`Valor` DECIMAL(10,2) NULL,
	`Estoque` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_servicos
DROP VIEW IF EXISTS `v_servicos`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_servicos` (
	`Venda` INT(11) NOT NULL,
	`Cliente` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Servico` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`Quantidade(S)` INT(11) NOT NULL,
	`Forma de Pagamento` ENUM('À vista','Pix','Cartão Débito','Cartão Crédito') NOT NULL COLLATE 'utf8_general_ci',
	`Data` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`Horario` VARCHAR(8) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_vendas
DROP VIEW IF EXISTS `v_vendas`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_vendas` (
	`Venda` INT(11) NOT NULL,
	`Cliente` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Produto` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Quantidade(P)` INT(11) NOT NULL,
	`Forma de Pagamento` ENUM('À vista','Pix','Cartão Débito','Cartão Crédito') NOT NULL COLLATE 'utf8_general_ci',
	`Data` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`Horario` VARCHAR(8) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para trigger petshop.tri_FuncAlteraEstoque
DROP TRIGGER IF EXISTS `tri_FuncAlteraEstoque`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_FuncAlteraEstoque
BEFORE INSERT
ON item_venda
FOR EACH ROW

BEGIN
	
	SET @qtdItem = NEW.quantidade;
	
	UPDATE produto SET quantidadeEstoque = quantidadeEstoque - @qtdItem WHERE codProduto = NEW.PRODUTO_codProduto;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_FuncAlteraPrecoVenda
DROP TRIGGER IF EXISTS `tri_FuncAlteraPrecoVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_FuncAlteraPrecoVenda` BEFORE UPDATE ON `produto` FOR EACH ROW BEGIN
	
	if(NEW.precoCusto != OLD.precoVenda AND NEW.precoCusto > 0) 
		then
			SET NEW.precoVenda = NEW.precoCusto + (NEW.precoCusto * NEW.margemLucro/100);
	END if;
	
	if(NEW.margemLucro != OLD.margemLucro AND NEW.margemLucro >= 0) 
		then
			SET NEW.precoVenda = NEW.precoCusto + (NEW.precoCusto * NEW.margemLucro/100);
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_FuncInserePrecoVenda
DROP TRIGGER IF EXISTS `tri_FuncInserePrecoVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_FuncInserePrecoVenda` BEFORE INSERT ON `produto` FOR EACH ROW BEGIN
	
	if(NEW.margemLucro > 0) 
		then
			SET NEW.precoVenda = NEW.precoCusto + (NEW.precoCusto * NEW.margemLucro/100);
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraCargo
DROP TRIGGER IF EXISTS `tri_LogAlteraCargo`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogAlteraCargo
AFTER UPDATE
ON cargo
FOR EACH ROW

BEGIN	
	
	IF(OLD.tipoCargo != NEW.tipoCargo) then
		SET @mensagem = CONCAT("Tipo Alterado: ",OLD.tipoCargo, " para ",NEW.tipoCargo);
		INSERT INTO logcargo VALUES (NULL,"Update","cargo",NEW.codCargo, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.salarioCargo != NEW.salarioCargo) then
		SET @mensagem = CONCAT("Salario Alterado: ",OLD.salarioCargo, " para ",NEW.salarioCargo);
		INSERT INTO logcargo VALUES (NULL,"Update","cargo",NEW.codCargo, @mensagem, USER(), NOW());
	END if;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraCategoria
DROP TRIGGER IF EXISTS `tri_LogAlteraCategoria`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogAlteraCategoria
AFTER UPDATE 
ON categoria
FOR EACH ROW

BEGIN

	IF(OLD.nomeCategoria != NEW.nomeCategoria) then
		SET @mensagem = CONCAT("Nome Alterado: ", OLD.nomeCategoria, " para ", NEW.nomeCategoria);
		INSERT INTO logcategoria VALUES (NULL,"Update","categoria",NEW.codCategoria,@mensagem, USER(), NOW());
	END if;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraCliente
DROP TRIGGER IF EXISTS `tri_LogAlteraCliente`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogAlteraCliente` AFTER UPDATE ON `cliente` FOR EACH ROW BEGIN 
	
	IF(OLD.nomeCliente != NEW.nomeCliente) then
		SET @mensagem = CONCAT("Nome Alterado: ",OLD.nomeCliente," para ",NEW.nomeCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.cpfCliente != NEW.cpfCliente) then
		SET @mensagem = CONCAT("CPF Alterado: ",OLD.cpfCliente," para ",NEW.cpfCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.emailCliente != NEW.emailCliente) then
		SET @mensagem = CONCAT("E-mail Alterado: ",OLD.emailCliente," para ",NEW.emailCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.telefoneCliente != NEW.telefoneCliente) then
		SET @mensagem = CONCAT("Telefone Alterado: ",OLD.telefoneCliente," para ",NEW.telefoneCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.enderecoCliente != NEW.enderecoCliente) then
		SET @mensagem = CONCAT("Endereço Alterado: ",OLD.enderecoCliente," para ",NEW.enderecoCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.bairroCliente != NEW.bairroCliente) then
		SET @mensagem = CONCAT("Bairro Alterado: ",OLD.bairroCliente," para ",NEW.bairroCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.cidadeCliente != NEW.cidadeCliente) then
		SET @mensagem = CONCAT("Cidade Alterada: ",OLD.cidadeCliente," para ",NEW.cidadeCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.ufCliente != NEW.ufCliente) then
		SET @mensagem = CONCAT("UF Alterada: ",OLD.ufCliente," para ",NEW.ufCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.dataNascimento != NEW.dataNascimento) then
		SET @mensagem = CONCAT("Nascimento Alterado: ",OLD.dataNascimento," para ",NEW.dataNascimento);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.cepCliente != NEW.cepCliente) then
		SET @mensagem = CONCAT("CEP Alterado: ",OLD.cepCliente," para ",NEW.cepCliente);
		INSERT INTO logcliente VALUES (NULL,"Update","cliente",NEW.codCliente,@mensagem,USER(),NOW());
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraFuncionario
DROP TRIGGER IF EXISTS `tri_LogAlteraFuncionario`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogAlteraFuncionario
AFTER UPDATE
ON funcionario
FOR EACH ROW

BEGIN 
	
	IF(OLD.nomeFuncionario != NEW.nomeFuncionario) then
		SET @mensagem = CONCAT("Nome Alterado: ",OLD.nomeFuncionario," para ",NEW.nomeFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.cpfFuncionario != NEW.cpfFuncionario) then
		SET @mensagem = CONCAT("CPF Alterado: ",OLD.cpfFuncionario," para ",NEW.cpfFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.emailFuncionario != NEW.emailFuncionario) then
		SET @mensagem = CONCAT("E-mail Alterado: ",OLD.emailFuncionario," para ",NEW.emailFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.telefoneFuncionario != NEW.telefoneFuncionario) then
		SET @mensagem = CONCAT("Telefone Alterado: ",OLD.telefoneFuncionario," para ",NEW.telefoneFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.enderecoFuncionario != NEW.enderecoFuncionario) then
		SET @mensagem = CONCAT("Endereço Alterado: ",OLD.enderecoFuncionario," para ",NEW.enderecoFuncionario);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.dataNascimento != NEW.dataNascimento) then
		SET @mensagem = CONCAT("Nascimento Alterado: ",OLD.dataNascimento," para ",NEW.dataNascimento);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.carteiraTrabalho != NEW.carteiraTrabalho) then
		SET @mensagem = CONCAT("CTPS Alterada: ",OLD.carteiraTrabalho," para ",NEW.carteiraTrabalho);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.dataAdmissao != NEW.dataAdmissao) then
		SET @mensagem = CONCAT("Admissao Alterada: ",OLD.dataAdmissao," para ",NEW.dataAdmissao);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.dataDemissao != NEW.dataDemissao) then
		SET @mensagem = CONCAT("Demissao Alterada: ",OLD.dataDemissao," para ",NEW.dataDemissao);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
	IF(OLD.CARGO_codCargo != NEW.CARGO_codCargo) then
		SET @mensagem = CONCAT("Cargo Alterado: ",OLD.CARGO_codCargo," para ",NEW.CARGO_codCargo);
		INSERT INTO logfuncionario VALUES (NULL,"Update","funcionario",NEW.codFuncionario,@mensagem,USER(),NOW());
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraItemVenda
DROP TRIGGER IF EXISTS `tri_LogAlteraItemVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogAlteraItemVenda` AFTER UPDATE ON `item_venda` FOR EACH ROW BEGIN
	
	IF(OLD.PRODUTO_codProduto != NEW.PRODUTO_codProduto) then
		SELECT nomeProduto INTO @oldName FROM produto WHERE codProduto = OLD.PRODUTO_codProduto;
		SELECT nomeProduto INTO @newName FROM produto WHERE codProduto = NEW.PRODUTO_codProduto;
		SET @mensagem = CONCAT("Produto Alterado: ",@oldName, " para ", @newName);
		INSERT INTO logitemvenda VALUES(NULL,"Update","item_venda",NEW.VENDA_codVenda, NEW.PRODUTO_codProduto, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.VENDA_codVenda != NEW.VENDA_codVenda) then
		SET @mensagem = CONCAT("Venda Alterada: ",OLD.VENDA_codVenda, " para ", NEW.VENDA_codVenda);
		INSERT INTO logitemvenda VALUES(NULL,"Update","item_venda",NEW.VENDA_codVenda, NEW.PRODUTO_codProduto, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.quantidade != NEW.quantidade) then
	
		IF(OLD.quantidade < NEW.quantidade) then
			UPDATE produto SET quantidadeEstoque = quantidadeEstoque - (NEW.quantidade - OLD.quantidade) WHERE codProduto = NEW.PRODUTO_codProduto;
		
		ELSE IF(OLD.quantidade > NEW.quantidade) then
			UPDATE produto SET quantidadeEstoque = quantidadeEstoque + (OLD.quantidade - NEW.quantidade) WHERE codProduto = NEW.PRODUTO_codProduto;
		
		END if;
		END if;
			
		SET @mensagem = CONCAT("Quantidade Alterada: ",OLD.quantidade, " para ", NEW.quantidade);
		INSERT INTO logitemvenda VALUES(NULL,"Update","item_venda",NEW.VENDA_codVenda, NEW.PRODUTO_codProduto, @mensagem, USER(), NOW());
	
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraMarca
DROP TRIGGER IF EXISTS `tri_LogAlteraMarca`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogAlteraMarca` AFTER UPDATE ON `marca` FOR EACH ROW BEGIN

	IF(OLD.nomeMarca != NEW.nomeMarca) then
		SET @mensagem = CONCAT("Nome Alterado: ", OLD.nomeMarca, " para ",NEW.nomeMarca);
		INSERT INTO logmarca VALUES (NULL, "Update", "marca", NEW.codMarca, @mensagem, USER(), NOW());
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraPet
DROP TRIGGER IF EXISTS `tri_LogAlteraPet`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogAlteraPet
AFTER UPDATE
ON pet
FOR EACH ROW

BEGIN	
	
	IF(OLD.nomePet != NEW.nomePet) then
		SET @mensagem = CONCAT("Nome Alterado: ",OLD.nomePet, " para ", NEW.nomePet);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.tipoPet != NEW.tipoPet) then
		SET @mensagem = CONCAT("Tipo Alterado: ",OLD.tipoPet, " para ", NEW.tipoPet);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.racaPet != NEW.racaPet) then
		SET @mensagem = CONCAT("Raca Alterada: ",OLD.racaPet, " para ", NEW.racaPet);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.portePet != NEW.portePet) then
		SET @mensagem = CONCAT("Porte Alterado: ",OLD.portePet, " para ", NEW.portePet);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.CLIENTE_codCliente != NEW.CLIENTE_codCliente) then
		SET @mensagem = CONCAT("Dono Alterado: ",OLD.CLIENTE_codCliente, " para ", NEW.CLIENTE_codCliente);
		INSERT INTO logpet VALUES(NULL, "Update", "pet", NEW.codPet ,@mensagem, USER(), NOW());
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraProduto
DROP TRIGGER IF EXISTS `tri_LogAlteraProduto`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogAlteraProduto` AFTER UPDATE ON `produto` FOR EACH ROW BEGIN	
	
	IF(OLD.nomeProduto != NEW.nomeProduto) then
		SET @mensagem = CONCAT("Nome Alterado: ",OLD.nomeProduto, " para ", NEW.nomeProduto);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.precoCusto != NEW.precoCusto) then
		SET @mensagem = CONCAT("Custo Alterado: ",OLD.precoCusto, " para ", NEW.precoCusto);
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.margemLucro != NEW.margemLucro) then
		SET @mensagem = CONCAT("Lucro Alterado: ",OLD.margemLucro, "% para ", NEW.margemLucro,"%");
		INSERT INTO logproduto VALUES(NULL, "Update", "produto", NEW.codProduto ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.precoVenda != NEW.precoVenda) then
		SET @mensagem = CONCAT("Valor Alterado: ",OLD.precoVenda, " para ", NEW.precoVenda);
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
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraServico
DROP TRIGGER IF EXISTS `tri_LogAlteraServico`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogAlteraServico
AFTER UPDATE
ON servico
FOR EACH ROW

BEGIN	

	IF(OLD.tipoServico != NEW.tipoServico) then
		SET @mensagem = CONCAT("Tipo Alterado: ",OLD.tipoServico, " para ", NEW.tipoServico);
		INSERT INTO logservico VALUES(NULL, "Update", "servico", NEW.codServico ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.FUNCIONARIO_codFuncionario != NEW.FUNCIONARIO_codFuncionario) then
		SET @mensagem = CONCAT("Funcionario Alterado: ",OLD.FUNCIONARIO_codFuncionario, " para ", NEW.FUNCIONARIO_codFuncionario);
		INSERT INTO logservico VALUES(NULL, "Update", "servico", NEW.codServico ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.precoVenda != NEW.precoVenda) then
		SET @mensagem = CONCAT("Valor Alterado: ",OLD.precoVenda, " para ", NEW.precoVenda);
		INSERT INTO logservico VALUES(NULL, "Update", "servico", NEW.codServico ,@mensagem, USER(), NOW());
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraServicoVenda
DROP TRIGGER IF EXISTS `tri_LogAlteraServicoVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogAlteraServicoVenda
AFTER UPDATE
ON servico_venda
FOR EACH ROW

BEGIN
	
	IF(OLD.SERVICO_codServico != NEW.SERVICO_codServico) then
		SELECT tipoServico INTO @oldServ FROM servico WHERE codServico = OLD.SERVICO_codServico;
		SELECT tipoServico INTO @newServ FROM servico WHERE codServico = NEW.SERVICO_codServico;
		SET @mensagem = CONCAT("Servico Alterado: ", @oldServ, " para ", @newServ);
		INSERT INTO logservicovenda VALUES(NULL,"Update","servico_venda",NEW.VENDA_codVenda, NEW.SERVICO_codServico, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.VENDA_codVenda != NEW.VENDA_codVenda) then
		SET @mensagem = CONCAT("Venda Alterada: ",OLD.VENDA_codVenda, " para ", NEW.VENDA_codVenda);
		INSERT INTO logservicovenda VALUES(NULL,"Update","servico_venda",NEW.VENDA_codVenda, NEW.SERVICO_codServico, @mensagem, USER(), NOW());
	END if;
	
	IF(OLD.quantidade != NEW.quantidade) then
		SET @mensagem = CONCAT("Quantidade Alterada: ",OLD.quantidade, " para ", NEW.quantidade);
		INSERT INTO logservicovenda VALUES(NULL,"Update","servico_venda",NEW.VENDA_codVenda, NEW.SERVICO_codServico, @mensagem, USER(), NOW());
	END if;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraVenda
DROP TRIGGER IF EXISTS `tri_LogAlteraVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogAlteraVenda
AFTER UPDATE
ON venda
FOR EACH ROW

BEGIN	

	IF(OLD.tipoVenda != NEW.tipoVenda) then
		SET @mensagem = CONCAT("Tipo Alterado: ",OLD.tipoVenda, " para ", NEW.tipoVenda);
		INSERT INTO logvenda VALUES(NULL, "Update", "venda", NEW.codVenda ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.dataHora != NEW.dataHora) then
		SET @mensagem = CONCAT("Data Alterada: ",OLD.dataHora, " para ", NEW.dataHora);
		INSERT INTO logvenda VALUES(NULL, "Update", "venda", NEW.codVenda ,@mensagem, USER(), NOW());
	END if;
	
	IF(OLD.CLIENTE_codCliente != NEW.CLIENTE_codCliente) then
		SET @mensagem = CONCAT("Cliente Alterado: ",OLD.CLIENTE_codCliente, " para ", NEW.CLIENTE_codCliente);
		INSERT INTO logvenda VALUES(NULL, "Update", "venda", NEW.codVenda ,@mensagem, USER(), NOW());
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaCargo
DROP TRIGGER IF EXISTS `tri_LogDeletaCargo`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogDeletaCargo
AFTER DELETE
ON cargo
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Cargo Removido: ", OLD.tipoCargo);
	
	INSERT INTO logcargo VALUES (NULL,"Delete","cargo",OLD.codCargo, @mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaCategoria
DROP TRIGGER IF EXISTS `tri_LogDeletaCategoria`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogDeletaCategoria
AFTER DELETE 
ON categoria
FOR EACH ROW

BEGIN

	SET @mensagem = CONCAT("Categoria Removida: ", OLD.nomeCategoria);
	
	INSERT INTO logcategoria VALUES (NULL,"Delete","categoria",OLD.codCategoria,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaCliente
DROP TRIGGER IF EXISTS `tri_LogDeletaCliente`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogDeletaCliente` AFTER DELETE ON `cliente` FOR EACH ROW BEGIN

	SET @mensagem = CONCAT("Cliente Removido: ",OLD.nomeCliente);
	
	INSERT INTO logcliente VALUES (NULL, "Delete", OLD.nomeCliente, "cliente", @mensagem, USER(), NOW());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaFuncionario
DROP TRIGGER IF EXISTS `tri_LogDeletaFuncionario`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogDeletaFuncionario
AFTER DELETE
ON funcionario
FOR EACH ROW

BEGIN 

	SET @mensagem = CONCAT("Funcionario Removido: ",OLD.nomeFuncionario);
	
	INSERT INTO logfuncionario VALUES (NULL, "Delete", "funcionario", OLD.codFuncionario, @mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaItemVenda
DROP TRIGGER IF EXISTS `tri_LogDeletaItemVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogDeletaItemVenda` AFTER DELETE ON `item_venda` FOR EACH ROW BEGIN

	SET @qtdItem = OLD.quantidade;
	UPDATE produto SET quantidadeEstoque = quantidadeEstoque + @qtdItem WHERE codProduto = OLD.PRODUTO_codProduto;
	
	SELECT nomeProduto INTO @nomeProd FROM produto WHERE codProduto = OLD.PRODUTO_codProduto;
	SET @mensagem = CONCAT("ItemVenda Removido: ", @nomeProd);
	INSERT INTO logitemvenda VALUES(NULL,"Delete","item_venda",OLD.VENDA_codVenda, OLD.PRODUTO_codProduto, @mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaMarca
DROP TRIGGER IF EXISTS `tri_LogDeletaMarca`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogDeletaMarca` AFTER DELETE ON `marca` FOR EACH ROW /*
Trigger para inserir na tabela auditoria 
um registro informando que alguma MARCA foi deletada
*/
BEGIN

	SET @mensagem = CONCAT("Marca Removida: ",OLD.nomeMarca);
	
	INSERT INTO logmarca VALUES (NULL,"Delete","marca",OLD.codMarca,@mensagem,USER(),NOW());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaPet
DROP TRIGGER IF EXISTS `tri_LogDeletaPet`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogDeletaPet
AFTER DELETE
ON pet
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Pet Removido: ",OLD.nomePet);
	
	INSERT INTO logpet VALUES(NULL, "Delete", "pet", OLD.codPet ,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaProduto
DROP TRIGGER IF EXISTS `tri_LogDeletaProduto`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogDeletaProduto
AFTER DELETE
ON produto
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Produto Removido: ",OLD.nomeProduto);
	
	INSERT INTO logproduto VALUES(NULL, "Delete", "produto", OLD.codProduto ,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaServico
DROP TRIGGER IF EXISTS `tri_LogDeletaServico`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogDeletaServico
AFTER DELETE
ON servico
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Servico Removido: ",OLD.tipoServico);
	
	INSERT INTO logservico VALUES(NULL, "Delete", "servico", OLD.codServico ,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaServicoVenda
DROP TRIGGER IF EXISTS `tri_LogDeletaServicoVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogDeletaServicoVenda` AFTER DELETE ON `servico_venda` FOR EACH ROW BEGIN
	
	SELECT tipoServico INTO @nomeServ FROM servico WHERE codServico = OLD.SERVICO_codServico;
	SET @mensagem = CONCAT("ServicoVenda Removido: ", @nomeServ);
	INSERT INTO logservicovenda VALUES(NULL,"Delete","servico_venda",OLD.VENDA_codVenda, OLD.SERVICO_codServico, @mensagem, USER(), NOW());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaVenda
DROP TRIGGER IF EXISTS `tri_LogDeletaVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogDeletaVenda
AFTER DELETE
ON venda
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Venda Removida: ",OLD.tipoVenda);
	
	INSERT INTO logvenda VALUES(NULL, "Delete", "venda", OLD.codVenda ,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereCargo
DROP TRIGGER IF EXISTS `tri_LogInsereCargo`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogInsereCargo
AFTER INSERT
ON cargo
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Cargo Inserido: ", NEW.tipoCargo);
	
	INSERT INTO logcargo VALUES (NULL,"Insert","cargo",NEW.codCargo, @mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereCategoria
DROP TRIGGER IF EXISTS `tri_LogInsereCategoria`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogInsereCategoria
AFTER INSERT 
ON categoria
FOR EACH ROW

BEGIN

	SET @mensagem = CONCAT("Categoria Inserida: ", NEW.nomeCategoria);
	
	INSERT INTO logcategoria VALUES (NULL,"Insert","categoria",NEW.codCategoria,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereCliente
DROP TRIGGER IF EXISTS `tri_LogInsereCliente`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogInsereCliente` AFTER INSERT ON `cliente` FOR EACH ROW /*
Trigger para inserir na tabela logcliente 
um registro informando que algum CLIENTE foi inserido
*/

BEGIN 

	SET @mensagem = CONCAT("Cliente Inserido: ",NEW.nomeCliente);
	
	INSERT INTO logcliente VALUES (NULL,"Insert","cliente",NEW.codCliente,@mensagem,USER(),NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereFuncionario
DROP TRIGGER IF EXISTS `tri_LogInsereFuncionario`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogInsereFuncionario
AFTER INSERT
ON funcionario
FOR EACH ROW

BEGIN 

	SET @mensagem = CONCAT("Funcionario Inserido: ",NEW.nomeFuncionario);
	
	INSERT INTO logfuncionario VALUES (NULL, "Insert", "funcionario", NEW.codFuncionario, @mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereItemVenda
DROP TRIGGER IF EXISTS `tri_LogInsereItemVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogInsereItemVenda` AFTER INSERT ON `item_venda` FOR EACH ROW BEGIN

	SELECT nomeProduto INTO @nomeProd FROM produto WHERE codProduto = NEW.PRODUTO_codProduto;
	SET @mensagem = CONCAT("ItemVenda Inserido: ", @nomeProd);
	INSERT INTO logitemvenda VALUES(NULL,"Insert","item_venda",NEW.VENDA_codVenda, NEW.PRODUTO_codProduto, @mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereMarca
DROP TRIGGER IF EXISTS `tri_LogInsereMarca`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogInsereMarca` AFTER INSERT ON `marca` FOR EACH ROW /*
Trigger para inserir na tabela auditoria 
um registro informando que foi adicionado uma nova MARCA
*/
BEGIN

	SET @mensagem = CONCAT("Marca Inserida: ", NEW.nomeMarca);
	
	INSERT INTO logmarca VALUES (NULL,"Insert","marca",NEW.codMarca,@mensagem, USER(), NOW());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInserePet
DROP TRIGGER IF EXISTS `tri_LogInserePet`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogInserePet` AFTER INSERT ON `pet` FOR EACH ROW BEGIN	

	SET @mensagem = CONCAT("Pet Inserido: ",NEW.nomePet);
	
	INSERT INTO logpet VALUES(NULL, "Insert", "pet", NEW.codPet, @mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereProduto
DROP TRIGGER IF EXISTS `tri_LogInsereProduto`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogInsereProduto
AFTER INSERT
ON produto
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Produto Inserido: ",NEW.nomeProduto);
	
	INSERT INTO logproduto VALUES(NULL, "Insert", "produto", NEW.codProduto ,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereServico
DROP TRIGGER IF EXISTS `tri_LogInsereServico`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogInsereServico
AFTER INSERT
ON servico
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Servico Inserido: ",NEW.tipoServico);
	
	INSERT INTO logservico VALUES(NULL, "Insert", "servico", NEW.codServico ,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereServicoVenda
DROP TRIGGER IF EXISTS `tri_LogInsereServicoVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogInsereServicoVenda` AFTER INSERT ON `servico_venda` FOR EACH ROW BEGIN
	
	SELECT tipoServico INTO @nomeServ FROM servico WHERE codServico = NEW.SERVICO_codServico;
	SET @mensagem = CONCAT("ServicoVenda Inserido: ", @nomeServ);
	INSERT INTO logservicovenda VALUES(NULL,"Insert","servico_venda",NEW.VENDA_codVenda, NEW.SERVICO_codServico, @mensagem, USER(), NOW());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereVenda
DROP TRIGGER IF EXISTS `tri_LogInsereVenda`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogInsereVenda
AFTER INSERT
ON venda
FOR EACH ROW

BEGIN	

	SET @mensagem = CONCAT("Venda Inserida: ",NEW.tipoVenda);
	
	INSERT INTO logvenda VALUES(NULL, "Insert", "venda", NEW.codVenda ,@mensagem, USER(), NOW());

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para view petshop.v_cargos
DROP VIEW IF EXISTS `v_cargos`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_cargos`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_cargos` AS (
SELECT codCargo AS "Codigo",
tipoCargo AS "Cargo",
salarioCargo AS "Salario"
FROM cargo
) ;

-- Copiando estrutura para view petshop.v_categorias
DROP VIEW IF EXISTS `v_categorias`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_categorias`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_categorias` AS (
SELECT codCategoria AS "Codigo",
nomeCategoria AS "Categoria"
FROM categoria
) ;

-- Copiando estrutura para view petshop.v_clientes
DROP VIEW IF EXISTS `v_clientes`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_clientes`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_clientes` AS (
SELECT c.codCliente as Codigo,
c.nomeCliente as Nome,
c.telefoneCliente AS Telefone, 
c.emailCliente as Email,
DATE_FORMAT(c.dataNascimento, "%d/%m/%Y") AS "Nascimento",
c.ufCliente AS UF,
c.cidadeCliente as Cidade,
c.cepCliente AS CEP
from cliente c order BY c.nomeCliente ASC) ;

-- Copiando estrutura para view petshop.v_funcionarios
DROP VIEW IF EXISTS `v_funcionarios`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_funcionarios`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_funcionarios` AS (
SELECT f.codFuncionario AS "Codigo",
f.nomeFuncionario AS "Nome",
car.tipoCargo AS "Cargo",
f.telefoneFuncionario AS "Telefone",
f.emailFuncionario AS "Email",
DATE_FORMAT(f.dataNascimento, "%d/%m/%Y") AS "Nascimento",
f.ufFuncionario AS "UF",
f.cidadeFuncionario AS "Cidade",
f.cepFuncionario AS "CEP"
FROM funcionario f
INNER JOIN cargo car ON f.CARGO_codCargo = car.codCargo) ;

-- Copiando estrutura para view petshop.v_marcas
DROP VIEW IF EXISTS `v_marcas`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_marcas`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_marcas` AS (
SELECT codMarca AS "Codigo",
nomeMarca AS "Marca"
FROM marca
) ;

-- Copiando estrutura para view petshop.v_pets
DROP VIEW IF EXISTS `v_pets`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_pets`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_pets` AS (select codPet as Codigo, nomePet as Nome, tipoPet as Especie, racaPet as Raca, portePet as Porte, cliente.nomeCliente as Dono from pet inner join cliente where codCliente = CLIENTE_codCliente) ;

-- Copiando estrutura para view petshop.v_produtos
DROP VIEW IF EXISTS `v_produtos`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_produtos`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_produtos` AS (SELECT p.codProduto as Codigo, 
p.nomeProduto as Nome, 
cat.nomeCategoria AS "Categoria", 
mar.nomeMarca AS "Marca", 
p.precoVenda AS "Valor", 
p.quantidadeEstoque as Estoque 
from produto p
inner join marca mar, 
categoria cat
where mar.codMarca = p.MARCA_codMarca and cat.codCategoria = p.CATEGORIA_codCategoria) ;

-- Copiando estrutura para view petshop.v_servicos
DROP VIEW IF EXISTS `v_servicos`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_servicos`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_servicos` AS (
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
INNER JOIN cliente cli ON cli.codCliente = v.CLIENTE_codCliente) ;

-- Copiando estrutura para view petshop.v_vendas
DROP VIEW IF EXISTS `v_vendas`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_vendas`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_vendas` AS (
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
INNER JOIN cliente cli ON cli.codCliente = v.CLIENTE_codCliente) ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
