CREATE TABLE artista(
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
    nome_artista VARCHAR(50) NOT NULL
)

CREATE TABLE album(
album_id INT PRIMARY KEY AUTO_INCREMENT,
nome_album VARCHAR(50) NOT NULL
)

CREATE TABLE plano(
plano_id INT PRIMARY KEY AUTO_INCREMENT,
nome_plano VARCHAR(20) NOT NULL,
valor_plano DECIMAL(3,2) NOT NULL
)


CREATE TABLE usuario(
usuario_id INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(50) NOT NULL,
idade INT NOT NULL,
plano_id INT NOT NULL,
FOREIGN KEY (plano_id) REFERENCES plano(plano_id) 
)

CREATE TABLE cancao(
cancao_id INT PRIMARY KEY AUTO_INCREMENT,
nome_cancao VARCHAR(100) NOT NULL,
artista_id INT NOT NULL,
album_id INT NOT NULL,
FOREIGN KEY (artista_id) REFERENCES artista(artista_id),
FOREIGN KEY (album_id) REFERENCES album(album_id) 
)

CREATE TABLE seguidor(
usuario_id INT NOT NULL,
artista_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (artista_id) REFERENCES artista(artista_id) 
)

CREATE TABLE historico(
usuario_id INT NOT NULL,
cancao_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(usuario_id, cancao_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
FOREIGN KEY (cancao_id) REFERENCES cancao(cancao_id) 
)



