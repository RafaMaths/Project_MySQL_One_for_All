CREATE VIEW top_hits_do_momento AS
SELECT c.nome_cancao AS `cancao`, COUNT(h.cancao_id) AS `reproducoes` FROM cancao c
INNER JOIN historico h
ON c.cancao_id = h.cancao_id
WHERE c.cancao_id = h.cancao_id
GROUP BY h.cancao_id
ORDER BY reproducoes DESC, cancao
LIMIT 2;
