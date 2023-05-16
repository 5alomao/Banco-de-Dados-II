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


-- Copiando estrutura do banco de dados para agencia3si2023
CREATE DATABASE IF NOT EXISTS `agencia3si2023` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `agencia3si2023`;

-- Copiando estrutura para tabela agencia3si2023.auditoria
CREATE TABLE IF NOT EXISTS `auditoria` (
  `codAuditoria` int(11) NOT NULL AUTO_INCREMENT,
  `acao` varchar(400) DEFAULT NULL,
  `tabela` varchar(400) DEFAULT NULL,
  `dataHora` datetime DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codAuditoria`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Registra as principais alterações neste BD.';

-- Copiando dados para a tabela agencia3si2023.auditoria: ~24 rows (aproximadamente)
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` (`codAuditoria`, `acao`, `tabela`, `dataHora`, `usuario`) VALUES
	(1, 'Exclusão de conta do cliente: ROBERTO SILVA', 'contavinculada', '2023-04-18 10:49:25', 'root@localhost'),
	(2, 'Exclusão de conta do cliente: Flávia Guimarães', 'contavinculada', '2023-04-18 10:50:20', 'root@localhost'),
	(3, 'CPF do cliente: FERNANDO TELLESfoi alterado para 123.123.123-00', 'cliente', '2023-04-19 08:05:33', 'root@localhost'),
	(4, 'CPF do cliente: ALESSANDRA SILVA foi alterado para 250.250.250.55', 'cliente', '2023-04-19 08:06:42', 'root@localhost'),
	(5, 'Conta inserida: 11 tipo: Corrente saldo: R$1250.00', 'conta', '2023-04-19 08:20:41', 'root@localhost'),
	(6, 'Conta inserida: 12 tipo: Poupança saldo: R$1250.00', 'conta', '2023-04-19 08:21:13', 'root@localhost'),
	(7, 'Conta inserida: 13 tipo: Poupança saldo: R$0.01', 'conta', '2023-04-27 09:57:48', 'root@localhost'),
	(8, 'Conta inserida: 14 tipo: Poupança saldo: R$0.01', 'conta', '2023-04-27 09:58:57', 'root@localhost'),
	(9, 'CPF do cliente: GUSTAVO PERERIRA foi alterado para 120', 'cliente', '2023-04-27 10:27:07', 'root@localhost'),
	(10, 'CPF do cliente: Leandro Rodrigues foi alterado para 023', 'cliente', '2023-04-27 10:27:28', 'root@localhost'),
	(11, 'CPF do cliente: TELMA ALMEIDA foi alterado para 120', 'cliente', '2023-04-27 10:27:47', 'root@localhost'),
	(12, 'Conta inserida: 15 tipo: Corrente saldo: R$0.00', 'conta', '2023-05-04 10:56:24', 'root@localhost'),
	(13, 'Conta Removida: ID [15]', 'conta', '2023-05-04 10:56:32', 'root@localhost'),
	(14, 'Conta inserida: 16 tipo: Poupança saldo: R$0.01', 'conta', '2023-05-09 10:03:51', 'root@localhost'),
	(15, 'CPF do cliente: Pedro Franco foi alterado para 123123123', 'cliente', '2023-05-09 10:04:16', 'root@localhost'),
	(16, 'CPF do cliente: Pedro Franco foi alterado para 123123123', 'cliente', '2023-05-09 10:04:23', 'root@localhost'),
	(17, 'Conta inserida: 17 tipo: Poupança saldo: R$0.01', 'conta', '2023-05-09 10:08:44', 'root@localhost'),
	(18, '38', 'cliente', '2023-05-09 10:08:44', 'root@localhost'),
	(19, 'Conta inserida: 18 tipo: Poupança saldo: R$0.01', 'conta', '2023-05-09 10:11:18', 'root@localhost'),
	(20, 'Cliente[39] - Não possui 18 anos', 'cliente', '2023-05-09 10:11:18', 'root@localhost'),
	(21, 'Conta inserida: 19 tipo: Poupança saldo: R$0.01', 'conta', '2023-05-09 10:13:03', 'root@localhost'),
	(22, 'Cliente [41] - Teste123 - Não possui 18 anos', 'cliente', '2023-05-09 10:19:03', 'root@localhost'),
	(23, 'Conta inserida: 20 tipo: Poupança saldo: R$0.01', 'conta', '2023-05-09 10:19:03', 'root@localhost'),
	(24, 'Cliente: [41] - Não possui 18 anos', 'cliente', '2023-05-09 10:19:03', 'root@localhost');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;

-- Copiando estrutura para tabela agencia3si2023.cliente
CREATE TABLE IF NOT EXISTS `cliente` (
  `idCLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `dataNascimento` date NOT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCLIENTE`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela agencia3si2023.cliente: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` (`idCLIENTE`, `nome`, `cpf`, `rg`, `dataNascimento`, `telefone`) VALUES
	(1, 'TELMA ALMEIDA', '120', 'MG 999.999-99', '1980-11-25', '(35)3295-9700'),
	(2, 'ROBERTO SILVA', '035.888.888-24', 'MG 10.100.777', '1975-05-21', '(35)3295-1234'),
	(3, 'Amanda Carvalho', '036.036.036-66', NULL, '1980-06-23', NULL),
	(4, 'Pedro Augusto Telles', '999.036.036-66', NULL, '1956-12-23', NULL),
	(5, 'Rosália Pereira', '777.036.036-77', NULL, '1977-07-12', NULL),
	(6, 'Lúcia Silviano', '444.036.444-77', NULL, '1974-04-24', NULL),
	(7, 'ROSÂNGELA ALVES', '777.777.777-77', 'SP 10.100.100', '1978-12-02', '(35)98811-1234'),
	(8, 'ROSÂNGELA SILVA', '777.777.777-88', 'SP 10.100.900', '1978-11-02', '(35)98822-4444'),
	(20, 'Felipe Guimarães', '123.123.123-12', NULL, '1969-05-20', NULL),
	(21, 'Flávia Guimarães', '123.123.999-12', NULL, '1969-05-25', NULL),
	(22, 'Fabiana Silva CGE', '999.999.999-99', NULL, '1970-12-02', NULL),
	(23, 'Tales Silva', '8888.888.888-88', NULL, '1975-12-02', NULL),
	(28, 'Flávio Almeida', '456.456.456-56', NULL, '1985-03-28', NULL),
	(32, 'FERNANDO TELLES', '123.123.123-00', '444', '2023-04-11', '(35)995958859'),
	(33, 'ALESSANDRA SILVA', '250.250.250.55', '334', '2023-11-12', '(35)9934343459'),
	(34, 'GUSTAVO PERERIRA', '120', '22', '2021-02-10', '(19)9456456'),
	(35, 'Leandro Rodrigues', '023', 'SP 10.125.20-99', '2023-02-10', NULL),
	(36, 'Cristina', '120.120.120-50', 'MG 10.100.100-50', '2023-04-27', NULL),
	(37, 'Pedro Franco', '123123123', 'MG 123.123-12', '2015-07-12', '3295-1111'),
	(38, 'Salomão', '', NULL, '2013-05-09', NULL),
	(39, 'Andre Pacheco', '', NULL, '2016-05-09', NULL),
	(40, 'Gabriel Pegoraro', '', NULL, '0000-00-00', NULL),
	(41, 'Teste123', '', NULL, '2016-05-09', NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela agencia3si2023.conta
CREATE TABLE IF NOT EXISTS `conta` (
  `idCONTA` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` enum('Salário','Corrente','Poupança') NOT NULL,
  `saldo` float(10,2) NOT NULL,
  `senha` char(8) NOT NULL,
  PRIMARY KEY (`idCONTA`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela agencia3si2023.conta: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `conta` DISABLE KEYS */;
INSERT INTO `conta` (`idCONTA`, `tipo`, `saldo`, `senha`) VALUES
	(1, 'Salário', 805.50, 'abc123'),
	(2, 'Poupança', 1375.00, 'teste'),
	(4, 'Corrente', 125.10, '*23AB*'),
	(11, 'Corrente', 1250.00, 'senha12'),
	(12, 'Poupança', 1250.00, 'TESTE'),
	(13, 'Poupança', 0.11, 'lala'),
	(14, 'Poupança', 0.31, '1313'),
	(16, 'Poupança', 0.01, 'abc'),
	(17, 'Poupança', 0.01, 'abc'),
	(18, 'Poupança', 0.01, 'abc'),
	(19, 'Poupança', 0.01, 'abc'),
	(20, 'Poupança', 0.01, 'abc');
/*!40000 ALTER TABLE `conta` ENABLE KEYS */;

-- Copiando estrutura para tabela agencia3si2023.contavinculada
CREATE TABLE IF NOT EXISTS `contavinculada` (
  `CLIENTE_idCLIENTE` int(11) NOT NULL,
  `CONTA_idCONTA` int(11) NOT NULL,
  `dataAbertura` date NOT NULL,
  PRIMARY KEY (`CLIENTE_idCLIENTE`,`CONTA_idCONTA`),
  KEY `fk_CLIENTE_has_CONTA_CONTA1_idx` (`CONTA_idCONTA`),
  KEY `fk_CLIENTE_has_CONTA_CLIENTE_idx` (`CLIENTE_idCLIENTE`),
  CONSTRAINT `fk_CLIENTE_has_CONTA_CLIENTE` FOREIGN KEY (`CLIENTE_idCLIENTE`) REFERENCES `cliente` (`idCLIENTE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CLIENTE_has_CONTA_CONTA1` FOREIGN KEY (`CONTA_idCONTA`) REFERENCES `conta` (`idCONTA`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela agencia3si2023.contavinculada: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `contavinculada` DISABLE KEYS */;
INSERT INTO `contavinculada` (`CLIENTE_idCLIENTE`, `CONTA_idCONTA`, `dataAbertura`) VALUES
	(1, 1, '2023-04-27'),
	(35, 13, '2023-04-27'),
	(36, 14, '2023-04-27'),
	(37, 16, '2023-05-09'),
	(38, 17, '2023-05-09'),
	(39, 18, '2023-05-09'),
	(40, 19, '2023-05-09'),
	(41, 20, '2023-05-09');
/*!40000 ALTER TABLE `contavinculada` ENABLE KEYS */;

-- Copiando estrutura para view agencia3si2023.v_agenda1
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_agenda1` (
	`idCliente` INT(11) NOT NULL,
	`nome` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`telefone` VARCHAR(45) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view agencia3si2023.v_clientesordemcrescente
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_clientesordemcrescente` (
	`nome` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`cpf` VARCHAR(45) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view agencia3si2023.v_contasclientes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_contasclientes` (
	`nome` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`tipo` ENUM('Salário','Corrente','Poupança') NOT NULL COLLATE 'utf8_general_ci',
	`saldo` FLOAT(10,2) NOT NULL
) ENGINE=MyISAM;

-- Copiando estrutura para view agencia3si2023.v_nascimentoclientes
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_nascimentoclientes` (
	`nome` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`dataNascimento` VARCHAR(10) NULL COLLATE 'utf8mb4_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view agencia3si2023.v_totalfinanceiro
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_totalfinanceiro` (
	`SUM(saldo)` DOUBLE(19,2) NULL
) ENGINE=MyISAM;

-- Copiando estrutura para trigger agencia3si2023.tri_alteraDataAberturaConta
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_alteraDataAberturaConta
AFTER UPDATE 
ON cliente
FOR EACH ROW
BEGIN
	IF(OLD.cpf <>NEW.cpf) then
		UPDATE contavinculada SET dataAbertura = CURRENT_DATE()
		WHERE CLIENTE_idCliente = OLD.idCliente;
	END if;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger agencia3si2023.tri_atualizaSaldoPoupança
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_atualizaSaldoPoupança` BEFORE UPDATE ON `conta` FOR EACH ROW BEGIN
	if(old.senha != NEW.senha)
	THEN if(new.tipo = "Poupança")
			then SET new.saldo = OLD.saldo + 0.10;
			END if;
	END if;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger agencia3si2023.tri_insereClientePoupanca_e_CalculaIdade
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_insereClientePoupanca_e_CalculaIdade` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
	INSERT INTO conta VALUES(NULL, "Poupança", 0.01, "abc");
	
	SELECT idConta INTO @idNovaConta 
	FROM conta ORDER BY idConta DESC LIMIT 1;
	
	SELECT idCliente INTO @idNovoCliente
	FROM cliente ORDER BY idCliente DESC LIMIT 1;
	
	INSERT INTO contavinculada VALUES(@idNovoCliente, @idNovaConta, CURRENT_DATE());
	
	#Calculo da Idade do Cliente 
	SELECT floor(DATEDIFF(CURDATE(),new.dataNascimento)/365) INTO @idade FROM cliente WHERE idCLIENTE = NEW.idCliente;
	IF(@idade < 18) 
		THEN
			SET @mensagem = CONCAT("Cliente: [",NEW.idCliente,"] - Não possui 18 anos");
			INSERT INTO auditoria VALUES (NULL,@mensagem,"cliente",NOW(),USER());
	END if;
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger agencia3si2023.tri_LogApagaConta
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `agencia3si2023`.`tri_LogApagaConta` AFTER DELETE ON `conta` FOR EACH ROW
BEGIN
	set @mensagem = CONCAT("Conta Removida: ID [",old.idCONTA,"]");
    
    INSERT INTO auditoria VALUES (NULL,@mensagem,"conta",NOW(),USER());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger agencia3si2023.tri_LogApagaContaVinculada
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_LogApagaContaVinculada
AFTER DELETE 
ON contavinculada
FOR EACH ROW 
BEGIN
	SELECT nome INTO @nomeCliente FROM cliente
	WHERE idCliente = OLD.CLIENTE_idCliente;
	
	SET @mensagem = CONCAT("Exclusão de conta do cliente: ", @nomeCliente);

	INSERT INTO auditoria 
	VALUES(NULL, @mensagem, "contavinculada", NOW(), USER());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger agencia3si2023.tri_LogFiscalizaCpf
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogFiscalizaCpf` AFTER UPDATE ON `cliente` FOR EACH ROW BEGIN	
	SET @mensagem = CONCAT("CPF do cliente: ", NEW.nome, " foi alterado para ", NEW.cpf);
	
	INSERT INTO auditoria 
	VALUES(NULL, @mensagem, "cliente", NOW(), USER());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger agencia3si2023.tri_LogInsereConta
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER `tri_LogInsereConta` AFTER INSERT ON `conta` FOR EACH ROW BEGIN
	SET @mensagem = CONCAT("Conta inserida: ", NEW.idCONTA, " tipo: ", NEW.tipo, " saldo: R$", NEW.saldo);
	
	INSERT INTO auditoria 
	VALUES(NULL, @mensagem, "conta", NOW(), USER());
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para view agencia3si2023.v_agenda1
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_agenda1`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_agenda1` AS (SELECT idCliente, nome, telefone FROM cliente WHERE telefone IS NOT NULL) ;

-- Copiando estrutura para view agencia3si2023.v_clientesordemcrescente
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_clientesordemcrescente`;
CREATE ALGORITHM=MERGE SQL SECURITY DEFINER VIEW `v_clientesordemcrescente` AS (select `cliente`.`nome` AS `nome`,`cliente`.`cpf` AS `cpf` from `cliente` order by `cliente`.`nome`) ;

-- Copiando estrutura para view agencia3si2023.v_contasclientes
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_contasclientes`;
CREATE ALGORITHM=MERGE SQL SECURITY DEFINER VIEW `v_contasclientes` AS select `cli`.`nome` AS `nome`,`con`.`tipo` AS `tipo`,`con`.`saldo` AS `saldo` from ((`cliente` `cli` join `conta` `con`) join `contavinculada` `cv` on(((`cli`.`idCLIENTE` = `cv`.`CLIENTE_idCLIENTE`) and (`con`.`idCONTA` = `cv`.`CONTA_idCONTA`)))) ;

-- Copiando estrutura para view agencia3si2023.v_nascimentoclientes
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_nascimentoclientes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_nascimentoclientes` AS (SELECT nome, date_FORMAT(dataNascimento, "%d/%m/%Y") AS dataNascimento FROM cliente) ;

-- Copiando estrutura para view agencia3si2023.v_totalfinanceiro
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_totalfinanceiro`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_totalfinanceiro` AS (select sum(`conta`.`saldo`) AS `SUM(saldo)` from `conta`) ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
