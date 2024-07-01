create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias (
categoriaId bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
primary key (categoriaid)
);

create table tb_pizzas (
pizzasId bigint auto_increment,
nome varchar(255) not null,
ingredientes varchar(255) not null,
tamanho varchar(255) not null,
preco decimal(10,2) not null,
categoriaId bigint,
primary key (pizzasId),
foreign key(categoriaId) references tb_categorias(categoriaId));

INSERT INTO tb_categorias (tipo, descricao) VALUES
    ('Tradicional', 'Pizzas clássicas com ingredientes tradicionais.'),
    ('Especial', 'Pizzas com combinações especiais e gourmet.'),
    ('Vegetariana', 'Pizzas sem carne, com ingredientes frescos e saudáveis.'),
    ('Doce', 'Pizzas doces para sobremesa.'),
    ('Vegana', 'Pizzas sem ingredientes de origem animal.');

INSERT INTO tb_pizzas (nome, tamanho, preco, ingredientes, categoriaId) VALUES
    ('Margherita', 'Média', 25.00, 'Molho de tomate, mussarela, manjericão', 1),
    ('Pepperoni', 'Grande', 30.00, 'Molho de tomate, mussarela, pepperoni', 1),
    ('Quatro Queijos', 'Média', 28.00, 'Molho de tomate, mussarela, provolone, parmesão, gorgonzola', 1),
    ('Pizza de Alcachofra', 'Grande', 35.00, 'Molho de tomate, mussarela, alcachofra, tomate seco', 2),
    ('Pizza Vegetariana', 'Média', 27.00, 'Molho de tomate, mussarela, pimentão, azeitona, cebola, tomate', 3),
    ('Pizza de Banana', 'Pequena', 20.00, 'Banana, açúcar, canela, leite condensado', 4),
    ('Pizza Vegana', 'Grande', 32.00, 'Molho de tomate, queijo vegano, pimentão, cebola, azeitona, rúcula', 5),
    ('Pizza de Chocolate', 'Pequena', 22.00, 'Chocolate, morango, granulado', 4);


select * from tb_pizzas where preco > 25.00;
select * from tb_pizzas where preco between 30.00 and 40.00;
select * from tb_pizzas where nome like "%m%";

SELECT 
   p.pizzasId,
   p.nome,
   p.ingredientes,
   p.tamanho,
   p.preco,
	c.tipo,
    c.descricao
FROM 
    tb_pizzas p
INNER JOIN 
    tb_categorias c ON p.pizzasId = c.categoriaId;

SELECT 
    p.pizzasId,
    p.nome,
    p.ingredientes,
    p.tamanho,
    p.preco,
    c.tipo,
    c.descricao
FROM 
    tb_pizzas p
INNER JOIN 
    tb_categorias c ON p.categoriaId = c.categoriaId
WHERE 
    c.tipo = 'Tradicional';