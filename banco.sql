create database coiso;
use coiso;

create table clientes(
id int not null primary key auto_increment,
cpf varchar(11),
rg varchar(9),
idade int (3),
telefone varchar (11),
nome varchar (100)
);

create table amigos(
id int not null primary key auto_increment,
nome varchar(100),
idade int (3),
altura decimal(1.2),
telefoe int(14),
sexo char(2),
cliente_id int not null,
foreign key(cliente_id) references clientes(id)
);

create table produtos(
id int not null primary key auto_increment,
quant int (10),
preco float (000.00),
bebida int(5),
carne int (5),
cereal int(5),
limpeza int(5),
salgados int(5),
doces int(5),
temperos int(5)
);
create table fornecedores(
codfor int not null auto_increment,
nome varchar (100),
fone int(11),
primary key(codfor)
);
create table produtos2(
codpro int not null auto_increment,
codfor int not null,
produto varchar(100),
preco decimal(5.2),
primary key(codpro),
foreign key(codfor) references fornecedores(codfor)
);
insert into fornecedores(nome,fone) values ('joao','666');
insert into produtos2(produto,preco,codfor) values ('goiaba','1.1',1);

