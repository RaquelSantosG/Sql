create table tb_cursoDaMinhaVida;

use tb_cursoDaMinhaVida;

create table tb_curso(
id bigint auto_increment,
nome varchar (100) not null,
tipo varchar (100) not null,
tempo varchar (100) not null,
primary key(id)
);

insert into tb_categoria(nome,tipo,tempo) values ("curso A","presencial","1 mes");
insert into tb_categoria(nome,tipo,tempo) values ("curso B","Ead","3 meses");
insert into tb_categoria(nome,tipo,tempo) values ("curso C","Ead","6 meses");
insert into tb_categoria(nome,tipo,tempo) values ("curso D","presencial","2 meses");
insert into tb_categoria(nome,tipo,tempo) values ("curso E","presencial","2 meses");

create table tb_produto(
id bigint auto_increment,
nome varchar (100) not null,
idade int not null,
preco decimal (5,2) not null,
turma varchar (100) not null,
disponibilidade boolean not null,
categoria_id bigint not null,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome,idade,preco,turma,disponibilidade,categoria_id) 
values ("aluno 1",20,800, "turma 3",true,1),
       ("aluno 2",20,180, "turma 3",true,5),
       ("aluno 3",20,70, "turma 2",true,4),
	   ("aluno 4",20,90, "turma 2",true,3),
       ("aluno 5",20,10, "turma 3",true,2),  
	   ("aluno 6",20,30, "turma 3",true,2),
	   ("aluno 7",20,400, "turma 1",true,1),
	   ("aluno 8",20,70, "turma 1",true,1);
       
       select * from tb_produto where preco > 50;
       
	 select * from tb_produto where preco between 3 and 60;
     
	select * from tb_produto where nome like "%j%";
    
	select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;
    
	select * from tb_produto where categoria_id in (1);











  
  
  
  
  
  
