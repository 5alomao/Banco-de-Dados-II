

SELECT * FROM marca;
BEGIN;
	DELETE from marca WHERE codMarca = 7;
	DELETE from marca WHERE codMarca = 2;
commit;
SELECT * FROM marca;
