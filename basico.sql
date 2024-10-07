create database universidade;
show databases;
use universidade;

create table professor
(
	codProf int PRIMARY KEY,
    nomeProf varchar(40) NOT NULL,
    areaProf varchar(40) NOT NULL,
    cpfProf char(11) NOT NULL,
    dataNascProf date NOT NULL
);

use universidade;

create table disciplina
(
	codDisc int PRIMARY KEY,
    nomeDisc varchar(40) NOT NULL,
    cargaHorDisc int NOT NULL
);

use universidade;

create table ministra
(
	codProf int NOT NULL,
    codDisc int NOT NULL,
    PRIMARY KEY (codProf, codDisc),
    FOREIGN KEY(codProf) references professor(codProf),
    FOREIGN KEY(codDisc) references disciplina(codDisc)
);

create database teste;
use teste;

/* seguir esta formatação: */

create table cliente(
	codCli int primary key,
    nomeCli varchar(40) not null,
    enderecoCli varchar(40) not null,
    dataNacCli date
);

create table produto(
	codProd int primary key,
    nomeProd varchar(40),
    valorProd float
);
