create database DB_PADARIA_VIRTUAL;
use DB_PADARIA_VIRTUAL;

create table TB_PRODUTOS(
	ID bigint auto_increment,
    NOME varchar(255),
    PRECO decimal(6,2),
    ESTOQUE bigint,
    FRETE decimal(6,2),
    primary key(ID)
);

drop table TB_PRODUTOS;
select * from TB_PRODUTOS;

insert into TB_PRODUTOS (NOME, PRECO, ESTOQUE, FRETE)
value ("Pão Frances", 0.75, 40, 1.5),
	("Pão de Forma", 10, 50, 1.2),
    ("Pão de Leite", 1, 30, 1.3),
    ("Queijo", 600, 70, 1.7),
    ("Presunto", 700, 80, 2.0),
    ("Bolo de Chocolate", 1000, 40, 2.0),
    ("Croissant", 7, 10, 1.2),
    ("Sonho", 5, 10, 1.8);
    
select * from TB_PRODUTOS where PRECO > 500;
select * from TB_PRODUTOS where PRECO < 500;

update TB_PRODUTOS set PRECO = 2000 where ID = 8;