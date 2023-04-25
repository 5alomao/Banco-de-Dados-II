
SELECT * FROM marca;
BEGIN;
	INSERT INTO marca values(NULL,"Pro Plan");
	INSERT INTO marca values(NULL,"Royal Canin");
	INSERT INTO marca values(NULL,"Golden");
commit;
SELECT * FROM marca;