delete from categoria where categoria_pai_id is not null;
delete from categoria;

alter table categoria auto_increment = 1;

insert into categoria (descricao) values ('Informática');
insert into categoria (descricao) values ('Eletrodomésticos');
insert into categoria (descricao) values ('Móveis');

insert into categoria (descricao, categoria_pai_id) values ('Computadores', 1);
insert into categoria (descricao, categoria_pai_id) values ('Notebooks', 1);
insert into categoria (descricao, categoria_pai_id) values ('Tablets', 1);
insert into categoria (descricao, categoria_pai_id) values ('Monitores', 1);
insert into categoria (descricao, categoria_pai_id) values ('Impressoras', 1);
insert into categoria (descricao, categoria_pai_id) values ('Acessórios', 1);

insert into categoria (descricao, categoria_pai_id) values ('Ar condicionados', 2);
insert into categoria (descricao, categoria_pai_id) values ('Fogões', 2);
insert into categoria (descricao, categoria_pai_id) values ('Fornos elétricos', 2);
insert into categoria (descricao, categoria_pai_id) values ('Microondas', 2);
insert into categoria (descricao, categoria_pai_id) values ('Refrigeradores', 2);

insert into categoria (descricao, categoria_pai_id) values ('Cadeiras', 3);
insert into categoria (descricao, categoria_pai_id) values ('Mesas', 3);
insert into categoria (descricao, categoria_pai_id) values ('Racks', 3);
insert into categoria (descricao, categoria_pai_id) values ('Sofás', 3);


insert into cliente(doc_receita_federal,email,nome,tipo)value(00000000001,"tecnico100@gmail.com","wladimir","fisica");

insert into usuario(email,nome,senha)values("tecnico100@gmail.com","wladimir bernado",123);

insert into pedido
(data_criacao,
data_entrega,
entrega_cep,
entrega_cidade,entrega_logradouro,entrega_numero,entrega_uf,
forma_pagamento,status,
valor_desconto,
valor_frete,
valor_total,
cliente_id,vendedor_id)
values
('2013-08-17 11:25:00',
'2013-08-20',
34400000,
'Uberlandia',
'Rua das arvores grandes',
300,
'MG',
'DINHEIRO',
'ORCAMENTO',
0.00,
0.00,
1000.00,
1,
1);



http://www.objectdb.com/java/jpa/query/jpql/expression

https://www.lojasrenner.com.br/minha-sacola?_requestid=13103182