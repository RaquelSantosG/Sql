create database Loja;

use Loja;

SELECT * FROM Loja; 

create table Loja (
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal (6.2),
    quantidade int,
	marca varchar(200) not null,
    primary key (id)

);
SELECT * FROM Loja; 

   INSERT INTO Loja(nome,preco) values("tenis",100);

   
