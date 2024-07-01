create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes (
classesId bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
primary key (classesid)
);

create table tb_personagens (
personagensId bigint auto_increment,
nome varchar(255) not null,
nivel int not null,
poderdeataque int not null,
poderdedefesa int not null,
classesId bigint,
primary key (personagensId),
foreign key(classesId) references tb_classes(classesId));

INSERT INTO tb_classes (tipo, descricao)
value("Mago","Os Magos são especialistas em magia arcana.");
INSERT INTO tb_classes (tipo, descricao)
value("Bruxo","Mestres das artes sombrias.");
INSERT INTO tb_classes (tipo, descricao)
value("Arqueiro","Especialistas em combate à distância.");
INSERT INTO tb_classes (tipo, descricao)
value("Sátiro","Seres ágeis e místicos.");
INSERT INTO tb_classes (tipo, descricao)
value("Druída","Os Druidas são guardiões da natureza.");

INSERT INTO tb_personagens (nome, nivel, poderdeataque, poderdedefesa, classesId)
value('Eledor', 5, 15000, 500, 1);
INSERT INTO tb_personagens (nome, nivel, poderdeataque, poderdedefesa, classesId)
value ('Tharock', 7, 20000, 10000, 2);
INSERT INTO tb_personagens (nome, nivel, poderdeataque, poderdedefesa, classesId)
value('Drakon', 8, 1800, 1500, 4);
INSERT INTO tb_personagens (nome, nivel, poderdeataque, poderdedefesa, classesId)
value ('Selene', 6, 1600, 6000, 5);
INSERT INTO tb_personagens (nome, nivel, poderdeataque, poderdedefesa, classesId)
value('Magnus', 7, 19000, 700, 2);
INSERT INTO tb_personagens (nome, nivel, poderdeataque, poderdedefesa, classesId)
value('Borin', 9, 22000, 9000, 3);
INSERT INTO tb_personagens (nome, nivel, poderdeataque, poderdedefesa, classesId)
value('Fiona', 5, 14000, 800, 1);
INSERT INTO tb_personagens (nome, nivel, poderdeataque, poderdedefesa, classesId)
value ('Lyra', 6, 17000, 800, 3);


select * from tb_personagens where poderdeataque > 2000;
select * from tb_personagens where poderdedefesa between 1000 and 2000;
select * from tb_personagens where nome like "%c%";

SELECT 
    p.personagensId,
    p.nome,
    p.nivel,
    p.poderdeataque,
    p.poderdedefesa,
    c.tipo,
    c.descricao
FROM 
    tb_personagens p
INNER JOIN 
    tb_classes c ON p.classesId = c.classesId;

SELECT 
    p.personagensId,
    p.nome,
    p.nivel,
    p.poderdeataque,
    p.poderdedefesa,
    c.tipo,
    c.descricao
FROM 
    tb_personagens p
INNER JOIN 
    tb_classes c ON p.classesId = c.classesId
WHERE 
    c.tipo = 'Arqueiro';