create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id int primary key auto_increment,
    nome varchar(100) not null,
    ataque int not null,
    defesa int not null,
	sonic int not null
);
select * from tb_classe;

insert into tb_classe (nome, ataque, defesa, sonic) values 
("sonic", 5000, 500, 100),
("mario", 2500, 3000, 0),
("pateta", 1500, 1050, 0),
("pica-pau", 3000, 1900, 80),
("rambo", 1800, 800, 0);

insert into tb_personagem (nome, lv, xp, vida, classe_id) values
("Raquel", 10, 1000, 85, 5),
("Lucas", 52, 5200, 300, 2),
("Mayara", 34, 3400, 200, 1),
("Sara", 80, 8000, 400, 4),
("Alexandre", 1, 100, 50, 3),
("Gabrielly", 74, 7400, 600, 2),
("Leticia", 30, 3000, 125, 3),
("Renato", 100, 10000, 600, 1);

select * from tb_personagem inner join tb_classe where tb_personagem.id = tb_classe.id and tb_classe.ataque > 2000;

select * from tb_personagem inner join tb_classe where tb_personagem.id = tb_classe.id and tb_classe.defesa > 1000 and tb_classe.defesa < 2000;

select * from tb_personagem where tb_personagem.nome like "%s%";

select * from tb_personagem as per inner join tb_classe as class where per.classe_id = class.id  order by per.id;

select * from tb_personagem  inner join tb_classe where tb_personagem.classe_id = 2 and tb_classe.nome = "mario";


