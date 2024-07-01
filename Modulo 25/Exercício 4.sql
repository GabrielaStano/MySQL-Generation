create database  db_cidade_das_carnes;

use  db_cidade_das_carnes;

create table  tb_categoria (
categoriaId bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) ,
tipo varchar(255) not null,
origem varchar(255),
primary key (categoriaid)
);

create table tb_produtos (
produtoId bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
preco decimal(10,2) not null,
estoque int not null,
categoriaId bigint,
primary key (produtoId),
foreign key(categoriaId) references tb_categoria(categoriaId));

INSERT INTO tb_categoria (nome, descricao, tipo, origem) VALUES
    ('Carnes Bovinas', 'Carnes provenientes de bovinos.', 'Carnes', 'Nacional'),
    ('Carnes Suínas', 'Carnes provenientes de suínos.', 'Carnes', 'Nacional'),
    ('Frutos do Mar', 'Produtos marinhos frescos.', 'Frutos do Mar', 'Nacional'),
    ('Aves', 'Carnes de aves diversas.', 'Carnes', 'Nacional'),
    ('Carnes Exóticas', 'Carnes exóticas e diferenciadas.', 'Carnes', 'Internacional');
    
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoriaId) VALUES
    ('Picanha', 'Picanha bovina selecionada.', 50.00, 20, 1),
    ('Contrafilé', 'Contrafilé bovino macio.', 45.00, 15, 1),
    ('Alcatra', 'Alcatra bovina de qualidade.', 40.00, 30, 1),
    ('Fraldinha', 'Fraldinha bovina para churrasco.', 38.00, 25, 1),
    ('Maminha', 'Maminha bovina macia e suculenta.', 42.00, 20, 1),
	('Lombo', 'Lombo suíno temperado.', 35.00, 25, 2),
    ('Costela', 'Costela suína defumada.', 30.00, 20, 2),
    ('Pernil', 'Pernil suíno temperado.', 32.00, 18, 2),
    ('Camarão', 'Camarão fresco de qualidade.', 65.00, 15, 3),
    ('Lula', 'Lula fresca para preparo.', 40.00, 20, 3),
    ('Peito de Frango', 'Peito de frango sem pele.', 20.00, 30, 4),
    ('Coxa de Peru', 'Coxa de peru fresca.', 28.00, 25, 4),
    ('Carne de Jacaré', 'Carne de jacaré selecionada.', 85.00, 10, 5),
    ('Carne de Canguru', 'Carne de canguru importada.', 95.00, 8, 5);
    
    
select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 50.00 and 150.00;
select * from tb_produtos where nome like "%c%";

SELECT
    p.produtoId,
    p.nome AS nome_produto,
    p.descricao AS descricao_produto,
    p.preco,
    p.estoque,
    c.nome AS nome_categoria,
    c.descricao AS descricao_categoria
FROM
    tb_produtos p
INNER JOIN
    tb_categoria c ON p.categoriaId = c.categoriaId; 


SELECT
    p.produtoId,
    p.nome AS nome_produto,
    p.descricao AS descricao_produto,
    p.preco,
    p.estoque,
    c.nome AS nome_categoria,
    c.descricao AS descricao_categoria
FROM
    tb_produtos p
INNER JOIN
    tb_categoria c ON p.categoriaId = c.categoriaId
WHERE
    c.nome = 'Carnes Bovinas';