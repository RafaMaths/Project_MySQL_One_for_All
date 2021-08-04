DELIMITER $$;
CREATE PROCEDURE albuns_do_artista(IN nome_artista VARCHAR(50))
BEGIN
SELECT a.nome_artista AS `artista`, al.nome_album AS `album`  FROM artista a
INNER JOIN album al
ON a.artista_id = al.artista_id
WHERE a.nome_artista = nome_artista
ORDER BY album;
END $$;
DELIMITER ; 
CALL albuns_do_artista('Walter Phoenix');
