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

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
