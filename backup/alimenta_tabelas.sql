-- alimenta tabela artista
INSERT INTO artista (nome_artista) VALUES
('Freedie Shannon'),
('Lance Day'),
('Peter Strong'),
('Walter Phoenix');

-- alimenta tabela plano
INSERT INTO plano (nome_plano, valor_plano) VALUES
('gratuito', 0),
('universitário', 5.99),
('familiar', 7.99);

-- alimenta tabela cancao com ID's
INSERT INTO cancao (nome_cancao, artista_id, album_id) VALUES
('Celebration Of More', 3, 3),
('Dance With Her Own', 4, 1),
('Diamond Power', 2, 4),
('Fantasy For Me', 3, 3),
('Home Forever', 2, 4),
("Honey, Let's Be Silly", 2, 4),
('Honey, So Do I', 3, 3),
('Magic Circus', 3, 3),
('Reflections Of Magic', 4, 1),
('Rock His Everything', 2, 4),
('She Knows', 3, 3),
('Soul For Us', 4, 1),
("Sweetie, Let's Go Wild", 3, 3),
('Thang Of Thunder', 1, 5),
('Time Fireworks', 4, 2),
('Troubles Of My Inner Fire', 4, 2),
('Without My Streets', 1, 5 ),
('Words Of Her Life', 1, 5 );

-- alimenta tabela cancao
-- INSERT INTO cancao (nome_cancao, artista_id, album_id) VALUES
-- ('Celebration Of More'),
-- ('Dance With Her Own'),
-- ('Diamond Power'),
-- ('Fantasy For Me'),
-- ('Home Forever'),
-- ("Honey, Let's Be Silly"),
-- ('Honey, So Do I'),
-- ('Magic Circus'),
-- ('Reflections Of Magic'),
-- ('Rock His Everything'),
-- ('She Knows'),
-- ('Soul For Us'),
-- ("Sweetie, Let's Go Wild"),
-- ('Thang Of Thunder'),
-- ('Time Fireworks'),
-- ('Troubles Of My Inner Fire'),
-- ('Without My Streets'),
-- ('Words Of Her Life');


-- alimenta tabela album
INSERT INTO album (nome_album) VALUES
('Envious'),
('Exuberant'),
('Hallowed Steam'),
('Incandescent'),
('Temporary Culture');

-- alimenta tabela usuario
INSERT INTO usuario (nome_usuario, idade) VALUES
('Thati', 23),
('Cintia', 35),
('Bill', 20),
('Roger', 45);

-- alimenta tabela historico
INSERT INTO historico (usuario_id, cancao_id) VALUES
(1, 12),
(1, 8),
(1, 3),
(1, 14),
(2, 5),
(2, 18),
(2, 9),
(2, 6),
(3, 16),
(3, 14),
(3, 8),
(4, 2),
(4, 17),
(4, 1);


INSERT INTO seguidor (usuario_id, artista_id) VALUES
(1, 4),
(1, 1),
(1, 2),
(2, 4),
(2, 2),
(3, 3),
(3, 4),
(4, 1);