SELECT c.nome_cancao AS 'nome', count(h.usuario_id) AS 'reproducoes' FROM cancao c
INNER JOIN historico h
ON c.cancao_id = h.cancao_id
INNER JOIN usuario u
ON 
WHERE h.usuario_id <> ;