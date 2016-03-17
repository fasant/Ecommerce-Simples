DROP TABLE IF EXISTS usuario;
CREATE TABLE usuario(
	login varchar(20) PRIMARY KEY,
	senha varchar(50),
	papel varchar(20)
	); 
INSERT INTO usuario VALUES ('root','root','ADM');
SELECT * FROM usuario;
