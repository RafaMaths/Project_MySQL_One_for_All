CREATE VIEW estatisticas_musicais AS
SELECT count(c.nome_cancao) AS `cancoes`, count(DISTINCT ar.artista_id) AS `artistas`, count(DISTINCT c.album_id) AS `albuns` FROM cancao c
INNER JOIN artista ar
ON c.artista_id = ar.artista_id;
