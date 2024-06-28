create database db_rh;
 use db_rh;
create table tb_funcionarios (
id bigint auto_increment,
nome varchar (60) not null,
cargo varchar (50) not null,
salario decimal not null,
valetransporte boolean,
valealimentacao boolean,
primary key(id)
);

insert into tb_funcionarios (nome, cargo, salario,valetransporte, valealimentacao)
value ('Vitor Gonçalves', "cinegrafista", 4000.00, true, true);
insert into tb_funcionarios (nome, cargo, salario,valetransporte, valealimentacao)
value ('Nando Rodrigues', "Produtor executivo", 5000.00, false, true);
insert into tb_funcionarios (nome, cargo, salario,valetransporte, valealimentacao)
value ('Gabriela Stano', "Editora", 4500.00, true, false);
insert into tb_funcionarios (nome, cargo, salario,valetransporte, valealimentacao)
value ('Arthur Guimarães', "Motion Designer", 3000.00, true, true);
insert into tb_funcionarios (nome, cargo, salario,valetransporte, valealimentacao)
value ('Sara da Silva', "Fotografa", 3500.00, false, false);



select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;
update tb_funcionarios set salario = 8000.00 where id = 1;
 