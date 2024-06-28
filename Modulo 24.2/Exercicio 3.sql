create database db_escola;
use db_escola;

create table tb_estudantes (
	id bigint auto_increment,
    nome varchar(255) not null,
    datadenascimento date not null,
	serie varchar(50) not null,
    nota decimal not null,
    contatoemergencia varchar(255) not null,
    primary key(id)
);

insert into tb_estudantes (nome, datadenascimento, serie, nota, contatoemergencia)
value ('Ana Silva', '2008-05-12', '8º Ano',4, 'Maria Silva - 91234-5678');
insert into tb_estudantes (nome, datadenascimento, serie, nota, contatoemergencia)
value ('João Souza', '2007-09-30', '9º Ano',8, 'Pedro Souza - 98765-4321');
insert into tb_estudantes (nome, datadenascimento, serie, nota, contatoemergencia)
value ('Beatriz Mendes', '2006-12-15', '1º Ano', 9, 'Laura Mendes - 99876-5432');
insert into tb_estudantes (nome, datadenascimento, serie, nota, contatoemergencia)
value ('Carlos Lima', '2008-03-22', '8º Ano', 6, 'Fernanda Lima - 91111-2222');
insert into tb_estudantes (nome, datadenascimento, serie, nota, contatoemergencia)
value ('Daniela Costa', '2005-07-07', '2º Ano', 2, 'Ricardo Costa - 92222-3333');
insert into tb_estudantes (nome, datadenascimento, serie, nota, contatoemergencia) VALUES
('Lucas Pereira', '2009-01-17', '7º Ano', 8.5, 'Marina Pereira - 92345-6789');
insert into tb_estudantes (nome, datadenascimento, serie, nota, contatoemergencia)VALUES
('Mariana Santos', '2008-11-03', '8º Ano', 10, 'Carlos Santos - 93456-7890');
insert into tb_estudantes (nome, datadenascimento, serie, nota, contatoemergencia) VALUES
('Gustavo Almeida', '2007-06-21', '9º Ano', 7.4, 'Sofia Almeida - 94567-8901');

select * from tb_estudantes where nota >7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 6 where id = 5;

select * from  tb_estudantes where id = 5;

