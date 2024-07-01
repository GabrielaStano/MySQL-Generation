create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias (
 categoriaId BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    area VARCHAR(50) NOT NULL,
    nivel VARCHAR(50) NOT NULL,
	primary key (categoriaid)
);

create table tb_cursos (
 cursoId BIGINT AUTO_INCREMENT,
 nome VARCHAR(255) NOT NULL,
 descricao VARCHAR(255),
 carga_horaria INT NOT NULL,
 preco DECIMAL(10,2) NOT NULL,
 categoriaId BIGINT,
primary key (cursoId),
foreign key(categoriaId) references tb_categorias(categoriaId));

INSERT INTO tb_categorias (nome, descricao, area, nivel) VALUES
    ('Desenvolvimento Web', 'Cursos de programação para web.', 'Tecnologia', 'Intermediário'),
    ('Marketing Digital', 'Cursos de marketing online.', 'Negócios', 'Avançado'),
    ('Enfermagem', 'Cursos na área de enfermagem.', 'Saúde', 'Avançado'),
    ('Finanças Pessoais', 'Cursos sobre gestão financeira pessoal.', 'Negócios', 'Iniciante'),
    ('Fotografia', 'Cursos de fotografia profissional.', 'Arte', 'Intermediário');

INSERT INTO tb_cursos (nome, descricao, carga_horaria, preco, categoriaId) VALUES
    ('Curso de HTML5 e CSS3', 'Aprenda a criar páginas web com HTML5 e CSS3.', 40, 120.00, 1),
    ('Curso de JavaScript Avançado', 'Aprofunde seus conhecimentos em JavaScript.', 60, 180.00, 1),
    ('Curso de ReactJS', 'Domine o framework ReactJS para desenvolvimento web.', 80, 250.00, 1),
    ('Curso de SEO Avançado', 'Técnicas avançadas de SEO para otimização de sites.', 45, 150.00, 2),
    ('Curso de Google Ads', 'Estratégias eficazes para campanhas no Google Ads.', 50, 180.00, 2),
    ('Curso de Primeiros Socorros', 'Fundamentos e práticas de primeiros socorros.', 30, 100.00, 3),
    ('Curso de Planejamento Financeiro', 'Estratégias para planejar suas finanças pessoais.', 35, 120.00, 4),
    ('Curso de Investimentos', 'Conheça as melhores práticas para investir seu dinheiro.', 40, 150.00, 4),
    ('Curso de Fotografia Digital', 'Técnicas e práticas da fotografia digital.', 50, 180.00, 5),
    ('Curso de Retoque Fotográfico', 'Edição avançada e retoque de imagens.', 40, 150.00, 5);


select * from tb_cursos where preco > 150.00;
select * from tb_cursos where preco between 100.00 and 150.00;
select * from tb_cursos where nome like "%j%";

SELECT 
   p.cursoId,
   p.nome as nome_produto,
   p.descricao as descricao_produto,
   p.carga_horaria,
   p.preco,
	c.nome as nome_categoria,
    c.descricao as descricao_categoria,
    c.area,
    c.nivel
FROM 
    tb_cursos p
INNER JOIN 
    tb_categorias c ON p.categoriaId = c.categoriaId;

SELECT 
     p.cursoId,
   p.nome as nome_produto,
   p.descricao as descricao_produto,
   p.carga_horaria,
   p.preco,
	c.nome as nome_categoria,
    c.descricao as descricao_categoria,
    c.area,
    c.nivel
FROM 
    tb_cursos p
INNER JOIN 
    tb_categorias c ON p.categoriaId = c.categoriaId
WHERE 
    c.nome = 'Desenvolvimento Web';