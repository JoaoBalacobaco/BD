create database exercicios;
use exercicios;

CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  email VARCHAR(100),
  idade INT,
  cidade VARCHAR(50),
  stats varchar(10)
);

insert into clientes(nome,email,idade,cidade,stats) values('João da Silva', 'joao@gmail.com', 30, 'São Paulo','ativo');
insert into clientes(nome,email,idade,cidade,stats) values('Maria Oliveira', 'maria@yahoo.com', 25, 'Campinas','ativo');
insert into clientes(nome,email,idade,cidade,stats) values('Pedro Souza', 'pedro@outlook.com', 35, 'Rio de Janeiro','ativo');

select * from clientes where cidade = 'São Paulo';
select email from clientes where idade >=  30;

UPDATE clientes SET cidade = 'Sorocaba' where nome = 'Maria Oliveira' ;
update clientes set email = 'cliente_rj@dominio.com.' where cidade = 'Rio de Janeiro';

delete from clientes where email = 'joao@gmail.com';
delete from clientes where idade <= 30;

-- desafio extra 
select * from clientes where stats = 'ativo';
update clientes set stats = 'inativo' where stats = 'ativo'






