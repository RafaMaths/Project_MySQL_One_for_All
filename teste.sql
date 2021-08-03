select nome_cancao as cancao, count(cancao_id) as reproducoes from cancao c
inner join historico h
on c.cancao_id = h.cancao_id
WHERE 
ORDER BY nome_cancao;