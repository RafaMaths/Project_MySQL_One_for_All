-- CREATE VIEW estatisticas_musicais AS
SELECT count(c.cancao_id) AS `cancoes`, count(ar.artista_id) AS `artistas`, count(al.album_id) FROM 
cancao c
INNER JOIN artista ar
ON c.artista_id = ar.artista_id
INNER JOIN album al
ON ar.artista_id = al.artista_id;
