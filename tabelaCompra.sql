CREATE TABLE compra(
	login varchar(20),
	id_prod int,
	id_compra int,
	data_compra date,
	PRIMARY KEY(id_compra,id_prod),
	FOREIGN KEY(id_prod) REFERENCES produto(id_prod),
	FOREIGN KEY(login) REFERENCES usuario(login)
);
