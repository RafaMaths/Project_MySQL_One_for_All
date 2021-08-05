DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(idUsuario INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_musica INT;
SELECT count(usuario_id) FROM historico
WHERE usuario_id = idUsuario
INTO total_musica;
RETURN total_musica;
END $$
DELIMITER ;
select quantidade_musicas_no_historico(3) INTO @total_musica;
