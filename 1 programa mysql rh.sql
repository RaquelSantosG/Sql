 create database rh;
 
 use rh;
 
 create table rh (
 id bigint auto_increment,
    nome varchar(255) not null,
    salario decimal (7.2),
    funcao varchar (200),
    setor varchar (100),
    codigo int (6.2),
    primary key (id)
 );
SELECT * FROM rh; 

INSERT INTO rh(nome,salario) values('Raquel',5.000);
INSERT INTO rh(nome,salario) values('Sara',8.000);
INSERT INTO rh(nome,salario) values('Mayara',1.000);

SELECT * FROM rh;

select * from rh where salario > 5.000;
select * from rh where salario < 5.000;

SELECT * FROM rh;
 
