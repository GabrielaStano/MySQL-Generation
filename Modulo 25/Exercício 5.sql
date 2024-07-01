create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias (
 categoriaId BIGINT AUTO_INCREMENT PRIMARY KEY,
 nome VARCHAR(255) NOT NULL,
 descricao VARCHAR(255),
 tipo_material VARCHAR(50) NOT NULL,
 origem VARCHAR(50)
);

create table tb_produtos (
produtoId BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255),
preco DECIMAL(10,2) NOT NULL,
estoque INT NOT NULL,
categoriaId BIGINT,
FOREIGN KEY (categoriaId) REFERENCES tb_categorias(categoriaId)
);

INSERT INTO tb_categorias (nome, descricao, tipo_material, origem) VALUES
    ('Madeiras', 'Diversos tipos de madeiras para construção.', 'Madeira', 'Nacional'),
    ('Ferramentas', 'Ferramentas para diversas atividades de construção.', 'Ferramentas', 'Nacional'),
    ('Elétrico', 'Materiais elétricos para instalações.', 'Elétrico', 'Nacional'),
    ('Hidráulico', 'Materiais hidráulicos para instalações de água e esgoto.', 'Hidráulico', 'Nacional'),
    ('Acabamentos', 'Produtos para acabamento final em construções.', 'Acabamentos', 'Nacional');

INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoriaId) VALUES
    ('Compensado 10mm', 'Chapa de compensado de 10mm.', 45.00, 50, 1),
    ('Viga de Pinus', 'Viga de pinus tratado para construção.', 65.00, 30, 1),
    ('Porta Interna Lisa', 'Porta interna de madeira lisa.', 150.00, 20, 1),
    ('Tábua de Cedrinho', 'Tábua de cedrinho para acabamentos.', 30.00, 80, 1),
    ('Furadeira Bosch', 'Furadeira elétrica Bosch.', 280.00, 15, 2),
    ('Jogo de Chaves de Fenda', 'Conjunto com diversas chaves de fenda.', 50.00, 40, 2),
    ('Martelo de Borracha', 'Martelo de borracha para trabalhos delicados.', 35.00, 25, 2),
    ('Tomada Dupla', 'Tomada elétrica dupla 10A.', 8.00, 100, 3),
    ('Disjuntor 20A', 'Disjuntor unipolar 20A.', 12.00, 80, 3),
    ('Torneira de Cozinha', 'Torneira de pia de cozinha cromada.', 45.00, 60, 4),
    ('Caixa d''Água 1000L', 'Caixa d''água polietileno 1000 litros.', 350.00, 10, 4),
	('Piso Cerâmico Bege', 'Piso cerâmico para área interna.', 25.00, 200, 5),
    ('Tinta Acrílica Branca', 'Tinta acrílica para parede e teto.', 50.00, 150, 5),
    ('Rejunte Cinza', 'Rejunte para acabamento de cerâmicas.', 15.00, 300, 5);




select * from tb_produtos where preco > 100.00;
select * from tb_produtos where preco between 70.00 and 150.00;
select * from tb_produtos where nome like "%c%";

SELECT 
   p.produtoId,
   p.nome as nome_produto,
   p.descricao as descricao_produto,
   p.preco,
   p.estoque,
	c.nome as nome_categoria,
    c.descricao as descricao_categoria,
    c.tipo_material,
    c.origem
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
    c.descricao as descricao_categoria,
    c.tipo_material,
    c.origem
FROM 
    tb_produtos p
INNER JOIN 
    tb_categorias c ON p.categoriaId = c.categoriaId
WHERE 
    c.nome = 'Ferramentas';