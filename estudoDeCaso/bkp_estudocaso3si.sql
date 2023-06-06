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


-- Copiando estrutura do banco de dados para estudocaso3si
DROP DATABASE IF EXISTS `estudocaso3si`;
CREATE DATABASE IF NOT EXISTS `estudocaso3si` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `estudocaso3si`;

-- Copiando estrutura para tabela estudocaso3si.cidade
DROP TABLE IF EXISTS `cidade`;
CREATE TABLE IF NOT EXISTS `cidade` (
  `codCidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL DEFAULT '',
  `uf` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`codCidade`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela estudocaso3si.cidade: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` (`codCidade`, `nome`, `uf`) VALUES
	(1, 'Machado', 'MG'),
	(2, 'São Paulo', 'SP');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;

-- Copiando estrutura para tabela estudocaso3si.funcionario
DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `codFuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `salario` double NOT NULL,
  `nascimento` date NOT NULL,
  `objCidade` int(11) NOT NULL,
  PRIMARY KEY (`codFuncionario`),
  KEY `objCidade` (`objCidade`),
  CONSTRAINT `FK__cidade` FOREIGN KEY (`objCidade`) REFERENCES `cidade` (`codCidade`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela estudocaso3si.funcionario: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` (`codFuncionario`, `nome`, `salario`, `nascimento`, `objCidade`) VALUES
	(1, 'Tulio', 1000, '2023-06-05', 1),
	(2, 'Salomão', 12000, '2003-07-15', 2),
	(3, 'Pedro', 15000, '2003-12-27', 1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
