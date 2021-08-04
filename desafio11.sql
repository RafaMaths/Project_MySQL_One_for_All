CREATE VIEW cancoes_premium AS
SELECT c.nome_cancao AS 'nome', count(h.usuario_id) AS 'reproducoes' FROM cancao c
INNER JOIN historico h
ON c.cancao_id = h.cancao_id
INNER JOIN usuario u
ON h.usuario_id = u.usuario_id
WHERE u.plano_id <> 1
GROUP BY c.nome_cancao
ORDER BY c.nome_cancao;
