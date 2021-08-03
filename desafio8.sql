 DELIMITER $$

 CREATE TRIGGER trigger_usuario_delete
  AFTER DELETE ON usuario --posso dizer que minha trigger será executada antes (BEFORE) ou depois (AFTER) de um evento
 FOR EACH ROW
 BEGIN 
  SET NEW.status_postagem = 'Aguardando Aprovação'
  SET NEW.data_abertura = NOW();
 END $$

 DELIMITER ;

 Para uma ação de Insert, Update ou Delete eu coloco um gatilho para disparar;

 DELIMITER $$

 CREATE TRIGGER trigger_postagem_insert
  BEFORE INSERT ON postagem --posso dizer que minha trigger será executada antes (BEFORE) ou depois (AFTER) de um evento
 FOR EACH ROW
 BEGIN 
  SET NEW.status_postagem = 'Aguardando Aprovação'
  SET NEW.data_abertura = NOW();
 END $$

 DELIMITER ;

 > VER RESULTADO

 INSERT INTO perfil(saldo) VALUES (2500);

SELECT * FROM perfil;