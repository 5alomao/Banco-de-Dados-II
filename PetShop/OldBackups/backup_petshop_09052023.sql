-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.20-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para petshop
CREATE DATABASE IF NOT EXISTS `petshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `petshop`;

-- Copiando estrutura para tabela petshop.auditoria
CREATE TABLE IF NOT EXISTS `auditoria` (
  `codAuditoria` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(400) DEFAULT NULL,
  `tabela` varchar(400) DEFAULT NULL,
  `dataHora` datetime DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codAuditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Registra as principais alterações neste BD.';

-- Copiando dados para a tabela petshop.auditoria: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` (`codAuditoria`, `acao`, `tabela`, `dataHora`, `usuario`) VALUES
	(22, 'Cliente Inserido: [12] Pedro Franco Ferreira', 'cliente', '2023-05-09 10:46:18', 'root@localhost'),
	(23, 'Cliente Alterado: [12] Pedro Franco Ferreira - CPF', 'cliente', '2023-05-09 10:46:26', 'root@localhost'),
	(24, 'Cliente Removido: [12] Pedro Franco Ferreira', 'cliente', '2023-05-09 10:46:38', 'root@localhost'),
	(28, 'Marca Inserida: [16] Magnus', 'marca', '2023-05-09 10:48:26', 'root@localhost'),
	(29, 'Marca Alterada: [16] PremieR - Nome', 'marca', '2023-05-09 10:48:31', 'root@localhost'),
	(30, 'Marca Removida: [16] PremieR', 'marca', '2023-05-09 10:48:34', 'root@localhost');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.cargo
CREATE TABLE IF NOT EXISTS `cargo` (
  `codCargo` int(11) NOT NULL AUTO_INCREMENT,
  `tipoCargo` varchar(200) NOT NULL,
  `salarioCargo` varchar(45) NOT NULL,
  PRIMARY KEY (`codCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.cargo: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` (`codCargo`, `tipoCargo`, `salarioCargo`) VALUES
	(8, 'Administrador', '5000'),
	(9, 'Tosador', '1507.00'),
	(10, 'Banhista', '1328.00'),
	(11, 'Veterinário', '5000'),
	(12, 'Recepcionista', '1256.00'),
	(13, 'Faxineiro(a)', '1282.00'),
	(14, 'MotoBoy', '1500.00'),
	(15, 'Vendedor', '2500');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `codCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCategoria` varchar(100) NOT NULL,
  PRIMARY KEY (`codCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.categoria: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`codCategoria`, `nomeCategoria`) VALUES
	(1, 'Rações'),
	(2, 'Brinquedos'),
	(3, 'Acessórios'),
	(4, 'Higiene e Limpeza'),
	(5, 'Remédios'),
	(7, 'Ossinhos e Petiscos'),
	(8, 'Vacinas');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `codCliente` int(11) NOT NULL AUTO_INCREMENT,
  `nomeCliente` varchar(200) NOT NULL,
  `enderecoCliente` varchar(100) DEFAULT NULL,
  `bairroCliente` varchar(100) DEFAULT NULL,
  `cidadeCliente` varchar(45) DEFAULT 'Machado',
  `cepCliente` varchar(20) DEFAULT '37.750-000',
  `ufCliente` char(2) DEFAULT 'MG',
  `dataNascimento` date DEFAULT NULL,
  `cpfCliente` varchar(20) NOT NULL,
  `emailCliente` varchar(200) DEFAULT NULL,
  `telefoneCliente` varchar(45) NOT NULL,
  PRIMARY KEY (`codCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.cliente: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`codCliente`, `nomeCliente`, `enderecoCliente`, `bairroCliente`, `cidadeCliente`, `cepCliente`, `ufCliente`, `dataNascimento`, `cpfCliente`, `emailCliente`, `telefoneCliente`) VALUES
	(6, 'Lilian Cristina', 'Rua São Lucas', 'Jardim das Oliveiras', 'Machado', '37.750-000', 'MG', '1990-04-28', '151.141.131-03', 'lilian@gmail.com', '123-123'),
	(7, 'Miguel Silva Ferreira', 'Rua São Lucas', 'Jardim das Oliveiras', 'Machado', '37.750-000', 'MG', '2000-10-20', '887.221.334-29', 'miguel@gmail.com', '(35)99123-3244'),
	(8, 'Juliana Mello', 'Rua São Mateus', 'Jardim dos Funcinários', 'Machado', '37.750-000', 'MG', '2000-05-20', '102.030.040-11', 'juliana@gmail.com', '(35)99767-0001'),
	(9, 'Isaac Silva Ferreira', 'Rua São Paulo', 'Jardim das Oliveiras', 'Machado', '37.750-000', 'MG', '2001-09-04', '554.229.123-99', 'isaac@gmail.com', '(35)98990-3534');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.funcionario
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
  PRIMARY KEY (`codFuncionario`),
  KEY `fk_FUNCIONARIO_CARGO1_idx` (`CARGO_codCargo`),
  CONSTRAINT `fk_FUNCIONARIO_CARGO1` FOREIGN KEY (`CARGO_codCargo`) REFERENCES `cargo` (`codCargo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.funcionario: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`codFuncionario`, `nomeFuncionario`, `cpfFuncionario`, `telefoneFuncionario`, `dataNascimento`, `enderecoFuncionario`, `carteiraTrabalho`, `emailFuncionario`, `dataDemissao`, `dataAdmissao`, `CARGO_codCargo`) VALUES
	(10, 'Salomão Ferreira Junior', '174.133.196-08', '(35)99769-5915', '2003-07-15', 'Rua São Lucas', '1741331-9608', 'salomao@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
	(11, 'Geovana Paganelli Reis', '154.853.886-90', '(35)99758-9811', '2004-03-17', 'Rua XV de Novembro', '1548538-8690', 'geovana@gmail.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 8),
	(12, 'Luiz Henrique Silverio', '900.800.700-60', '(35)99988-7766', '1999-03-28', 'Rua Flor Vermelha', '9008007-0060', 'luiz@gmail.com', '0000-00-00 00:00:00', '2022-11-02 19:35:10', 11),
	(13, 'Gustavo Alves', '123.321.213-31', '(35)99998-3030', '2004-04-21', 'Rua Esmeralda', '1233212-1331', 'gustavo@gmail.com', '0000-00-00 00:00:00', '2022-11-02 19:25:10', 13),
	(14, 'Arielce José Pereira', '192.168.023-21', '(35)98832-4031', '2003-08-21', 'Centro', '1921680-2321', 'arielce@gmail.com', '0000-00-00 00:00:00', '2022-11-02 19:30:10', 14),
	(15, 'Ryan Souza Mendes', '982.543.008-12', '(35)98821-2134', '2004-01-19', 'Rua São Pedro', '9825430-0812', 'Ryan Souza Mendes', '0000-00-00 00:00:00', '2022-11-02 19:40:11', 12),
	(16, 'Gabriel Caproni Pegoraro', '432.789.173-44', '(35)98870-5533', '2003-04-20', 'Carvalhópolis', '4327891-7344', 'gabriel@gmail.com', '0000-00-00 00:00:00', '2022-11-03 07:10:20', 10),
	(17, 'Pedro Ferreira Franco', '961.189.480-23', '(35)99920-3144', '2022-02-11', 'Zona Rural', '9611894-8023', 'pedro@gmail.com', '0000-00-00 00:00:00', '2022-11-02 19:51:31', 9),
	(18, 'Inacio Rodrigues Netto', '771.334.998-01', '(35)99440-3232', '2000-10-27', 'Rua Girassol', '7713349-9801', 'inacio@gmail.com', '0000-00-00 00:00:00', '2022-11-02 20:19:11', 15);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.item_venda
CREATE TABLE IF NOT EXISTS `item_venda` (
  `VENDA_codVenda` int(11) NOT NULL,
  `PRODUTO_codProduto` int(11) NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  PRIMARY KEY (`VENDA_codVenda`,`PRODUTO_codProduto`),
  KEY `fk_PRODUTO_has_VENDA_VENDA1_idx` (`VENDA_codVenda`),
  KEY `fk_PRODUTO_has_VENDA_PRODUTO1_idx` (`PRODUTO_codProduto`),
  CONSTRAINT `fk_PRODUTO_has_VENDA_PRODUTO1` FOREIGN KEY (`PRODUTO_codProduto`) REFERENCES `produto` (`codProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUTO_has_VENDA_VENDA1` FOREIGN KEY (`VENDA_codVenda`) REFERENCES `venda` (`codVenda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.item_venda: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `item_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_venda` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.marca
CREATE TABLE IF NOT EXISTS `marca` (
  `codMarca` int(11) NOT NULL AUTO_INCREMENT,
  `nomeMarca` varchar(100) NOT NULL,
  PRIMARY KEY (`codMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.marca: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` (`codMarca`, `nomeMarca`) VALUES
	(1, 'Pedigree'),
	(3, 'Dog Chow'),
	(4, 'Zeedog'),
	(5, 'Ibasa'),
	(6, 'Chalesco'),
	(11, 'Pro Plan'),
	(12, 'Royal Canin'),
	(13, 'Golden');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.pet
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.pet: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `pet` DISABLE KEYS */;
INSERT INTO `pet` (`codPet`, `nomePet`, `tipoPet`, `racaPet`, `portePet`, `CLIENTE_codCliente`) VALUES
	(8, 'Jade', 'Cachorro', 'Maltês', 'Pequeno', 6),
	(9, 'Estrela', 'Cachorro', 'Fila Brasileiro', 'Grande', 7),
	(10, 'Akira', 'Gato', 'Pelo Curto Brasileiro', 'Médio', 8),
	(11, 'Yuta', 'Gato', 'Siamês', 'Médio', 9);
/*!40000 ALTER TABLE `pet` ENABLE KEYS */;

-- Copiando estrutura para procedure petshop.proc_alteraCargoSalario
DELIMITER //
CREATE PROCEDURE `proc_alteraCargoSalario`(in salario varchar(200), codCar int)
BEGIN
	UPDATE cargo SET salarioCargo = salario WHERE codCargo = codCar;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraCargoTipo
DELIMITER //
CREATE PROCEDURE `proc_alteraCargoTipo`(in tipo varchar(200), codCar int)
BEGIN
	UPDATE cargo SET tipoCargo = tipo WHERE codCargo = codCar;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraCategoriaTipo
DELIMITER //
CREATE PROCEDURE `proc_alteraCategoriaTipo`(in nome varchar(200), in codCat int)
BEGIN
	update categoria set nomeCategoria = nome where codCategoria = codCat;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraClienteBairro
DELIMITER //
CREATE PROCEDURE `proc_alteraClienteBairro`(in bairro varchar(100), in codCli int)
BEGIN
	update cliente set bairroCliente = bairro where codCliente = codCli;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraClienteCpf
DELIMITER //
CREATE PROCEDURE `proc_alteraClienteCpf`(in cpf varchar(20), in codCli int)
BEGIN
	update cliente set cpfCliente = cpf where codCliente = codCli;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraClienteEmail
DELIMITER //
CREATE PROCEDURE `proc_alteraClienteEmail`(in email varchar(200), in codCli int)
BEGIN
	update cliente set emailCliente = email where codCliente = codCli;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraClienteEndereco
DELIMITER //
CREATE PROCEDURE `proc_alteraClienteEndereco`(in endereco varchar(200), in codCli int)
BEGIN
	update cliente set enderecoCliente = endereco where codCliente = codCli;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraClienteNascimento
DELIMITER //
CREATE PROCEDURE `proc_alteraClienteNascimento`(in nascimento date, in codCli int)
BEGIN
	update cliente set dataNascimento = nascimento where codCliente = codCli;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraClienteNome
DELIMITER //
CREATE PROCEDURE `proc_alteraClienteNome`(in nome varchar(200), in codCli int)
BEGIN
	update cliente set nomeCliente = nome where codCliente = codCli;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraClienteTelefone
DELIMITER //
CREATE PROCEDURE `proc_alteraClienteTelefone`(in telefone varchar(100), in codCli int)
BEGIN
	update cliente set telefoneCliente = telefone where codCliente = codCli;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioAdmissao
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioAdmissao`(in admissao datetime, in codFun int)
BEGIN
	update funcionario set dataAdmissao = admissao where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioCargo
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioCargo`(in codCarg int, in codFun int)
BEGIN
	update funcionario set CARGO_codCargo = codCarg where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioCarteira
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioCarteira`(in carteira varchar (45), in codFun int)
BEGIN
	update funcionario set carteiraTrabalho = carteira where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioCpf
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioCpf`(in cpf varchar(50),in codFun int)
BEGIN
	update funcionario set cpfFuncionario = cpf where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioDemissao
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioDemissao`(in demissao datetime, in codFun int)
BEGIN
	update funcionario set dataDemissao = demissao where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioEmail
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioEmail`(in email varchar (200), in codFun int)
BEGIN
	update funcionario set emailFuncionario=email where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioEndereco
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioEndereco`(in endereco varchar(150), in codFun int)
BEGIN
	update funcionario set enderecoFuncionario = endereco where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioNascimento
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioNascimento`(in nascimento date,in codFun int)
BEGIN
	update funcionario set dataNascimento = nascimento where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioNome
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioNome`(in nome varchar(200),in codFun int)
BEGIN
	update funcionario set nomeFuncionario = nome where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraFuncionarioTelefone
DELIMITER //
CREATE PROCEDURE `proc_alteraFuncionarioTelefone`(in telefone varchar(100), in codFun int)
BEGIN
	update funcionario set telefoneFuncionario = telefone where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraMarcaNome
DELIMITER //
CREATE PROCEDURE `proc_alteraMarcaNome`(in marca varchar(150), in codMar int)
BEGIN
	update marca set nomeMarca = marca where codMarca = codMar;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraPetCliente
DELIMITER //
CREATE PROCEDURE `proc_alteraPetCliente`(in codCli int, in codP int)
BEGIN
	update pet set CLIENTE_codCliente = codCli where codPet = codP;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraPetDono
DELIMITER //
CREATE PROCEDURE `proc_alteraPetDono`(in codCli int, in codP int)
BEGIN
	update pet set CLIENTE_codCliente = codCli where codPet = codP;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraPetNome
DELIMITER //
CREATE PROCEDURE `proc_alteraPetNome`(in nome varchar(200), in codP int)
BEGIN
	update pet set nomePet = nome where codPet = codP;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraPetPorte
DELIMITER //
CREATE PROCEDURE `proc_alteraPetPorte`(in porte varchar (50), in codP int)
BEGIN
	update pet set portePet = porte where codPet = codP;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraPetRaca
DELIMITER //
CREATE PROCEDURE `proc_alteraPetRaca`(in raca varchar(100), in codP int)
BEGIN
	update pet set racaPet = raca where codPet = codP;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraPetTipo
DELIMITER //
CREATE PROCEDURE `proc_alteraPetTipo`(in tipo varchar(100), in codP int)
BEGIN
	update pet set tipoPet = tipo where codPet = codP;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoCategoria
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoCategoria`(in codCat int, in codProd int)
BEGIN
	update produto set CATEGORIA_codCategoria = codCat where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoMarca
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoMarca`(in codMar int, in codProd int)
BEGIN
	update produto set MARCA_codMarca = codMar where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoMLucro
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoMLucro`(in codProd int)
BEGIN
	update produto set margemLucro = ((precoVenda-precoCusto)/precoCusto)*100 where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoNome
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoNome`(in nome varchar(200), in codProd int)
BEGIN
	update produto set nomeProduto = nome where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoPrecoC
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoPrecoC`(in precoC decimal(10,2), in codProd int)
BEGIN
	update produto set precoCusto = precoC where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoPrecoV
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoPrecoV`(in precoV decimal(10,2), in codProd int)
BEGIN
	update produto set precoVenda = precoV where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoQntEstoque
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoQntEstoque`(in qntEstoque decimal(10,2), in codProd int)
BEGIN
	update produto set quantidadeEstoque = qntEstoque where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoQntMinima
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoQntMinima`(in qntMinima decimal(10,2), in codProd int)
BEGIN
	update produto set quantidadeMinima = qntMinima where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraProdutoValidade
DELIMITER //
CREATE PROCEDURE `proc_alteraProdutoValidade`(in validade date, in codProd int)
BEGIN
	update produto set dataValidade = validade where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraServicoFuncionario
DELIMITER //
CREATE PROCEDURE `proc_alteraServicoFuncionario`(in codFun int, in codSer int)
BEGIN
	update servico set FUNCIONARIO_codFuncionario = codFun where codServico = codSer;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraServicoPVenda
DELIMITER //
CREATE PROCEDURE `proc_alteraServicoPVenda`(in preco decimal(10,2), in codSer int)
BEGIN
	update servico set precoVenda=preco where codServico = codSer;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraServicoTipo
DELIMITER //
CREATE PROCEDURE `proc_alteraServicoTipo`(in tipo varchar(150), in codSer int)
BEGIN
	update servico set tipoServico=tipo where codServico = codSer;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraVendaCliente
DELIMITER //
CREATE PROCEDURE `proc_alteraVendaCliente`(in codCli int, codV int)
BEGIN
	update venda set CLIENTE_codCliente = codCli where codVenda = codV;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraVendaDataHora
DELIMITER //
CREATE PROCEDURE `proc_alteraVendaDataHora`(in horaData datetime, in codV int)
BEGIN
	update venda set dataHora = horaData where codVenda = codV;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraVendaDesconto
DELIMITER //
CREATE PROCEDURE `proc_alteraVendaDesconto`(in desconto decimal(4,2), in codV int)
BEGIN
	update venda set descontoVenda = desconto where codVenda = codV;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_alteraVendaTipo
DELIMITER //
CREATE PROCEDURE `proc_alteraVendaTipo`(in tipo varchar(150), in codV int)
BEGIN
	update venda set tipoVenda = tipo where codVenda = codV;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaCargo
DELIMITER //
CREATE PROCEDURE `proc_deletaCargo`(in codCarg int)
BEGIN
	delete from cargo where codCargo = codCarg;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaCategoria
DELIMITER //
CREATE PROCEDURE `proc_deletaCategoria`(in codCat int)
BEGIN
	delete from categoria where codCategoria = codCat;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaCliente
DELIMITER //
CREATE PROCEDURE `proc_deletaCliente`(in codCli int)
BEGIN
	delete from cliente where codCliente = codCli;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaFuncionario
DELIMITER //
CREATE PROCEDURE `proc_deletaFuncionario`(in codFun int)
BEGIN
	delete from funcionario where codFuncionario = codFun;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaMarca
DELIMITER //
CREATE PROCEDURE `proc_deletaMarca`(in codMar int)
BEGIN
	delete from marca where codMarca = codMar;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaPet
DELIMITER //
CREATE PROCEDURE `proc_deletaPet`(in codP int )
BEGIN
	delete from pet where codPet = codP;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaProduto
DELIMITER //
CREATE PROCEDURE `proc_deletaProduto`(in codProd int)
BEGIN
	delete from produto where codProduto = codProd;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaServico
DELIMITER //
CREATE PROCEDURE `proc_deletaServico`(in codSer int)
BEGIN
	delete from servico where codServico = codSer;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_deletaVenda
DELIMITER //
CREATE PROCEDURE `proc_deletaVenda`(in codV int)
BEGIN
	delete from venda where codVenda = codV;
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereCargo
DELIMITER //
CREATE PROCEDURE `proc_insereCargo`(in tipo varchar(200), in salario decimal(10,2))
BEGIN
	insert into cargo(tipoCargo,salarioCargo) values (tipo,salario);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereCategoria
DELIMITER //
CREATE PROCEDURE `proc_insereCategoria`(in categoria varchar (200))
BEGIN
	insert into categoria(nomeCategoria) values (categoria);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereCliente
DELIMITER //
CREATE PROCEDURE `proc_insereCliente`(in nome varchar(200), in cpf varchar(20), in endereco varchar(100), in bairro varchar (100), in nascimento date, in email varchar(150), in telefone varchar(100))
BEGIN
	insert into cliente(nomeCliente,cpfCliente,enderecoCliente,bairroCliente,dataNascimento,emailCliente,telefoneCliente) values (nome,cpf,endereco,bairro,nascimento,email,telefone);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereFuncionario
DELIMITER //
CREATE PROCEDURE `proc_insereFuncionario`(in nome varchar(200),in cpf varchar(20), in telefone varchar(100), in nascimento date, in endereco varchar(200), in carteira varchar (45), in emailFun varchar (150), in admissao datetime ,in demissao datetime, in codCarg int)
BEGIN
	insert into funcionario(nomeFuncionario,cpfFuncionario,telefoneFuncionario, dataNascimento, enderecoFuncionario, carteiraTrabalho,emailFuncionario,dataAdmissao,dataDemissao,CARGO_codCargo) values (nome,cpf,telefone,nascimento,endereco,carteira,emailFun,admissao,demissao,codCarg);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereMarca
DELIMITER //
CREATE PROCEDURE `proc_insereMarca`(in marca varchar(100))
BEGIN
	insert into marca(nomeMarca) values (marca);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_inserePet
DELIMITER //
CREATE PROCEDURE `proc_inserePet`(in nome varchar(150), in tipo varchar(100),in raca varchar (100), in porte varchar(20), in codCli int)
BEGIN
	insert into pet(nomePet,tipoPet,racaPet,portePet, CLIENTE_codCliente) values (nome,tipo,raca,porte,codCli);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereProduto
DELIMITER //
CREATE PROCEDURE `proc_insereProduto`(in nome varchar(200), in precoC decimal(10,2), in precoV decimal(10,2),in validade date, in mLucro decimal(5,2), in qntEstoque decimal(10,2), in qntMinima decimal(10,2), in codCat int, in codMar int)
BEGIN
	insert into produto(nomeProduto,precoCusto,precoVenda,margemLucro,dataValidade,quantidadeEstoque,quantidadeMinima,CATEGORIA_codCategoria,MARCA_codMarca) values(nome,precoC,precoV,mLucro,validade,qntEstoque,qntMinima,codCat,codMar);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereServico
DELIMITER //
CREATE PROCEDURE `proc_insereServico`(in servico varchar (200), in preco decimal(10,2), in codFun int)
BEGIN
	insert into servico(tipoServico,precoVenda,FUNCIONARIO_codFuncionario) values (servico,preco,codFun);
END//
DELIMITER ;

-- Copiando estrutura para procedure petshop.proc_insereVenda
DELIMITER //
CREATE PROCEDURE `proc_insereVenda`(in horaData datetime, in tipo_venda ENUM('À vista', 'Pix', 'Cartão Débito', 'Cartão Crédito'), in desconto decimal(4,2), in codCli int)
BEGIN
	insert into venda(dataHora, tipoVenda, descontoVenda, CLIENTE_codCliente) values (horaData,tipo_venda, desconto, codCli);
END//
DELIMITER ;

-- Copiando estrutura para tabela petshop.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `codProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nomeProduto` varchar(200) NOT NULL,
  `precoCusto` decimal(10,2) NOT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `margemLucro` decimal(5,2) DEFAULT NULL,
  `dataValidade` date DEFAULT NULL,
  `quantidadeEstoque` decimal(10,2) DEFAULT NULL,
  `quantidadeMinima` decimal(10,2) DEFAULT NULL,
  `CATEGORIA_codCategoria` int(11) NOT NULL,
  `MARCA_codMarca` int(11) NOT NULL,
  PRIMARY KEY (`codProduto`),
  KEY `fk_PRODUTO_CATEGORIA_idx` (`CATEGORIA_codCategoria`),
  KEY `fk_PRODUTO_MARCA1_idx` (`MARCA_codMarca`),
  CONSTRAINT `fk_PRODUTO_CATEGORIA` FOREIGN KEY (`CATEGORIA_codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODUTO_MARCA1` FOREIGN KEY (`MARCA_codMarca`) REFERENCES `marca` (`codMarca`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.produto: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`codProduto`, `nomeProduto`, `precoCusto`, `precoVenda`, `margemLucro`, `dataValidade`, `quantidadeEstoque`, `quantidadeMinima`, `CATEGORIA_codCategoria`, `MARCA_codMarca`) VALUES
	(1, 'Ração p/ Filhote', 48.70, 79.90, 64.07, '0000-00-00', 30.00, 5.00, 1, 1),
	(2, 'Coleira', 15.40, 25.70, 66.88, '0000-00-00', 15.00, 5.00, 3, 4),
	(3, 'Sabonete Anti Pulgas', 6.19, 17.29, 179.32, '0000-00-00', 25.00, 5.00, 4, 5),
	(4, 'Escova para Pelos', 5.39, 10.00, 85.53, '0000-00-00', 15.00, 5.00, 4, 6),
	(5, 'Vasilha de Alumínio', 9.45, 21.39, 126.35, '0000-00-00', 13.00, 5.00, 3, 4);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.servico
CREATE TABLE IF NOT EXISTS `servico` (
  `codServico` int(11) NOT NULL AUTO_INCREMENT,
  `tipoServico` varchar(150) NOT NULL,
  `FUNCIONARIO_codFuncionario` int(11) NOT NULL,
  `precoVenda` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`codServico`),
  KEY `fk_SERVICO_FUNCIONARIO1_idx` (`FUNCIONARIO_codFuncionario`),
  CONSTRAINT `fk_SERVICO_FUNCIONARIO1` FOREIGN KEY (`FUNCIONARIO_codFuncionario`) REFERENCES `funcionario` (`codFuncionario`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.servico: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` (`codServico`, `tipoServico`, `FUNCIONARIO_codFuncionario`, `precoVenda`) VALUES
	(6, 'Banho', 16, 56.70),
	(7, 'Vacinação', 12, 70.00),
	(8, 'Tosa', 17, 69.00),
	(9, 'Entrega', 14, 14.90),
	(10, 'Busca', 14, 14.90),
	(11, 'Venda', 18, 0.00);
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.servico_venda
CREATE TABLE IF NOT EXISTS `servico_venda` (
  `SERVICO_codServico` int(11) NOT NULL,
  `VENDA_codVenda` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`SERVICO_codServico`,`VENDA_codVenda`),
  KEY `fk_SERVICO_has_VENDA_VENDA1_idx` (`VENDA_codVenda`),
  KEY `fk_SERVICO_has_VENDA_SERVICO1_idx` (`SERVICO_codServico`),
  CONSTRAINT `fk_SERVICO_has_VENDA_SERVICO1` FOREIGN KEY (`SERVICO_codServico`) REFERENCES `servico` (`codServico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_SERVICO_has_VENDA_VENDA1` FOREIGN KEY (`VENDA_codVenda`) REFERENCES `venda` (`codVenda`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.servico_venda: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `servico_venda` DISABLE KEYS */;
/*!40000 ALTER TABLE `servico_venda` ENABLE KEYS */;

-- Copiando estrutura para tabela petshop.venda
CREATE TABLE IF NOT EXISTS `venda` (
  `codVenda` int(11) NOT NULL AUTO_INCREMENT,
  `dataHora` datetime NOT NULL,
  `descontoVenda` decimal(4,2) DEFAULT NULL,
  `tipoVenda` enum('À vista','Pix','Cartão Débito','Cartão Crédito') NOT NULL,
  `CLIENTE_codCliente` int(11) NOT NULL,
  PRIMARY KEY (`codVenda`),
  KEY `fk_VENDA_CLIENTE1_idx` (`CLIENTE_codCliente`),
  CONSTRAINT `fk_VENDA_CLIENTE1` FOREIGN KEY (`CLIENTE_codCliente`) REFERENCES `cliente` (`codCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela petshop.venda: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` (`codVenda`, `dataHora`, `descontoVenda`, `tipoVenda`, `CLIENTE_codCliente`) VALUES
	(3, '2022-11-03 15:14:00', NULL, 'Pix', 6),
	(4, '2022-11-03 11:10:22', NULL, 'Cartão Débito', 7),
	(5, '2022-11-03 09:43:19', NULL, 'Cartão Crédito', 8),
	(6, '2022-11-03 14:17:11', NULL, 'À vista', 9);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;

-- Copiando estrutura para view petshop.v_relatoriocliente
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_relatoriocliente` (
	`Codigo` INT(11) NOT NULL,
	`Nome` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`CPF` VARCHAR(20) NOT NULL COLLATE 'utf8_general_ci',
	`Telefone` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci',
	`Email` VARCHAR(200) NULL COLLATE 'utf8_general_ci',
	`Endereco` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`Bairro` VARCHAR(100) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_relatoriopet
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_relatoriopet` (
	`Codigo` INT(11) NOT NULL,
	`Nome` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Especie` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Raca` VARCHAR(100) NULL COLLATE 'utf8_general_ci',
	`Porte` VARCHAR(50) NULL COLLATE 'utf8_general_ci',
	`Dono` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view petshop.v_relatorioprodutos
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_relatorioprodutos` (
	`Codigo` INT(11) NOT NULL,
	`Nome` VARCHAR(200) NOT NULL COLLATE 'utf8_general_ci',
	`Categoria` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`Marca` VARCHAR(100) NOT NULL COLLATE 'utf8_general_ci',
	`Custo` DECIMAL(10,2) NOT NULL,
	`Venda` DECIMAL(10,2) NOT NULL,
	`Estoque` DECIMAL(10,2) NULL
) ENGINE=MyISAM;

-- Copiando estrutura para trigger petshop.tri_LogAlteraCPF
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogAlteraCPF` AFTER UPDATE ON `cliente` FOR EACH ROW /*
Trigger para inserir na tabela auditoria 
um registro informando que o CPF de algum CLIENTE foi alterado
*/
BEGIN

	IF(OLD.cpfCliente != NEW.cpfCliente) then
	SET @mensagem = CONCAT("Cliente Alterado: [",NEW.codCliente,"] ",NEW.nomeCliente," - CPF");
	INSERT INTO auditoria VALUES (NULL,@mensagem,"cliente",NOW(),USER());
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogAlteraMarca
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogAlteraMarca` AFTER UPDATE ON `marca` FOR EACH ROW BEGIN

	IF(OLD.nomeMarca != NEW.nomeMarca) 
		then
			SET @mensagem = CONCAT("Marca Alterada: [",NEW.codMarca,"] ", NEW.nomeMarca," - Nome");
			INSERT INTO auditoria VALUES (NULL,@mensagem,"marca",NOW(),USER());
	END if;
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaCliente
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogDeletaCliente` AFTER DELETE ON `cliente` FOR EACH ROW /*
Trigger para inserir na tabela auditoria 
um registro informando que algum CLIENTE foi deletado
*/
BEGIN

	SET @mensagem = CONCAT("Cliente Removido: [",OLD.codCliente,"] ",OLD.nomeCliente);
	
	INSERT INTO auditoria VALUES (NULL,@mensagem,"cliente",NOW(),USER());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogDeletaMarca
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogDeletaMarca` AFTER DELETE ON `marca` FOR EACH ROW /*
Trigger para inserir na tabela auditoria 
um registro informando que alguma MARCA foi deletada
*/
BEGIN

	SET @mensagem = CONCAT("Marca Removida: [",OLD.codMarca,"] ",OLD.nomeMarca);
	
	INSERT INTO auditoria VALUES (NULL,@mensagem,"marca",NOW(),USER());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereCliente
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogInsereCliente` AFTER INSERT ON `cliente` FOR EACH ROW /*
Trigger para inserir na tabela auditoria 
um registro informando que foi adicionado um novo CLIENTE
*/
BEGIN

	SET @mensagem = CONCAT("Cliente Inserido: [",NEW.codCliente,"] ",NEW.nomeCliente);
	
	INSERT INTO auditoria VALUES (NULL,@mensagem,"cliente",NOW(),USER());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger petshop.tri_LogInsereMarca
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogInsereMarca` AFTER INSERT ON `marca` FOR EACH ROW /*
Trigger para inserir na tabela auditoria 
um registro informando que foi adicionado uma nova MARCA
*/
BEGIN

	SET @mensagem = CONCAT("Marca Inserida: [",NEW.codMarca,"] ",NEW.nomeMarca);
	
	INSERT INTO auditoria VALUES (NULL,@mensagem,"marca",NOW(),USER());
	
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para view petshop.v_relatoriocliente
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_relatoriocliente`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_relatoriocliente` AS (select codCliente as Codigo, nomeCliente as Nome, cpfCliente as CPF, telefoneCliente as Telefone, emailCliente as Email, enderecoCliente as Endereco, bairroCliente as Bairro from cliente order by nomeCliente ASC) ;

-- Copiando estrutura para view petshop.v_relatoriopet
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_relatoriopet`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_relatoriopet` AS (select codPet as Codigo, nomePet as Nome, tipoPet as Especie, racaPet as Raca, portePet as Porte, cliente.nomeCliente as Dono from pet inner join cliente where codCliente = CLIENTE_codCliente) ;

-- Copiando estrutura para view petshop.v_relatorioprodutos
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_relatorioprodutos`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_relatorioprodutos` AS (select codProduto as Codigo, nomeProduto as Nome, categoria.nomeCategoria as Categoria, marca.nomeMarca as Marca, precoCusto as Custo, precoVenda 
as Venda, quantidadeEstoque as Estoque from produto inner join marca, categoria where codMarca = MARCA_codMarca and codCategoria = CATEGORIA_codCategoria) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
