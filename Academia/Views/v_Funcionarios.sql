CREATE VIEW v_Funcionarios AS
(SELECT f.codFuncionario AS CODIGO,
f.nomeFuncionario AS NOME,
f.cpfFuncionario AS CPF,
f.emailFuncionario AS EMAIL,
f.telefoneFuncionario AS TELEFONE,
c.nomeCargo AS "Cargo"
FROM funcionario f INNER JOIN cargo c ON c.codCargo = f.cargo_codCargo);