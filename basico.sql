create database aula;
show databases;
use aula;
create table medico
(
	codMed int PRIMARY KEY,
    nomeMed varchar(40) NOT NULL,
    dataNasc date NOT NULL,
    cpf char(11),
    cidade varchar(30) NOT NULL,
    especialidade varchar(30) NOT NULL
);
