
CREATE VIEW v_Cargos AS (
SELECT codCargo AS "Codigo",
tipoCargo AS "Cargo",
salarioCargo AS "Salario (R$)"
FROM cargo
);