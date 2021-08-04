-- DELIMITER $$
-- CREATE TRIGGER trigger_usuario_delete AFTER DELETE ON usuario
-- FOR EACH ROW
-- BEGIN
--   DELETE FROM seguidor
--     WHERE seguidor.id_usuario = usuario.id_usuario,
--   DELETE FROM historico
--     WHERE historico.id_usuario = usuario.id_usuario;
-- END $$
-- DELIMITER ;

-- DELETE FROM SpotifyClone.usuario
-- WHERE usuario_id = 1;

-- DROP TRIGGER trigger_usuario_delete;
