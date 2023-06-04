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


-- Copiando estrutura do banco de dados para computerevents3si
DROP DATABASE IF EXISTS `computerevents3si`;
CREATE DATABASE IF NOT EXISTS `computerevents3si` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela computerevents3si.apoio: ~3 rows (aproximadamente)
INSERT INTO `apoio` (`PATROCINADOR_codPatrocinador`, `EVENTO_codEvento`) VALUES
	(1, 1),
	(2, 1),
	(3, 1);

-- Copiando estrutura para tabela computerevents3si.atividade
DROP TABLE IF EXISTS `atividade`;
CREATE TABLE IF NOT EXISTS `atividade` (
  `codAtividade` int(11) NOT NULL AUTO_INCREMENT,
  `tema` varchar(150) NOT NULL,
  `tipo` enum('Palestra Presencial','Palestra On-line','Mini-Curso','Roda de Conversa') NOT NULL,
  `local` varchar(150) NOT NULL,
  `numVagas` int(11) NOT NULL,
  `vagasDisponiveis` int(11) DEFAULT NULL,
  `dataHoraInicio` datetime NOT NULL,
  `dataHoraTermino` datetime NOT NULL,
  `PALESTRANTE_codPalestrante` int(11) NOT NULL,
  `EVENTO_codEvento` int(11) NOT NULL,
  PRIMARY KEY (`codAtividade`,`PALESTRANTE_codPalestrante`,`EVENTO_codEvento`),
  KEY `fk_ATIVIDADE_PALESTRANTE1_idx` (`PALESTRANTE_codPalestrante`),
  KEY `fk_ATIVIDADE_EVENTO1_idx` (`EVENTO_codEvento`),
  CONSTRAINT `fk_ATIVIDADE_EVENTO1` FOREIGN KEY (`EVENTO_codEvento`) REFERENCES `evento` (`codEvento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ATIVIDADE_PALESTRANTE1` FOREIGN KEY (`PALESTRANTE_codPalestrante`) REFERENCES `palestrante` (`codPalestrante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela computerevents3si.atividade: ~3 rows (aproximadamente)
INSERT INTO `atividade` (`codAtividade`, `tema`, `tipo`, `local`, `numVagas`, `vagasDisponiveis`, `dataHoraInicio`, `dataHoraTermino`, `PALESTRANTE_codPalestrante`, `EVENTO_codEvento`) VALUES
	(1, 'Soft Skills', 'Palestra On-line', 'Google Meet', 400, 400, '2023-06-13 20:00:00', '2023-06-13 21:00:00', 1, 1),
	(2, 'React', 'Mini-Curso', 'Setor II - Lab3', 35, 35, '2023-06-13 13:15:00', '2023-06-13 17:00:00', 2, 1),
	(3, 'DevOps', 'Mini-Curso', 'Setor II - Lab5', 2, 2, '2023-06-13 13:15:00', '2023-06-13 17:00:00', 3, 1);

-- Copiando estrutura para tabela computerevents3si.evento
DROP TABLE IF EXISTS `evento`;
CREATE TABLE IF NOT EXISTS `evento` (
  `codEvento` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) NOT NULL,
  `dataInicio` date NOT NULL,
  `dataTermino` date NOT NULL,
  PRIMARY KEY (`codEvento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela computerevents3si.evento: ~1 rows (aproximadamente)
INSERT INTO `evento` (`codEvento`, `nome`, `dataInicio`, `dataTermino`) VALUES
	(1, 'VII Computer Day', '2023-06-13', '2023-06-13');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela computerevents3si.inscricao: ~1 rows (aproximadamente)

-- Copiando estrutura para tabela computerevents3si.palestrante
DROP TABLE IF EXISTS `palestrante`;
CREATE TABLE IF NOT EXISTS `palestrante` (
  `codPalestrante` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sobrenome` varchar(200) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  PRIMARY KEY (`codPalestrante`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela computerevents3si.palestrante: ~3 rows (aproximadamente)
INSERT INTO `palestrante` (`codPalestrante`, `nome`, `sobrenome`, `cpf`) VALUES
	(1, 'Gabriela', 'Couto', '32132132132'),
	(2, 'Juan', 'Pablo Farias', '13231213231'),
	(3, 'Kléber', 'Albino Moreira', '99988877722');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela computerevents3si.participante: ~2 rows (aproximadamente)
INSERT INTO `participante` (`codParticipante`, `nome`, `sobrenome`, `cpf`, `email`, `TURMA_codTurma`) VALUES
	(1, 'Salomão', 'Ferreira Junior', '17413319608', 'salomao.junior@alunos.ifsuldeminas.edu.br', 3),
	(2, 'Pedro', 'Franco Ferreira', '12312312312', 'pedro.ferreira@alunos.ifsuldeminas.edu.br', 3);

-- Copiando estrutura para tabela computerevents3si.patrocinador
DROP TABLE IF EXISTS `patrocinador`;
CREATE TABLE IF NOT EXISTS `patrocinador` (
  `codPatrocinador` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) NOT NULL,
  `tipo` enum('Pessoa Física','Pessoa Jurídica') DEFAULT NULL,
  PRIMARY KEY (`codPatrocinador`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela computerevents3si.patrocinador: ~3 rows (aproximadamente)
INSERT INTO `patrocinador` (`codPatrocinador`, `nome`, `tipo`) VALUES
	(1, 'Imédia Comunicação', 'Pessoa Jurídica'),
	(2, 'B2B Full', 'Pessoa Jurídica'),
	(3, 'iTop Telecom', 'Pessoa Jurídica');

-- Copiando estrutura para procedure computerevents3si.proc_InscricoesParticipanteX
DROP PROCEDURE IF EXISTS `proc_InscricoesParticipanteX`;
DELIMITER //
CREATE PROCEDURE `proc_InscricoesParticipanteX`(
	IN `codParticipanteBusca` INT,
	IN `codEventoBusca` INT
)
BEGIN
	SELECT atv.tema AS "Tema", atv.`local` AS "Local", atv.tipo AS "Tipo", CONCAT(pa.nome," ",pa.sobrenome) AS "Palestrante"
	FROM inscricao i
	INNER JOIN atividade atv ON atv.EVENTO_codEvento = codEventoBusca
	INNER JOIN palestrante pa ON atv.PALESTRANTE_codPalestrante = pa.codPalestrante
	INNER JOIN participante p ON i.PARTICIPANTE_codParticipante = codParticipanteBusca 
	INNER JOIN evento e ON e.codEvento = codEventoBusca GROUP BY atv.tema;
END//
DELIMITER ;

-- Copiando estrutura para procedure computerevents3si.proc_PatrocinadoresEventoX
DROP PROCEDURE IF EXISTS `proc_PatrocinadoresEventoX`;
DELIMITER //
CREATE PROCEDURE `proc_PatrocinadoresEventoX`(
	IN `codEventoBusca` INT
)
BEGIN
	SELECT pat.nome AS "Patrocinador(es)" FROM apoio a
	INNER JOIN patrocinador pat ON a.PATROCINADOR_codPatrocinador = pat.codPatrocinador
	INNER JOIN evento e ON a.EVENTO_codEvento = codEventoBusca;
END//
DELIMITER ;

-- Copiando estrutura para tabela computerevents3si.turma
DROP TABLE IF EXISTS `turma`;
CREATE TABLE IF NOT EXISTS `turma` (
  `codTurma` int(11) NOT NULL AUTO_INCREMENT,
  `sigla` varchar(45) NOT NULL,
  `descricao` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`codTurma`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- Copiando dados para a tabela computerevents3si.turma: ~11 rows (aproximadamente)
INSERT INTO `turma` (`codTurma`, `sigla`, `descricao`) VALUES
	(1, '1SI', '1º período Sistemas de Informação'),
	(2, '2SI', '2º período Sistemas de Informação'),
	(3, '3SI', '3º período Sistemas de Informação'),
	(4, '4SI', '4º período Sistemas de Informação'),
	(5, '5SI', '5º período Sistemas de Informação'),
	(6, '6SI', '6º período Sistemas de Informação'),
	(7, '7SI', '7º período Sistemas de Informação'),
	(8, '8SI', '8º período Sistemas de Informação'),
	(9, '1INFO', '1º ano Ensino Médio Técnico de Informática Integrado'),
	(10, '2INFO', '2º ano Ensino Médio Técnico de Informática Integrado'),
	(11, '3INFO', '3º ano Ensino Médio Técnico de Informática Integrado');

-- Copiando estrutura para view computerevents3si.v_atividades
DROP VIEW IF EXISTS `v_atividades`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_atividades` (
	`Id` INT(11) NOT NULL,
	`Tema` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`Tipo` ENUM('Palestra Presencial','Palestra On-line','Mini-Curso','Roda de Conversa') NOT NULL COLLATE 'utf8_general_ci',
	`Local` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci',
	`Vagas` INT(11) NOT NULL,
	`Disponiveis` INT(11) NULL,
	`Palestrante` VARCHAR(301) NOT NULL COLLATE 'utf8_general_ci',
	`Evento` VARCHAR(150) NOT NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para view computerevents3si.v_participantes
DROP VIEW IF EXISTS `v_participantes`;
-- Criando tabela temporária para evitar erros de dependência de VIEW
CREATE TABLE `v_participantes` (
	`Id` INT(11) NOT NULL,
	`Nome` VARCHAR(251) NOT NULL COLLATE 'utf8_general_ci',
	`E-mail` VARCHAR(255) NOT NULL COLLATE 'utf8_general_ci',
	`Turma` VARCHAR(150) NULL COLLATE 'utf8_general_ci'
) ENGINE=MyISAM;

-- Copiando estrutura para trigger computerevents3si.tri_CancelaInscricao
DROP TRIGGER IF EXISTS `tri_CancelaInscricao`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_CancelaInscricao
AFTER DELETE
ON inscricao
FOR EACH ROW
BEGIN

	UPDATE atividade SET vagasDisponiveis = vagasDisponiveis + 1 WHERE codAtividade = OLD.ATIVIDADE_codAtividade;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger computerevents3si.tri_NovaInscricao
DROP TRIGGER IF EXISTS `tri_NovaInscricao`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_NovaInscricao
BEFORE INSERT
ON inscricao
FOR EACH ROW
BEGIN

	UPDATE atividade SET vagasDisponiveis = vagasDisponiveis - 1 WHERE codAtividade = NEW.ATIVIDADE_codAtividade;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para trigger computerevents3si.tri_VagasDisponiveis
DROP TRIGGER IF EXISTS `tri_VagasDisponiveis`;
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER tri_VagasDisponiveis
BEFORE INSERT
ON atividade
FOR EACH ROW
BEGIN

	SET NEW.vagasDisponiveis = NEW.numVagas;

END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Copiando estrutura para view computerevents3si.v_atividades
DROP VIEW IF EXISTS `v_atividades`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_atividades`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_atividades` AS (
SELECT atv.codAtividade AS "Id",
atv.tema AS "Tema", atv.tipo AS "Tipo",
atv.`local` AS "Local",
atv.numVagas AS "Vagas",
atv.vagasDisponiveis AS "Disponiveis",
CONCAT(pa.nome," ",pa.sobrenome) AS "Palestrante",
e.nome AS "Evento" FROM atividade atv
INNER JOIN palestrante pa ON pa.codPalestrante = atv.PALESTRANTE_codPalestrante
INNER JOIN evento e ON e.codEvento = atv.EVENTO_codEvento
) ;

-- Copiando estrutura para view computerevents3si.v_participantes
DROP VIEW IF EXISTS `v_participantes`;
-- Removendo tabela temporária e criando a estrutura VIEW final
DROP TABLE IF EXISTS `v_participantes`;
CREATE ALGORITHM=UNDEFINED SQL SECURITY DEFINER VIEW `v_participantes` AS (SELECT
p.codParticipante AS "Id",
CONCAT(p.nome," ",p.sobrenome) AS "Nome",
p.email AS "E-mail",
t.descricao AS "Turma"
FROM participante p
INNER JOIN turma t ON p.TURMA_codTurma = t.codTurma
) ;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
