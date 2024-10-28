create database Empresa;
use Empresa;

create table Departamento(
	codDep int primary key,
    descDep varchar(100) not null
);

create table Funcionario(
	codFun int primary key,
    nomeFun varchar(100) not null,
    endFun varchar(150),
    telFun varchar(15),
    codDep int,
    foreign key(codDep) references Departamento(codDep)
);

create table Dependentes(
	codDepen int primary key,
    codFun int,
    nomeDepen varchar(100) not null,
    dataNascDepen date,
    foreign key(codFun) references Funcionario(codFun)
);

alter table Funcionario
add column dataNascFunc date;

alter table Departamento
modify column descDep char(50);

alter table Dependentes
add column teste varchar(100);

alter table Dependentes 
drop column teste;
