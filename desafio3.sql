CREATE VIEW historico_reproducao_usuarios AS
SELECT u.nome_usuario AS 'usuario',  c.nome_cancao AS 'nome' FROM usuario u
INNER JOIN historico h
ON u.usuario_id = h.usuario_id
INNER JOIN cancao c
ON c.cancao_id = h.cancao_id
ORDER BY u.nome_usuario, c.nome_cancao;
