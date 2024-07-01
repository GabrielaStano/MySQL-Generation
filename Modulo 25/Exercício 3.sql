create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias (
categoriaId bigint auto_increment,
nome varchar(255) not null,
descricao varchar(255) not null,
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
foreign key(categoriaId) references tb_categorias(categoriaId));

INSERT INTO tb_categorias (nome, descricao) VALUES
    ('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças.'),
    ('Suplementos', 'Produtos para complementar a dieta alimentar.'),
    ('Higiene', 'Produtos de higiene pessoal e cuidados diários.'),
    ('Cosméticos', 'Produtos de beleza e cuidados com a pele.'),
    ('Infantil', 'Produtos específicos para cuidados infantis.');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoriaId) VALUES
    ('Paracetamol', 'Medicamento para alívio da dor e febre.', 5.00, 100, 1),
    ('Ibuprofeno', 'Medicamento anti-inflamatório e analgésico.', 8.50, 200, 1),
    ('Vitamina C', 'Suplemento vitamínico para reforço imunológico.', 12.00, 150, 2),
    ('Ômega 3', 'Suplemento de ácidos graxos essenciais.', 25.00, 120, 2),
    ('Shampoo Anticaspa', 'Shampoo para tratamento de caspa.', 18.00, 80, 3),
    ('Sabonete Líquido', 'Sabonete líquido para uso diário.', 6.00, 250, 3),
    ('Protetor Solar', 'Protetor solar FPS 50 para proteção da pele.', 45.00, 50, 4),
    ('Pomada para Assaduras', 'Pomada para prevenção de assaduras em bebês.', 15.00, 60, 5);



select * from tb_produtos where preco > 10.00;
select * from tb_produtos where preco between 5.00 and 60.00;
select * from tb_produtos where nome like "%c%";

SELECT 
   p.produtoId,
   p.nome as nome_produto,
   p.descricao as descricao_produto,
   p.preco,
   p.estoque,
	c.nome as nome_categoria,
    c.descricao as descricao_categoria
FROM 
    tb_produtos p
INNER JOIN 
    tb_categorias c ON p.categoriaId = c.categoriaId;

SELECT 
    p.produtoId,
    p.nome as nome_produto,
    p.descricao as descricao_produto,
    p.preco,
    p.estoque,
    c.nome as nome_categoria,
    c.descricao as descricao_categoria
FROM 
    tb_produtos p
INNER JOIN 
    tb_categorias c ON p.categoriaId = c.categoriaId
WHERE 
    c.nome = 'Medicamentos';