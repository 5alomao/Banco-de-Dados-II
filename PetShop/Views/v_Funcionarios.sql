
CREATE VIEW v_Funcionarios AS (
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
INNER JOIN cargo car ON f.CARGO_codCargo = car.codCargo);
