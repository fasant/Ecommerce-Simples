DROP TABLE IF EXISTS produto;
CREATE TABLE produto(
	id_prod int PRIMARY KEY AUTO_INCREMENT,
	nome varchar(20) not null,
	descricao varchar(50),
	valor numeric not null,
	quantidade int 
	);  

insert into produto values(	0	,'Vans do Fer',	'	Vermelho	'	,	20	,	1	);
insert into produto values(	1	,'Vans do Fer',	'	Verde	'	,	23	,	2	);
insert into produto values(	2	,'Vans do Fer',	'	Amarelo	'	,	24	,	1	);
insert into produto values(	3	,'Vans do Fer',	'	Azul	'	,	12	,	2	);
insert into produto values(	4	,'Vans do Fer',	'	Azul Turquesa	'	,	24	,	3	);
insert into produto values(	5	,'Vans do Fer',	'	Verde com Branco	'	,	12	,	1	);
insert into produto values(	6	,'Vans do Fer',	'	Marrom	'	,	32	,	2	);
insert into produto values(	7	,'Vans do Fer',	'	Rosa Baby	'	,	20	,	4	);
insert into produto values(	8	,'Vans do Fer',	'	Vermelho e Marrom	'	,	20	,	1	);
insert into produto values(	9	,'Vans do Fer',	'	Preto de camurça	'	,	34	,	45	);
insert into produto values(	10	,'Vans do Fer',	'	Amarelo Mostarda	'	,	19	,	1	);
insert into produto values(	11	,'Vans do Fer',	'	Preto 	'	,	12	,	2	);
insert into produto values(	12	,'Vans do Fer',	'	Marrom de Couro 	'	,	24	,	3	);
insert into produto values(	13	,'Vans do Fer',	'	Prateado	'	,	12	,	1	);
insert into produto values(	14	,'Vans do Fer',	'	Dourado	'	,	24	,	2	);
insert into produto values(	15	,'Vans do Fer',	'	PowerRanger Vermelho	'	,	12	,	1	);
insert into produto values(	16	,'Vans do Fer',	'	Ben10	'	,	43	,	3	);
insert into produto values(	17	,'Vans do Fer',	'	Rosa Xadrezinho	'	,	54	,	5	);
insert into produto values(	18	,'Vans do Fer',	'	Lilás	'	,	20	,	1	);
insert into produto values(	19	,'Vans do Fer',	'	Verde Limão	'	,	45	,	2	);
insert into produto values(	20	,'Vans do Fer',	'	Preto e Vermelho	'	,	44	,	4	);
insert into produto values(	21	,'Vans do Fer',	'	Zebrinha	'	,	24	,	2	);
insert into produto values(	22	,'Vans do Fer',	'	Oncinha	'	,	27	,	24	);
SELECT * FROM produto;

