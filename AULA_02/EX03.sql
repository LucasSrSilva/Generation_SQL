create database DB_ESCOLA;
use DB_ESCOLA;

create table TB_ALUNOS(
REGISTRO bigint auto_increment,
NOME varchar(255) not null,
IDADE int,
SERIE int,
NOTA decimal(4,2),
primary key(REGISTRO)
);

select * from TB_ALUNOS;

insert into TB_ALUNOS(NOME, IDADE, SERIE, NOTA)
values("Jorge", 12, 7, 6.5),
	("Lucas", 10, 5, 10),
    ("Roberto", 13, 8, 5),
    ("Carlos", 14, 9, 9),
    ("Mauricio", 10, 5, 7.6),
    ("Leticia", 9, 4, 7.3),
    ("Joana", 11, 6, 6.5),
    ("Maria", 12, 7, 7.1);
    
select * from TB_ALUNOS where NOTA > 7;
select * from TB_ALUNOS where NOTA < 7;
 
update TB_ALUNOS set NOTA = 6.4 where REGISTRO = 8;