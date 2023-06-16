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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.cargo: ~8 rows (aproximadamente)
INSERT INTO `cargo` (`codCargo`, `tipoCargo`, `salarioCargo`) VALUES
	(1, 'Gerente', 7000.00),
	(2, 'Atendente', 2500.00),
	(3, 'Tosador(a)', 3500.00),
	(4, 'Vendedor', 3000.00),
	(5, 'Motorista', 3000.00),
	(6, 'Banhista', 3500.00),
	(7, 'Veterinário', 5000.00),
	(8, 'Auxiliar de Limpeza', 2200.00);

-- Copiando estrutura para tabela petshop.categoria
DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `codCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(100) NOT NULL,
  PRIMARY KEY (`codCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.categoria: ~8 rows (aproximadamente)
INSERT INTO `categoria` (`codCategoria`, `nomeCategoria`) VALUES
	(1, 'Rações'),
	(2, 'Enlatados'),
	(3, 'Sachês'),
	(4, 'Acessórios'),
	(5, 'Higiene e Limpeza'),
	(6, 'Saúde'),
	(7, 'Treinamento'),
	(8, 'Transporte'),
	(9, 'Outros');

-- Copiando estrutura para tabela petshop.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `codCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(200) NOT NULL,
  `cpfCliente` varchar(20) NOT NULL,
  `telefoneCliente` varchar(45) NOT NULL,
  `emailCliente` varchar(200) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `enderecoCliente` varchar(100) DEFAULT NULL,
  `bairroCliente` varchar(100) DEFAULT NULL,
  `cidadeCliente` varchar(45) DEFAULT 'Machado',
  `cepCliente` varchar(20) DEFAULT '37750-000',
  `ufCliente` char(2) DEFAULT 'MG',
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.cliente: ~9 rows (aproximadamente)
INSERT INTO `cliente` (`codCliente`, `nomeCliente`, `cpfCliente`, `telefoneCliente`, `emailCliente`, `dataNascimento`, `enderecoCliente`, `bairroCliente`, `cidadeCliente`, `cepCliente`, `ufCliente`) VALUES
	(1, 'Ana Carolina Santos', '111.111.111-11', '(35)99876-5444', 'ana.carolina@example.com', '1980-02-10', 'Centro', 'Centro', 'Machado', '37750-000', 'MG'),
	(2, 'Felipe Oliveira Pereira', '111.111.111-12', '(35)98765-4333', 'felipe.oliveira@example.com', '1992-07-05', 'Rua São Marcos', 'Jardim das Oliveiras', 'Machado', '37750-000', 'MG'),
	(3, 'Juliana Santos Rodrigues', '111.111.111-13', '(35)97654-3222', 'juliana.santos@example.com', '1985-09-15', 'Rua São Paulo', 'Jardim das Oliveiras', 'Machado', '37750-000', 'MG'),
	(4, 'Gabriel Henrique Silva', '111.111.111-14', '(35)96543-2111', 'gabriel.costa@example.com', '1998-12-20', 'Rua São Pedro', 'Jardim das Oliveiras', 'Machado', '37750-000', 'MG'),
	(5, 'Marcela Rodrigues Alencar', '111.111.111-15', '(35)95432-1099', 'marcela@example.com', '1988-03-25', 'Rua São Lucas', 'Jardim das Oliveiras', 'Machado', '37750-000', 'MG'),
	(6, 'Rafael Lima Almeida', '111.111.111-16', '(35)94321-0999', 'rafael.lima@example.com', '1994-08-12', 'Centro', 'Centro', 'Machado', '37750-000', 'MG'),
	(7, 'Beatriz Moraes Siqueira', '111.111.111-17', '(35)93210-9886', 'beatriz@example.com', '1982-01-30', 'Rua São Sebastião', 'Jardim das Oliveiras', 'Machado', '37750-000', 'MG'),
	(8, 'Lucas Gomes Ferreira', '111.111.111-18', '(35)92109-8766', 'lucas.gomes@example.com', '1993-06-08', 'Rua São Lucas', 'Jardim das Oliveiras', 'Machado', '37750-000', 'MG'),
	(9, 'Isaac Silva Ferreira', '111.111.111-19', '(35)97322-3311', 'isaac@example.com', '2000-10-15', 'Rua São Lucas', 'Jardim das Oliveiras', 'Machado', '37750-000', 'MG');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.funcionario: ~8 rows (aproximadamente)
INSERT INTO `funcionario` (`codFuncionario`, `nomeFuncionario`, `cpfFuncionario`, `telefoneFuncionario`, `dataNascimento`, `enderecoFuncionario`, `carteiraTrabalho`, `emailFuncionario`, `dataDemissao`, `dataAdmissao`, `CARGO_codCargo`, `ufFuncionario`, `cepFuncionario`, `cidadeFuncionario`) VALUES
	(1, 'Salomão Ferreira Junior', '123.321.123-12', '(35)99769-5915', '2003-07-15', 'Rua São Lucas', '1233211/2312', 'salomao.junior2k22@gmail.com', NULL, '2023-06-12 15:11:01', 1, 'MG', '37750-000', 'Machado'),
	(2, 'Lucas Oliveira Souza', '234.567.890-21', '(35)98765-4321', '1992-09-20', 'Centro', '2345678/9021', 'lucas.souza@example.com', NULL, '2023-06-12 15:19:20', 2, 'MG', '37750-000', 'Machado'),
	(3, 'Amanda Santos Rodrigues', '345.678.901-32', '(35)97654-3210', '1985-07-05', 'Rua dos Pinheiros', '3456789/0132', 'amanda.santos@example.com', NULL, '2023-06-12 15:23:43', 3, 'MG', '37750-000', 'Machado'),
	(4, 'Rafael Costa Oliveira', '456.789.012-43', '(35)96543-2109', '1990-11-15', 'Rua Sabiá', '4567890/1243', 'rafael.oliveira@example.com', NULL, '2023-06-12 15:23:55', 4, 'MG', '37750-000', 'Machado'),
	(5, 'Bruno Rodrigues Costa', '567.890.123-54', '(35)95432-1098', '1988-03-25', 'Rua das Orquídeas', '5678901/2354', 'bruno.costa@example.com', NULL, '2023-06-12 15:27:57', 5, 'MG', '37750-000', 'Machado'),
	(6, 'Isabella Oliveira Rodrigues', '678.901.234-65', '(35)94321-0987', '1994-08-12', 'Rua da Piedade', '6789012/3465', 'isabella.oliveira@example.com', NULL, '2023-06-12 15:28:11', 6, 'MG', '37750-000', 'Machado'),
	(7, 'Pedro Lima Santos', '789.012.345-76', '(35)93210-9876', '1982-01-30', 'Centro', '7890123/4576', 'pedro.santos@example.com', NULL, '2023-06-12 15:31:10', 7, 'MG', '37750-000', 'Machado'),
	(8, 'Maria dos Santos Silva', '890.123.456-87', '(35)92109-8765', '1977-06-08', 'Rua Pelicano', '8901234/5687', 'maria.silva@example.com', NULL, '2023-06-12 15:32:38', 8, 'MG', '37750-000', 'Machado');

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

-- Copiando dados para a tabela petshop.item_venda: ~11 rows (aproximadamente)
INSERT INTO `item_venda` (`VENDA_codVenda`, `PRODUTO_codProduto`, `quantidade`) VALUES
	(1, 13, 5),
	(2, 1, 1),
	(2, 8, 1),
	(2, 10, 1),
	(3, 7, 1),
	(4, 4, 2),
	(5, 1, 2),
	(6, 2, 4),
	(6, 5, 1),
	(6, 11, 1),
	(7, 3, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logcargo: ~8 rows (aproximadamente)
INSERT INTO `logcargo` (`codLogCargo`, `acao`, `tabela`, `codCargo`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'cargo', 1, 'Cargo Inserido: Gerente', 'root@localhost', '2023-06-12 14:22:01'),
	(2, 'Insert', 'cargo', 2, 'Cargo Inserido: Atendente', 'root@localhost', '2023-06-12 14:22:59'),
	(3, 'Insert', 'cargo', 3, 'Cargo Inserido: Tosador(a)', 'root@localhost', '2023-06-12 14:23:13'),
	(4, 'Insert', 'cargo', 4, 'Cargo Inserido: Vendedor', 'root@localhost', '2023-06-12 14:23:36'),
	(5, 'Insert', 'cargo', 5, 'Cargo Inserido: Motorista', 'root@localhost', '2023-06-12 14:25:07'),
	(6, 'Insert', 'cargo', 6, 'Cargo Inserido: Banhista', 'root@localhost', '2023-06-12 14:26:43'),
	(7, 'Insert', 'cargo', 7, 'Cargo Inserido: Veterinário', 'root@localhost', '2023-06-12 14:27:27'),
	(8, 'Insert', 'cargo', 8, 'Cargo Inserido: Auxiliar de Limpeza', 'root@localhost', '2023-06-12 14:29:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logcategoria: ~9 rows (aproximadamente)
INSERT INTO `logcategoria` (`codLogCategoria`, `acao`, `tabela`, `codCategoria`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'categoria', 1, 'Categoria Inserida: Rações', 'root@localhost', '2023-06-12 14:30:59'),
	(2, 'Insert', 'categoria', 2, 'Categoria Inserida: Enlatados', 'root@localhost', '2023-06-12 14:31:25'),
	(3, 'Insert', 'categoria', 3, 'Categoria Inserida: Sachês', 'root@localhost', '2023-06-12 14:31:33'),
	(4, 'Insert', 'categoria', 4, 'Categoria Inserida: Acessórios', 'root@localhost', '2023-06-12 14:31:59'),
	(5, 'Insert', 'categoria', 5, 'Categoria Inserida: Higiene e Limpeza', 'root@localhost', '2023-06-12 14:32:42'),
	(6, 'Insert', 'categoria', 6, 'Categoria Inserida: Saúde', 'root@localhost', '2023-06-12 14:33:16'),
	(7, 'Insert', 'categoria', 7, 'Categoria Inserida: Treinamento', 'root@localhost', '2023-06-12 14:33:35'),
	(8, 'Insert', 'categoria', 8, 'Categoria Inserida: Transporte', 'root@localhost', '2023-06-12 14:33:45'),
	(9, 'Insert', 'categoria', 9, 'Categoria Inserida: Outros', 'root@localhost', '2023-06-12 14:34:08');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logcliente: ~8 rows (aproximadamente)
INSERT INTO `logcliente` (`codLogCliente`, `acao`, `tabela`, `codCliente`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'cliente', 1, 'Cliente Inserido: Ana Carolina Santos', 'root@localhost', '2023-06-13 13:19:38'),
	(2, 'Insert', 'cliente', 2, 'Cliente Inserido: Felipe Oliveira Pereira', 'root@localhost', '2023-06-13 13:23:22'),
	(3, 'Insert', 'cliente', 3, 'Cliente Inserido: Juliana Santos Rodrigues', 'root@localhost', '2023-06-13 13:24:47'),
	(4, 'Insert', 'cliente', 4, 'Cliente Inserido: Gabriel Henrique Silva', 'root@localhost', '2023-06-13 13:26:28'),
	(5, 'Insert', 'cliente', 5, 'Cliente Inserido: Marcela Rodrigues Alencar', 'root@localhost', '2023-06-13 13:28:43'),
	(6, 'Insert', 'cliente', 6, 'Cliente Inserido: Rafael Lima Almeida', 'root@localhost', '2023-06-13 13:29:38'),
	(7, 'Insert', 'cliente', 7, 'Cliente Inserido: Beatriz Moraes Siqueira', 'root@localhost', '2023-06-13 13:31:21'),
	(8, 'Insert', 'cliente', 8, 'Cliente Inserido: Lucas Gomes Ferreira', 'root@localhost', '2023-06-13 13:32:43'),
	(9, 'Insert', 'cliente', 9, 'Cliente Inserido: Isaac Silva Ferreira', 'root@localhost', '2023-06-13 14:17:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logfuncionario: ~8 rows (aproximadamente)
INSERT INTO `logfuncionario` (`codLogFuncionario`, `acao`, `tabela`, `codFuncionario`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'funcionario', 1, 'Funcionario Inserido: Salomão Ferreira Junior', 'root@localhost', '2023-06-12 15:11:14'),
	(2, 'Insert', 'funcionario', 2, 'Funcionario Inserido: Lucas Oliveira Souza', 'root@localhost', '2023-06-12 15:19:33'),
	(3, 'Insert', 'funcionario', 3, 'Funcionario Inserido: Amanda Santos Rodrigues', 'root@localhost', '2023-06-12 15:23:50'),
	(4, 'Insert', 'funcionario', 4, 'Funcionario Inserido: Rafael Costa Oliveira', 'root@localhost', '2023-06-12 15:25:54'),
	(5, 'Insert', 'funcionario', 5, 'Funcionario Inserido: Bruno Rodrigues Costa', 'root@localhost', '2023-06-12 15:28:05'),
	(6, 'Insert', 'funcionario', 6, 'Funcionario Inserido: Isabella Oliveira Rodrigues', 'root@localhost', '2023-06-12 15:29:50'),
	(7, 'Insert', 'funcionario', 7, 'Funcionario Inserido: Pedro Lima Santos', 'root@localhost', '2023-06-12 15:31:20'),
	(8, 'Insert', 'funcionario', 8, 'Funcionario Inserido: Maria dos Santos Silva', 'root@localhost', '2023-06-12 15:32:47');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logitemvenda: ~14 rows (aproximadamente)
INSERT INTO `logitemvenda` (`codLogItemVenda`, `acao`, `tabela`, `codVenda`, `codProduto`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'item_venda', 1, 13, 'ItemVenda Inserido: Alimento p/ Peixes Tropicais', 'root@localhost', '2023-06-13 13:46:58'),
	(2, 'Insert', 'item_venda', 2, 10, 'ItemVenda Inserido: Clicker p/ Adestramento de Cães', 'root@localhost', '2023-06-13 13:47:54'),
	(3, 'Insert', 'item_venda', 2, 8, 'ItemVenda Inserido: AntiPulgas e Carrapatos p/ Cães e Gatos', 'root@localhost', '2023-06-13 13:48:03'),
	(4, 'Update', 'item_venda', 2, 8, 'Quantidade Alterada: 0 para 1', 'root@localhost', '2023-06-13 13:48:08'),
	(5, 'Insert', 'item_venda', 2, 1, 'ItemVenda Inserido: Ração Seca p/ Cães Adultos', 'root@localhost', '2023-06-13 13:48:30'),
	(6, 'Insert', 'item_venda', 3, 7, 'ItemVenda Inserido: Vermífugo p/ Cães e Gatos', 'root@localhost', '2023-06-13 13:52:21'),
	(7, 'Update', 'item_venda', 3, 7, 'Quantidade Alterada: 0 para 1', 'root@localhost', '2023-06-13 13:52:24'),
	(8, 'Insert', 'item_venda', 4, 4, 'ItemVenda Inserido: Brinquedo p/ Gatos', 'root@localhost', '2023-06-13 13:53:19'),
	(9, 'Insert', 'item_venda', 5, 1, 'ItemVenda Inserido: Ração Seca p/ Cães Adultos', 'root@localhost', '2023-06-13 13:54:19'),
	(10, 'Insert', 'item_venda', 6, 11, 'ItemVenda Inserido: Caixa de Transporte p/ Cães e Gatos', 'root@localhost', '2023-06-13 13:56:02'),
	(11, 'Insert', 'item_venda', 6, 2, 'ItemVenda Inserido: Sachê de Alimentação úmida p/ Gatos', 'root@localhost', '2023-06-13 13:56:12'),
	(12, 'Update', 'item_venda', 6, 2, 'Quantidade Alterada: 0 para 4', 'root@localhost', '2023-06-13 13:56:16'),
	(13, 'Insert', 'item_venda', 6, 5, 'ItemVenda Inserido: Shampoo p/ Cães e Gatos', 'root@localhost', '2023-06-13 13:56:36'),
	(14, 'Insert', 'item_venda', 7, 3, 'ItemVenda Inserido: Coleira p/ Cães', 'root@localhost', '2023-06-13 14:02:22');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logmarca: ~18 rows (aproximadamente)
INSERT INTO `logmarca` (`codLogMarca`, `acao`, `tabela`, `codMarca`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'marca', 1, 'Marca Inserida: Royal Canin', 'root@localhost', '2023-06-12 14:37:03'),
	(2, 'Insert', 'marca', 2, 'Marca Inserida: Golden', 'root@localhost', '2023-06-12 14:37:15'),
	(3, 'Insert', 'marca', 3, 'Marca Inserida: Biofresh', 'root@localhost', '2023-06-12 14:37:29'),
	(4, 'Insert', 'marca', 4, 'Marca Inserida: Pedigree', 'root@localhost', '2023-06-12 14:37:43'),
	(5, 'Insert', 'marca', 5, 'Marca Inserida: Purina Pro Plan', 'root@localhost', '2023-06-12 14:37:59'),
	(6, 'Insert', 'marca', 6, 'Marca Inserida: Chalesco', 'root@localhost', '2023-06-12 14:38:09'),
	(7, 'Insert', 'marca', 7, 'Marca Inserida: American Pets', 'root@localhost', '2023-06-12 14:38:23'),
	(8, 'Insert', 'marca', 8, 'Marca Inserida: Ferplast', 'root@localhost', '2023-06-12 14:38:34'),
	(9, 'Insert', 'marca', 9, 'Marca Inserida: Petstages', 'root@localhost', '2023-06-12 14:38:45'),
	(10, 'Insert', 'marca', 10, 'Marca Inserida: Dog\'s Care', 'root@localhost', '2023-06-12 14:38:53'),
	(11, 'Insert', 'marca', 11, 'Marca Inserida: Ibasa', 'root@localhost', '2023-06-12 14:39:02'),
	(12, 'Insert', 'marca', 12, 'Marca Inserida: Pet Society', 'root@localhost', '2023-06-12 14:39:09'),
	(13, 'Insert', 'marca', 13, 'Marca Inserida: Premier Pet', 'root@localhost', '2023-06-12 14:39:17'),
	(14, 'Insert', 'marca', 14, 'Marca Inserida: Beeps', 'root@localhost', '2023-06-12 14:40:20'),
	(15, 'Insert', 'marca', 15, 'Marca Inserida: Furminator', 'root@localhost', '2023-06-12 14:40:25'),
	(16, 'Insert', 'marca', 16, 'Marca Inserida: Labovet', 'root@localhost', '2023-06-12 14:41:22'),
	(17, 'Insert', 'marca', 17, 'Marca Inserida: Ourofino', 'root@localhost', '2023-06-12 14:41:45'),
	(18, 'Insert', 'marca', 18, 'Marca Inserida: PetSafe', 'root@localhost', '2023-06-12 14:41:55'),
	(19, 'Insert', 'marca', 19, 'Marca Inserida: Sera', 'root@localhost', '2023-06-12 14:42:22'),
	(20, 'Insert', 'marca', 20, 'Marca Inserida: Alcon', 'root@localhost', '2023-06-12 14:42:30');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logpet: ~8 rows (aproximadamente)
INSERT INTO `logpet` (`codLogPet`, `acao`, `tabela`, `codPet`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'pet', 1, 'Pet Inserido: Rex', 'root@localhost', '2023-06-13 13:36:22'),
	(2, 'Insert', 'pet', 2, 'Pet Inserido: Luna', 'root@localhost', '2023-06-13 13:36:45'),
	(3, 'Insert', 'pet', 4, 'Pet Inserido: Pingo', 'root@localhost', '2023-06-13 13:37:14'),
	(4, 'Insert', 'pet', 4, 'Pet Inserido: Nemo', 'root@localhost', '2023-06-13 13:38:00'),
	(5, 'Insert', 'pet', 5, 'Pet Inserido: Thor', 'root@localhost', '2023-06-13 13:39:28'),
	(6, 'Insert', 'pet', 6, 'Pet Inserido: Mia', 'root@localhost', '2023-06-13 13:40:01'),
	(7, 'Insert', 'pet', 7, 'Pet Inserido: Kiwi', 'root@localhost', '2023-06-13 13:40:29'),
	(8, 'Insert', 'pet', 8, 'Pet Inserido: Bubbles', 'root@localhost', '2023-06-13 13:40:55'),
	(9, 'Insert', 'pet', 9, 'Pet Inserido: Jade', 'root@localhost', '2023-06-13 14:18:49');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logproduto: ~25 rows (aproximadamente)
INSERT INTO `logproduto` (`codLogProduto`, `acao`, `tabela`, `codProduto`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'produto', 1, 'Produto Inserido: Ração Seca p/ Cães Adultos', 'root@localhost', '2023-06-12 14:45:34'),
	(2, 'Insert', 'produto', 2, 'Produto Inserido: Sachê de Alimentação úmida para Gatos', 'root@localhost', '2023-06-12 14:46:57'),
	(3, 'Insert', 'produto', 3, 'Produto Inserido: Coleira p/ Cães', 'root@localhost', '2023-06-12 14:48:36'),
	(4, 'Update', 'produto', 2, 'Nome Alterado: Sachê de Alimentação úmida para Gatos para Sachê de Alimentação úmida p/ Gatos', 'root@localhost', '2023-06-12 14:48:53'),
	(5, 'Insert', 'produto', 4, 'Produto Inserido: Brinquedo p/ Gatos', 'root@localhost', '2023-06-12 14:50:00'),
	(6, 'Insert', 'produto', 5, 'Produto Inserido: Shampoo p/ Cães e Gatos', 'root@localhost', '2023-06-12 14:51:00'),
	(7, 'Insert', 'produto', 6, 'Produto Inserido: Kit de Limpeza de Ouvidos p/ Cães', 'root@localhost', '2023-06-12 14:51:49'),
	(8, 'Insert', 'produto', 7, 'Produto Inserido: Vermífugo p/ Cães e Gatos', 'root@localhost', '2023-06-12 14:52:52'),
	(9, 'Insert', 'produto', 8, 'Produto Inserido: AntiPulgas e Carrapatos p/ Cães e Gatos', 'root@localhost', '2023-06-12 14:54:13'),
	(10, 'Insert', 'produto', 9, 'Produto Inserido: Tapete Higiênico p/ Cães', 'root@localhost', '2023-06-12 14:55:07'),
	(11, 'Insert', 'produto', 10, 'Produto Inserido: Clicker p/ Adestramento de Cães', 'root@localhost', '2023-06-12 14:56:42'),
	(12, 'Insert', 'produto', 11, 'Produto Inserido: Caixa de Transporte p/ Cães e Gatos', 'root@localhost', '2023-06-12 14:57:41'),
	(13, 'Insert', 'produto', 12, 'Produto Inserido: Assento de Segurança p/ Cães', 'root@localhost', '2023-06-12 14:58:18'),
	(14, 'Insert', 'produto', 13, 'Produto Inserido: Alimento p/ Peixes Tropicais', 'root@localhost', '2023-06-12 14:59:06'),
	(15, 'Update', 'produto', 13, 'Estoque Alterado: 100 para 95', 'root@localhost', '2023-06-13 13:46:58'),
	(16, 'Update', 'produto', 10, 'Estoque Alterado: 80 para 79', 'root@localhost', '2023-06-13 13:47:54'),
	(17, 'Update', 'produto', 8, 'Estoque Alterado: 70 para 69', 'root@localhost', '2023-06-13 13:48:08'),
	(18, 'Update', 'produto', 1, 'Estoque Alterado: 100 para 99', 'root@localhost', '2023-06-13 13:48:30'),
	(19, 'Update', 'produto', 7, 'Estoque Alterado: 40 para 39', 'root@localhost', '2023-06-13 13:52:24'),
	(20, 'Update', 'produto', 4, 'Estoque Alterado: 80 para 78', 'root@localhost', '2023-06-13 13:53:19'),
	(21, 'Update', 'produto', 1, 'Estoque Alterado: 99 para 97', 'root@localhost', '2023-06-13 13:54:19'),
	(22, 'Update', 'produto', 11, 'Estoque Alterado: 30 para 29', 'root@localhost', '2023-06-13 13:56:02'),
	(23, 'Update', 'produto', 2, 'Estoque Alterado: 200 para 196', 'root@localhost', '2023-06-13 13:56:16'),
	(24, 'Update', 'produto', 5, 'Estoque Alterado: 60 para 59', 'root@localhost', '2023-06-13 13:56:36'),
	(25, 'Update', 'produto', 3, 'Estoque Alterado: 50 para 49', 'root@localhost', '2023-06-13 14:02:22');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logservico: ~8 rows (aproximadamente)
INSERT INTO `logservico` (`codLogServico`, `acao`, `tabela`, `codServico`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'servico', 1, 'Servico Inserido: Banho Simples', 'root@localhost', '2023-06-12 15:35:28'),
	(2, 'Insert', 'servico', 2, 'Servico Inserido: Banho Especial', 'root@localhost', '2023-06-12 15:35:57'),
	(3, 'Insert', 'servico', 3, 'Servico Inserido: Tosa Higiênica', 'root@localhost', '2023-06-12 15:36:22'),
	(4, 'Insert', 'servico', 4, 'Servico Inserido: Tosa na Máquina', 'root@localhost', '2023-06-12 15:36:36'),
	(5, 'Insert', 'servico', 5, 'Servico Inserido: Tosa na Tesoura', 'root@localhost', '2023-06-12 15:36:46'),
	(6, 'Insert', 'servico', 6, 'Servico Inserido: Consulta Veterinária', 'root@localhost', '2023-06-12 15:37:33'),
	(7, 'Insert', 'servico', 7, 'Servico Inserido: Vacinação', 'root@localhost', '2023-06-12 15:37:56'),
	(8, 'Insert', 'servico', 8, 'Servico Inserido: Limpeza de Ouvidos', 'root@localhost', '2023-06-12 15:39:05'),
	(9, 'Insert', 'servico', 9, 'Servico Inserido: Corte de Unhas', 'root@localhost', '2023-06-12 15:39:20');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logservicovenda: ~9 rows (aproximadamente)
INSERT INTO `logservicovenda` (`codLogServicoVenda`, `acao`, `tabela`, `codVenda`, `codServico`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'servico_venda', 2, 2, 'ServicoVenda Inserido: Banho Especial', 'root@localhost', '2023-06-13 13:49:43'),
	(2, 'Insert', 'servico_venda', 6, 6, 'ServicoVenda Inserido: Consulta Veterinária', 'root@localhost', '2023-06-13 13:58:23'),
	(3, 'Insert', 'servico_venda', 5, 7, 'ServicoVenda Inserido: Vacinação', 'root@localhost', '2023-06-13 13:58:39'),
	(4, 'Update', 'servico_venda', 2, 7, 'Venda Alterada: 5 para 2', 'root@localhost', '2023-06-13 13:59:13'),
	(5, 'Insert', 'servico_venda', 7, 8, 'ServicoVenda Inserido: Limpeza de Ouvidos', 'root@localhost', '2023-06-13 14:00:54'),
	(6, 'Insert', 'servico_venda', 7, 9, 'ServicoVenda Inserido: Corte de Unhas', 'root@localhost', '2023-06-13 14:01:03'),
	(7, 'Update', 'servico_venda', 7, 9, 'Quantidade Alterada: 0 para 1', 'root@localhost', '2023-06-13 14:01:04'),
	(8, 'Insert', 'servico_venda', 7, 1, 'ServicoVenda Inserido: Banho Simples', 'root@localhost', '2023-06-13 14:01:24'),
	(9, 'Insert', 'servico_venda', 4, 6, 'ServicoVenda Inserido: Consulta Veterinária', 'root@localhost', '2023-06-13 14:03:34');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.logvenda: ~7 rows (aproximadamente)
INSERT INTO `logvenda` (`codLogVenda`, `acao`, `tabela`, `codVenda`, `descricao`, `usuario`, `dataHora`) VALUES
	(1, 'Insert', 'venda', 1, 'Venda Inserida: À vista', 'root@localhost', '2023-06-13 13:45:04'),
	(2, 'Insert', 'venda', 2, 'Venda Inserida: Pix', 'root@localhost', '2023-06-13 13:47:22'),
	(3, 'Insert', 'venda', 3, 'Venda Inserida: Cartão Débito', 'root@localhost', '2023-06-13 13:50:39'),
	(4, 'Insert', 'venda', 4, 'Venda Inserida: Cartão Crédito', 'root@localhost', '2023-06-13 13:53:03'),
	(5, 'Insert', 'venda', 5, 'Venda Inserida: À vista', 'root@localhost', '2023-06-13 13:53:43'),
	(6, 'Insert', 'venda', 6, 'Venda Inserida: Cartão Crédito', 'root@localhost', '2023-06-13 13:55:43'),
	(7, 'Insert', 'venda', 7, 'Venda Inserida: Cartão Débito', 'root@localhost', '2023-06-13 14:00:31');

-- Copiando estrutura para tabela petshop.marca
DROP TABLE IF EXISTS `marca`;
CREATE TABLE IF NOT EXISTS `marca` (
  `codMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nomeMarca` varchar(100) NOT NULL,
  PRIMARY KEY (`codMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.marca: ~17 rows (aproximadamente)
INSERT INTO `marca` (`codMarca`, `nomeMarca`) VALUES
	(1, 'Royal Canin'),
	(2, 'Golden'),
	(3, 'Biofresh'),
	(4, 'Pedigree'),
	(5, 'Purina Pro Plan'),
	(6, 'Chalesco'),
	(7, 'American Pets'),
	(8, 'Ferplast'),
	(9, 'Petstages'),
	(10, 'Dog\'s Care'),
	(11, 'Ibasa'),
	(12, 'Pet Society'),
	(13, 'Premier Pet'),
	(14, 'Beeps'),
	(15, 'Furminator'),
	(16, 'Labovet'),
	(17, 'Ourofino'),
	(18, 'PetSafe'),
	(19, 'Sera'),
	(20, 'Alcon');

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.pet: ~9 rows (aproximadamente)
INSERT INTO `pet` (`codPet`, `nomePet`, `tipoPet`, `racaPet`, `portePet`, `CLIENTE_codCliente`) VALUES
	(1, 'Rex', 'Cachorro', 'Labrador Retriever', 'Médio', 1),
	(2, 'Luna', 'Gato', 'Persa', 'Pequeno', 2),
	(3, 'Pingo', 'Ave', 'Calopsita', 'Pequeno', 3),
	(4, 'Nemo', 'Peixe', 'Betta', 'Pequeno', 4),
	(5, 'Thor', 'Cachorro', 'Golden Retriever', 'Grande', 5),
	(6, 'Mia', 'Gato', 'Siamês', 'Pequeno', 6),
	(7, 'Kiwi', 'Ave', 'Agapornis', 'Pequeno', 7),
	(8, 'Bubbles', 'Peixe', 'Guppy', 'Pequeno', 8),
	(9, 'Jade', 'Cachorro', 'Shih-tzu', 'Pequeno', 9);

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
CREATE PROCEDURE `proc_insereCliente`(
	IN `nome` varchar(200),
	IN `cpf` varchar(20),
	IN `endereco` varchar(100),
	IN `bairro` varchar (100),
	IN `nascimento` date,
	IN `email` varchar(150),
	IN `telefone` varchar(100)
)
BEGIN
	insert into cliente(nomeCliente,cpfCliente,telefoneCliente,emailCliente,dataNascimento,enderecoCliente,bairroCliente) 
	values (nome,cpf,telefone,email,nascimento,endereco,bairro);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.produto: ~13 rows (aproximadamente)
INSERT INTO `produto` (`codProduto`, `nomeProduto`, `precoCusto`, `precoVenda`, `margemLucro`, `quantidadeEstoque`, `quantidadeMinima`, `CATEGORIA_codCategoria`, `MARCA_codMarca`) VALUES
	(1, 'Ração Seca p/ Cães Adultos', 50.00, 70.00, 40, 97, 20, 1, 1),
	(2, 'Sachê de Alimentação úmida p/ Gatos', 3.00, 7.50, 150, 196, 30, 3, 13),
	(3, 'Coleira p/ Cães', 20.00, 32.00, 60, 49, 10, 4, 8),
	(4, 'Brinquedo p/ Gatos', 15.00, 25.50, 70, 78, 15, 4, 10),
	(5, 'Shampoo p/ Cães e Gatos', 25.00, 38.75, 55, 59, 10, 5, 12),
	(6, 'Kit de Limpeza de Ouvidos p/ Cães', 12.00, 19.20, 60, 100, 20, 5, 11),
	(7, 'Vermífugo p/ Cães e Gatos', 35.00, 52.50, 50, 39, 5, 6, 16),
	(8, 'AntiPulgas e Carrapatos p/ Cães e Gatos', 45.00, 72.00, 60, 69, 15, 6, 17),
	(9, 'Tapete Higiênico p/ Cães', 30.00, 51.00, 70, 150, 30, 7, 18),
	(10, 'Clicker p/ Adestramento de Cães', 8.00, 14.40, 80, 79, 10, 7, 6),
	(11, 'Caixa de Transporte p/ Cães e Gatos', 80.00, 120.00, 50, 29, 5, 8, 6),
	(12, 'Assento de Segurança p/ Cães', 65.00, 104.00, 60, 50, 10, 8, 18),
	(13, 'Alimento p/ Peixes Tropicais', 12.00, 20.40, 70, 95, 20, 9, 19);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.servico: ~8 rows (aproximadamente)
INSERT INTO `servico` (`codServico`, `tipoServico`, `FUNCIONARIO_codFuncionario`, `precoVenda`) VALUES
	(1, 'Banho Simples', 6, 40.00),
	(2, 'Banho Especial', 6, 60.00),
	(3, 'Tosa Higiênica', 3, 30.00),
	(4, 'Tosa na Máquina', 3, 60.00),
	(5, 'Tosa na Tesoura', 3, 80.00),
	(6, 'Consulta Veterinária', 7, 100.00),
	(7, 'Vacinação', 7, 50.00),
	(8, 'Limpeza de Ouvidos', 6, 20.00),
	(9, 'Corte de Unhas', 6, 15.00);

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

-- Copiando dados para a tabela petshop.servico_venda: ~7 rows (aproximadamente)
INSERT INTO `servico_venda` (`SERVICO_codServico`, `VENDA_codVenda`, `quantidade`) VALUES
	(1, 7, 1),
	(2, 2, 1),
	(6, 4, 1),
	(6, 6, 1),
	(7, 2, 1),
	(8, 7, 1),
	(9, 7, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela petshop.venda: ~7 rows (aproximadamente)
INSERT INTO `venda` (`codVenda`, `dataHora`, `tipoVenda`, `CLIENTE_codCliente`) VALUES
	(1, '2023-06-13 13:44:50', 'À vista', 8),
	(2, '2023-06-13 13:47:14', 'Pix', 1),
	(3, '2023-06-13 13:50:25', 'Cartão Débito', 7),
	(4, '2023-06-13 13:52:52', 'Cartão Crédito', 6),
	(5, '2023-06-13 13:53:30', 'À vista', 3),
	(6, '2023-06-13 13:55:31', 'Cartão Crédito', 2),
	(7, '2023-06-13 14:00:09', 'Cartão Débito', 5);

-- Copiando estrutura para view petshop.v_cargos
DROP VIEW IF EXISTS `v_cargos`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_cargos` (
	`Codigo` INT(11) NOT NULL,
	`Cargo` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Salario (R$)` DECIMAL(10,2) NOT NULL
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
	`Valor (R$)` DECIMAL(10,2) NULL,
	`Estoque` INT(11) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_servicos
DROP VIEW IF EXISTS `v_servicos`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_servicos` (
	`Codigo` INT(11) NOT NULL,
	`Servico` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`Responsavel` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Valor (R$)` DECIMAL(10,2) NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_servicosefetuados
DROP VIEW IF EXISTS `v_servicosefetuados`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_servicosefetuados` (
	`Venda` INT(11) NOT NULL,
	`Cliente` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Servico` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`Quantidade(S)` INT(11) NOT NULL,
	`Forma de Pagamento` ENUM('À vista','Pix','Cartão Débito','Cartão Crédito') NOT NULL COLLATE 'utf8_general_ci',
	`Data` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci',
	`Horario` VARCHAR(8) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_vendasefetuadas
DROP VIEW IF EXISTS `v_vendasefetuadas`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_vendasefetuadas` (
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
salarioCargo AS "Salario (R$)"
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
p.precoVenda AS "Valor (R$)", 
p.quantidadeEstoque as Estoque 
from produto p
inner join marca mar, 
categoria cat
where mar.codMarca = p.MARCA_codMarca and cat.codCategoria = p.CATEGORIA_codCategoria) ;

-- Copiando estrutura para view petshop.v_servicos
DROP VIEW IF EXISTS `v_servicos`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_servicos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_servicos` AS (

SELECT s.codServico AS "Codigo",
s.tipoServico AS "Servico",
f.nomeFuncionario AS "Responsavel",
s.precoVenda AS "Valor (R$)"
FROM servico s
INNER JOIN funcionario f ON f.codFuncionario = s.FUNCIONARIO_codFuncionario

) ;

-- Copiando estrutura para view petshop.v_servicosefetuados
DROP VIEW IF EXISTS `v_servicosefetuados`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_servicosefetuados`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_servicosefetuados` AS (
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

-- Copiando estrutura para view petshop.v_vendasefetuadas
DROP VIEW IF EXISTS `v_vendasefetuadas`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_vendasefetuadas`;
CREATE ALGORITHM=TEMPTABLE SQL SECURITY DEFINER VIEW `v_vendasefetuadas` AS (
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
