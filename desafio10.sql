DELIMITER $$
CREATE FUNCTION quantidade_musicas_no_historico(nomeUsuario VARCHAR(50))
RETURNS VARCHAR(50) READS SQL DATA
BEGIN
DECLARE total_musica INT;
SELECT count(c.cancao_id) FROM cancao c
INNER JOIN historico h
ON c.cancao_id = h.cancao_id
INNER JOIN usuario u
ON u.usuario_id = h.usuario_id
WHERE nomeUsuario = u.nome_usuario
INTO total_musica;
RETURN total_musica;
END $$
DELIMITER ;
select quantidade_musicas_no_historico('Bill');
