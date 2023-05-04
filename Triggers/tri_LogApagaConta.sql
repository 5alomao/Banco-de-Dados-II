DELIMITER $
CREATE TRIGGER "tri_LogApagaConta" 
AFTER DELETE 
ON conta
FOR EACH ROW 
BEGIN
	SET @mensagem = CONCAT("Conta Removida: ID [",old.idCONTA,"]");
    
   INSERT INTO auditoria VALUES (NULL,@mensagem,"conta",NOW(),USER());
END$
DELIMITER ;