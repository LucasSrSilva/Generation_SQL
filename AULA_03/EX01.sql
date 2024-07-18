create database db_generation_game_online;
use db_generation_game_online;

create table TB_CLASSES(
ID bigint auto_increment,
NOME varchar(30),
ELEMENTO varchar(20),
ARMA varchar(40),
primary key(ID)
);

create table TB_PERSONAGENS(
ID bigint auto_increment,
NOME varchar(25),
NIVEL int not null,
ATAQUE int not null,
DEFESA int not null,
MAGIA int not null,
ESTAMINA int not null,
CLASSE_ID bigint,
primary key(ID),
foreign key(CLASSE_ID) references TB_CLASSES(ID)
);

select * from TB_PERSONAGENS;

insert into TB_CLASSES(NOME, ELEMENTO, ARMA) values
	("GUERREIRO", "TERRA", "ESPADA"),
    ("ARQUEIRO", "AR", "ARCO"),
    ("MAGO", "FOGO", "CAJADO"),
    ("LANCEIRO", "AGUA", "LANÇA"),
    ("ESCUDEIRO", "TERRA", "ESCUDO");
    
select * from TB_CLASSES;
    
insert into TB_PERSONAGENS(NOME, NIVEL, ATAQUE, DEFESA, MAGIA, ESTAMINA, CLASSE_ID) values
	("XxRagnarxX", 25, 300, 250, 100, 200, 1),
    ("FlavinDoPneu", 40, 500, 900, 670, 800, 5),
    ("DestruidorDeMundos2012", 150, 5000, 3045, 1000, 4365, 4),
    ("ReiDoJogo", 300, 1763, 4345, 12545, 6780, 3),
    ("PorlsterGainstxXX", 265, 7405, 6800, 3478, 6587, 1),
    ("LanceiroNegro2000", 300, 14988, 10488, 5670, 9543, 4),
    ("FlechaRobertoPera", 250, 8500, 2565, 3576, 7344, 2),
    ("XXxxMestreDoArcoxxXX", 290, 13434, 3456, 5673, 1040, 2);
    
insert into TB_PERSONAGENS(NOME, NIVEL, ATAQUE, DEFESA, MAGIA, ESTAMINA, CLASSE_ID) values
	("ShaolinMatadorDePorco", 40, 4500, 1350, 700, 1233, 4);
    
select * from TB_PERSONAGENS where ATAQUE > 2000;
select * from TB_PERSONAGENS where DEFESA between 1000 and 2000;
select * from TB_PERSONAGENS where NOME like "%c%";
select TB_PERSONAGENS.NOME, NIVEL, ATAQUE, DEFESA, MAGIA, ESTAMINA, TB_CLASSES.NOME as CLASSE 
from TB_PERSONAGENS inner join TB_CLASSES 
on TB_PERSONAGENS.CLASSE_ID = TB_CLASSES.ID;

select TB_PERSONAGENS.NOME, NIVEL, ATAQUE, DEFESA, MAGIA, ESTAMINA, TB_CLASSES.NOME as CLASSE 
from TB_PERSONAGENS inner join TB_CLASSES 
on TB_PERSONAGENS.CLASSE_ID = TB_CLASSES.ID where TB_CLASSES.ID = 2;