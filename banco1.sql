create database pizzaria;
use pizzaria;

create table cliente(
cliente_id integer not null primary key auto_increment,
telefone varchar (15),
nome varchar(30),
logradouro varchar(30) null,
numero decimal(5,0),
complemento varchar (30) null,
bairro Varchar(30),
referencia varchar(30) null
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
pedido_id integer not null auto_increment,
pizza_id integer not null,
quantidade int (2),
valor decimal(5,2),
foreign key (pedido_id) references pedido (pedido_id),
foreign key (pizza_id) references pizza (pizza_id)
);
insert into pizza(nome,descricao,valor) values ('calabreza','hmmmm gostoso',12.99);
insert into pizza(nome,descricao,valor) values ('portuguesa','hmmmm gostoso2.0',15.50);
insert into pizza(nome,descricao,valor) values ('4 queijos','hmmmm gostoso3.0',16.50);
insert into pizza(nome,descricao,valor) values ('provolone','hmmmm gostoso4.0',17.50);
insert into pizza(nome,descricao,valor) values ('vegano','hmmmm gostoso5.0',11.50);

-- insert into cliente(telefone,nome,logradouro,numero,complemento,bairro,referencia) values('13212','joaozinho','seilaoqueissoseguinifica',2.4,'nada','Ubirama','esse cara e bom');
-- select * from pizza
-- select nome, valor from pizza
-- select nome, valor as R$ from pizza
-- select nome, valor, valor*1.1 as novo_valor from pizza

insert into cliente (telefone,nome,logradouro,numero,complemento,bairro,referencia) values('2222222222','Bruna Dantas','rua das rosas',222,null,'Cantareira',null);
insert into cliente (telefone,nome,logradouro,numero,complemento,bairro,referencia) values('3333333333','Carlos Vieira','rua das avencas',333,null,'Bela Vista',null);
insert into cliente (telefone,nome,logradouro,numero,complemento,bairro,referencia) values('4444444444','Julia Silva','rua dos Cravos',444,null,'Cantareira','esquina do mercado');
insert into cliente (telefone,nome,logradouro,numero,complemento,bairro,referencia) values('5555555555','Mariana Silva','rua das Acacias',555,null,'Bela VIsta',null);
insert into cliente (telefone,nome,logradouro,numero,complemento,bairro,referencia) values('6666666666','Laura Madureira','rua das gardenias',666,null,'Cantareira',null);
insert into cliente (telefone,nome,logradouro,numero,complemento,bairro,referencia) values('7777777777','Laura Madureira2','rua das gardenias',666,null,'Cantareira',null);
insert into cliente (telefone,nome,logradouro,numero,complemento,bairro,referencia) values('8888888888','Laura Madureira3','rua das gardenias',666,null,'Cantareira',null);

insert into pedido(cliente_id,hora,valor) values (1,'2016-12-15 20:30',32.00);
insert into pedido(cliente_id,hora,valor) values (2,'2016-12-15 20:38',40.00);
insert into pedido(cliente_id,hora,valor) values (3,'2016-12-15 20:59',22.00);
insert into pedido(cliente_id,hora,valor) values (1,'2016-12-75 22:00',42.00);
insert into pedido(cliente_id,hora,valor) values (2,'2016-12-18 19:00',45.00);
insert into pedido(cliente_id,hora,valor) values (3,'2016-12-18 21:12',44.00);
insert into pedido(cliente_id,hora,valor) values (4,'2016-12-19 22:22',72.00);

insert into item_pedido(pizza_id,quantidade,valor) values (1,1,15.00);
insert into item_pedido(pizza_id,quantidade,valor) values (4,1,17.00);
insert into item_pedido(pizza_id,quantidade,valor) values (3,2,40.00);
insert into item_pedido(pizza_id,quantidade,valor) values (5,1,22.00);
insert into item_pedido(pizza_id,quantidade,valor) values (3,1,20.00);
insert into item_pedido(pizza_id,quantidade,valor) values (5,3,22.00);
insert into item_pedido(pizza_id,quantidade,valor) values (1,2,45.00);

select * from pedido where hora = (select min(hora) from pedido);
select * from pedido where hora = (select max(hora) from pedido); 

select * from pedido where valor = (select max(valor) from pedido); 
select * from pedido where valor = (select min(valor) from pedido); 

select upper(nome) from cliente;

select sum(valor) from pedido where hora like '18-12-2018%';

select datediff(hora);

select hora from pedido where (select datediff(min(hora),max(hora))from pedido);
