// Criação das tabelas
create table Pagamento(
	id int NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nome varchar(30) not null
);

create table Categoria(
	id int NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	nome varchar(30) not null
);

create table Empresa(
	id int NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	cnpj varchar(14) not null,
	nome varchar(50) not null,
	endereco varchar(100),
	telefone varchar(11),
	email varchar(50),
	responsavel varchar(50),
	idPagamento int references pagamento (id),
	idCategoria int references categoria (id)
);

create table Orcamento(
	id int NOT NULL GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	itens varchar(200) not null,
	idEmpresa int references empresa (id),
	data date not null,
	valorTotal int not null,
	validade varchar(30),
	entrega varchar(30)
);

/** Preenchimento das tabelas com exemplos
insert into pagamento (nome)
    values
    ('Débito'), ('Crédito'), ('Dinheiro'), ('Pix');
	
insert into categoria (nome)
	values
	('Ferro'), ('Tijolo'), ('Argamassa'), ('Madeira');
	
insert into empresa (cnpj, nome, idPagamento, idCategoria)
values 
	('12345678000101', 'Aço Itajaí', 2, 1),
	('12345678000102', 'Materias de Construção São João', 3, 2),
	('12345678000103', 'Max Mohr', 4, 3);
  
insert into orcamento (itens, idEmpresa, data, valorTotal, validade, entrega)
values
	('50 barras de ferro de 8mm', 1, '01/12/2022', 1600, '7 dias', 'No dia seguinte'),
	('5 mil tijolos 19x19x29', 2, '15/11/2022', 2400, '15 dias', 'Entrega agendada'),
	('18 m3 de Argamassa', 3, '08/11/2022', 1900, '7 dias', 'Após 3 dias');
*/
	
/** Selecionar todos os dados do orcamento
select o.itens, o.data, o.valorTotal, e.nome as empresa, e.cnpj, o.validade, 
	o.entrega, c.nome as categoria, p.nome as "Forma de Pagamento" from orcamento as o
inner join empresa as e
on o.idEmpresa = e.id
inner join categoria as c
on e.idCategoria = c.id
inner join pagamento as p
on e.idPagamento = p.id
*/