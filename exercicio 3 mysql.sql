create database alune;

use alune;

create table alune(
    id bigint auto_increment,
    nome varchar(255) not null,
    nota decimal,
    primary key (id)
);
SELECT * FROM alune; 

INSERT INTO alune(nome,nota) values('Raquel',10);
INSERT INTO alune(nome,nota) values('mayara',7);
INSERT INTO alune(nome,nota) values('lucas',9);

SELECT * FROM alune; 

select * from alune where nota > 9;
select * from alune where nota < 10;



