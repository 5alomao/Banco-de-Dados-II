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


-- Copiando estrutura do banco de dados para computerevents3si
DROP DATABASE IF EXISTS `computerevents3si`;
CREATE DATABASE IF NOT EXISTS `computerevents3si` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `computerevents3si`;

-- Copiando estrutura para tabela computerevents3si.apoio
DROP TABLE IF EXISTS `apoio`;
CREATE TABLE IF NOT EXISTS `apoio` (
  `PATROCINADOR_codPatrocinador` int(11) NOT NULL,
  `EVENTO_codEvento` int(11) NOT NULL,
  KEY `EVENTO_codEvento` (`EVENTO_codEvento`),
  KEY `PATROCINADOR_codPatrocinador` (`PATROCINADOR_codPatrocinador`),
  CONSTRAINT `EVENTO_codEvento` FOREIGN KEY (`EVENTO_codEvento`) REFERENCES `evento` (`codEvento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PATROCINADOR_codPatrocinador` FOREIGN KEY (`PATROCINADOR_codPatrocinador`) REFERENCES `patrocinador` (`codPatrocinador`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela computerevents3si.atividade
DROP TABLE IF EXISTS `atividade`;
CREATE TABLE IF NOT EXISTS `atividade` (
  `codAtividade` int(11) NOT NULL AUTO_INCREMENT,
  `tema` varchar(150) NOT NULL,
  `local` varchar(150) NOT NULL,
  `dataHoraInicio` datetime NOT NULL,
  `dataHoraTermino` datetime NOT NULL,
  `numVagas` int(11) NOT NULL,
  `PALESTRANTE_codPalestrante` int(11) NOT NULL,
  `tipo` enum('Palestra Presencial','Palestra On-line','Mini-Curso','Roda de Conversa') NOT NULL,
  `EVENTO_codEvento` int(11) NOT NULL,
  PRIMARY KEY (`codAtividade`,`PALESTRANTE_codPalestrante`,`EVENTO_codEvento`),
  KEY `fk_ATIVIDADE_PALESTRANTE1_idx` (`PALESTRANTE_codPalestrante`),
  KEY `fk_ATIVIDADE_EVENTO1_idx` (`EVENTO_codEvento`),
  CONSTRAINT `fk_ATIVIDADE_EVENTO1` FOREIGN KEY (`EVENTO_codEvento`) REFERENCES `evento` (`codEvento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ATIVIDADE_PALESTRANTE1` FOREIGN KEY (`PALESTRANTE_codPalestrante`) REFERENCES `palestrante` (`codPalestrante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela computerevents3si.evento
DROP TABLE IF EXISTS `evento`;
CREATE TABLE IF NOT EXISTS `evento` (
  `codEvento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `dataInicio` date NOT NULL,
  `dataTermino` date NOT NULL,
  PRIMARY KEY (`codEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela computerevents3si.inscricao
DROP TABLE IF EXISTS `inscricao`;
CREATE TABLE IF NOT EXISTS `inscricao` (
  `PARTICIPANTE_codParticipante` int(11) NOT NULL,
  `ATIVIDADE_codAtividade` int(11) NOT NULL,
  `checkin` datetime DEFAULT NULL,
  PRIMARY KEY (`PARTICIPANTE_codParticipante`,`ATIVIDADE_codAtividade`),
  KEY `fk_PARTICIPANTE_has_ATIVIDADE_ATIVIDADE1_idx` (`ATIVIDADE_codAtividade`),
  KEY `fk_PARTICIPANTE_has_ATIVIDADE_PARTICIPANTE1_idx` (`PARTICIPANTE_codParticipante`),
  CONSTRAINT `fk_PARTICIPANTE_has_ATIVIDADE_ATIVIDADE1` FOREIGN KEY (`ATIVIDADE_codAtividade`) REFERENCES `atividade` (`codAtividade`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PARTICIPANTE_has_ATIVIDADE_PARTICIPANTE1` FOREIGN KEY (`PARTICIPANTE_codParticipante`) REFERENCES `participante` (`codParticipante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela computerevents3si.palestrante
DROP TABLE IF EXISTS `palestrante`;
CREATE TABLE IF NOT EXISTS `palestrante` (
  `codPalestrante` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(200) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  PRIMARY KEY (`codPalestrante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela computerevents3si.participante
DROP TABLE IF EXISTS `participante`;
CREATE TABLE IF NOT EXISTS `participante` (
  `codParticipante` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(150) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `TURMA_codTurma` int(11) NOT NULL,
  PRIMARY KEY (`codParticipante`,`TURMA_codTurma`),
  KEY `fk_PARTICIPANTE_TURMA_idx` (`TURMA_codTurma`),
  CONSTRAINT `fk_PARTICIPANTE_TURMA` FOREIGN KEY (`TURMA_codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela computerevents3si.patrocinador
DROP TABLE IF EXISTS `patrocinador`;
CREATE TABLE IF NOT EXISTS `patrocinador` (
  `codPatrocinador` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `tipo` enum('Pessoa Física','Pessoa Jurídica') DEFAULT NULL,
  PRIMARY KEY (`codPatrocinador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela computerevents3si.turma
DROP TABLE IF EXISTS `turma`;
CREATE TABLE IF NOT EXISTS `turma` (
  `codTurma` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(45) NOT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codTurma`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
