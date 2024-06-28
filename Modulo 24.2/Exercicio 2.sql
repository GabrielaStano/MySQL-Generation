create database db_livraria;
use db_livraria;
create table tb_livros(
	id bigint auto_increment,
    nome varchar(200) not null,
    autor varchar(200) not null,
    editora varchar(100) not null,
    quantidade int,
    preco decimal not null,
    primary key (id)
);

insert into tb_livros (nome, autor, editora, quantidade, preco)
values("Manual de animação", "Richard Williams", "Senac São Paulo", 10, 156.56);
insert into tb_livros (nome, autor, editora, quantidade, preco)
values("Plantas alimentícias não convencionais (PANC) no Brasil", "Valdely Ferreira Kinupp e Harri Lorenzi", "Plantarum", 8, 149.00);
insert into tb_livros (nome, autor, editora, quantidade, preco)
values("A bíblia do Yoga", "Christina Brown", "Pensamento", 5, 60.49);
insert into tb_livros (nome, autor, editora, quantidade, preco)
values("My Neighbor Totoro: The Novel", "Tsugiko bubo (autor) Hayao Miyazaki (illustrador)", "Viz Media", 100, 76.12);
insert into tb_livros (nome, autor, editora, quantidade, preco)
values("Agrofloresta: Aprendendo a cultivar com a natureza ", "Walter Steenbock ", "Bambual Editora", 50, 55.80);
insert into tb_livros (nome, autor, editora, quantidade, preco)
values("Como as democracias morrem", " Steven Levitsky (Autor), Daniel Ziblatt (Autor), Renato Aguiar (Tradutor) ", "Zahar", 520, 61.60);
insert into tb_livros (nome, autor, editora, quantidade, preco)
values("Autoperfeição com Hatha Yoga", " Jose Hermógenes", "BestSeller", 220, 43.43);
insert into tb_livros (nome, autor, editora, quantidade, preco)
values("Plantas Medicinais no Brasil", "Harri Lorenzi", "Plantarum",18, 203.92);

select * from tb_livros where preco > 500;
select * from tb_livros where preco < 500;

update tb_livros set quantidade = 99 where id = 4;

