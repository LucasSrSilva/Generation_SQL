create database db_pizzaria_legal;
use db_pizzaria_legal;

create table TB_CATEGORIAS(
	ID bigint auto_increment,
	TAMANHO varchar(30),
	PRECO int,
	primary key(ID)
);

insert into TB_CATEGORIAS (TAMANHO, PRECO) values
	("Gigante", 50),
	("Grande", 40),
    ("Media", 30),
    ("Pequena", 25),
    ("Brotinho", 20);
    
create table TB_PIZZAS(
	ID bigint auto_increment,
	SABOR varchar(30),
	INGREDIENTES varchar(255),
    TIPO varchar(20),
    BORDA varchar(20),
    CATEGORIA_ID bigint,
	primary key(ID),
    foreign key(CATEGORIA_ID) references TB_CATEGORIAS(ID) 
);

drop table  TB_PIZZAS;

insert into TB_PIZZAS (SABOR, INGREDIENTES, TIPO, BORDA, CATEGORIA_ID) values
	("4 queijos", "queijo", "salgada", "simples", 1),
    ("Strogonoff", "Frango e batata palha", "salgada", "catupiry", 2),
    ("Chocolate com morango", "Chocolate e morango", "Doce", "Chocolate", 3),
    ("Banana com Doce de leite", "banana e doce de leite", "doce", "Doce de leite", 3),
    ("Palmito com Farinha", "Palmito e farinha???", "salgada", "Queijo", 4),
    ("Calabresa", "Calabresa e cebola", "salgada", "simples", 1),
    ("Marguerita", "Tomate, manjericão e queijo", "salgada", "simples", 1),
    ("Brócolis com Bacon", "Brócolis, bacon e queijo", "salgada", "catupiry", 2),
    ("Romeu e Julieta", "Goiabada e queijo", "doce", "simples", 5);
    

select SABOR, TB_CATEGORIAS.PRECO 
from TB_PIZZAS inner join TB_CATEGORIAS 
on CATEGORIA_ID = TB_CATEGORIAS.ID where PRECO > 35;

select SABOR, TB_CATEGORIAS.PRECO 
from TB_PIZZAS inner join TB_CATEGORIAS 
on CATEGORIA_ID = TB_CATEGORIAS.ID where PRECO between 25 and 35;

select SABOR, TB_CATEGORIAS.PRECO 
from TB_PIZZAS inner join TB_CATEGORIAS 
on CATEGORIA_ID = TB_CATEGORIAS.ID where SABOR like "%m%";

select SABOR, TB_CATEGORIAS.PRECO 
from TB_PIZZAS inner join TB_CATEGORIAS 
on CATEGORIA_ID = TB_CATEGORIAS.ID where TIPO like "%doce%";
    