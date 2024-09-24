create database pizzaria;
use pizzaria;

create table cliente(
cliente_id integer not null primary key auto_increment,
telefone varchar (15),
nome varchar(30),
logradouro varchar(30),
numero decimal(5,0),
complemento varchar (30),
bairro Varchar(30),
referencia varchar(30)
);
create table pedido(
pedido_id integer not null primary key auto_increment,
cliente_id integer,
hora datetime,
valor decimal(5,2),
foreign key(cliente_id) references cliente (cliente_id)
);
create table pizza(
pizza_id integer not null primary key auto_increment,
nome varchar(30),
descricao varchar(30),
valor decimal(4,2)
);
create table item_pedido(
pedido_id integer not null,
pizza_id integer not null,
quantidade decimal (2,0),
valor decimal(5,2),
foreign key (pedido_id) references pedido (pedido_id),
foreign key (pizza_id) references pizza (pizza_id)
);
insert into pizza(nome,descricao,valor) values ('calabreza','hmmmm gostoso',12.99);
insert into pizza(nome,descricao,valor) values ('portuguesa','hmmmm gostoso2.0',15.50);
insert into pizza(nome,descricao,valor) values ('4 queijos','hmmmm gostoso3.0',16.50);
insert into pizza(nome,descricao,valor) values ('provolone','hmmmm gostoso4.0',17.50);

insert into cliente(telefone,nome,logradouro,numero,complemento,bairro,referencia) values('13212','joaozinho','seilaoqueissoseguinifica',2.4,'nada','Ubirama','esse cara e bom');
-- select * from pizza
-- select nome, valor from pizza
-- select nome, valor as R$ from pizza
-- select nome, valor, valor*1.1 as novo_valor from pizza
