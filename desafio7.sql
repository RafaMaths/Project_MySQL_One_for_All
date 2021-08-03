CREATE VIEW perfil_artistas AS
SELECT a.nome_artista AS `artista`, al.nome_album AS `album`, COUNT(s.usuario_id) AS `seguidores` FROM artista a
INNER JOIN seguidor s
ON a.artista_id = s.artista_id
INNER JOIN album al
ON  al.artista_id = s.artista_id
GROUP BY album
ORDER BY seguidores DESC;
