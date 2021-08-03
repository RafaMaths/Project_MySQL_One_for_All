CREATE VIEW top_3_artistas AS
SELECT a.nome_artista AS `artista`, COUNT(s.artista_id) AS `seguidores` FROM artista a
INNER JOIN seguidor s
ON a.artista_id = s.artista_id
GROUP BY a.nome_artista
ORDER BY seguidores DESC, artista
LIMIT 3;
