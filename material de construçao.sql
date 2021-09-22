create  database tb_fabricante;

use tb_fabricante;

create table tb_categoria (
id  bigint auto_increment,
nome varchar (100) not null,
tipo varchar (100) not null,
material varchar (100) not null,
primary key (id)

);



insert  into tb_categoria(nome,tipo,material) values ("porta A","porta","madeira");
insert  into tb_categoria(nome,tipo,material) values ("porta b","porta","plastico");
insert  into tb_categoria(nome,tipo,material) values ("cano A","cano","pvc");
insert  into tb_categoria(nome,tipo,material) values ("porta b","cano","prx");
insert  into tb_categoria(nome,tipo,material) values ("torneia","torneira","metal");

create table tb_produtos(
id  bigint auto_increment,
nome varchar (100) not null,
qtde int not null,
preco decimal (5,2) not null, 
estoque varchar (100) not null,
disponibilidade boolean not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 1",500,100,"loja 3",true, 1);
insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 2",100,100,"loja 3",true, 3);
insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 3",90,100,"loja 3",false, 5);
insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 4",50,100,"loja 3",true, 2);
insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 5",40,100,"loja 3",true, 4);
insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 6",80,100,"loja 3",false, 2);
insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 7",90,100,"loja 3",true, 3);
insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 8",20,100,"loja 3",false, 4);

insert into tb_produtos (nome,qtde,preco,estoque,disponibilidade,categoria_id) values ("produto 5 e 9",500,100,"loja 3",true,1);

select * from tb_produtos where preco > 50; 

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_produtos.categoria_id = tb_categoria.id;

select * from tb_produtos where categoria_id in (2);





