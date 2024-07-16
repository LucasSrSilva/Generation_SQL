create database DB_RH;
use DB_RH;

create table TB_COLABORADORES (
	REGISTRO bigint auto_increment,
	NOME varchar(255) not null,
	CARGO varchar(255) not null,
	SALARIO decimal(8, 2),
	SENIORIDADE varchar(255) not null,
	primary key(REGISTRO)
);

drop table TB_COLABORADORES;

insert into TB_COLABORADORES(NOME, CARGO, SALARIO, SENIORIDADE) 
values ("Everton", "Gerente de Projetos", 15000, "Senior"),
	("Maiara", "Assistente Administrativo", 1700, "Estagio"),
	("Rodrigo", "Auxiliar de recepcao", 1200, "Jovem Aprendiz"),
	("Geana", "Desenvolvedor Frontend", 3000, "Junior"),
	("Jean", "Analista de dados", 4500, "Pleno"),
	("pêra", "Desenvovedor Backend", 1700, "Estagio");

select * from TB_COLABORADORES where SALARIO > 2000;
select * from TB_COLABORADORES where SALARIO < 2000;

update TB_COLABORADORES set SALARIO = 20000 where REGISTRO = 1;
