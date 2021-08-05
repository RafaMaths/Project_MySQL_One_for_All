DELIMITER $$
CREATE TRIGGER trigger_usuario_delete AFTER DELETE ON usuario
FOR EACH ROW
BEGIN
DELETE FROM seguidor
WHERE seguidor.id_usuario = OLD.id_usuario;
DELETE FROM historico
WHERE historico.id_usuario = OLD.id_usuario;
END $$
DELIMITER ;
