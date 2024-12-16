create database Escola;
use Escola;

create table Turmas(
	id_turma int primary key,
    nome varchar(100) not null
);

create table Professores(
	id_professor int primary key,
    nome varchar(100) not null,
    telefone varchar(14) not null,
    id_turma int,
    foreign key(id_turma) references Turmas(id_turma)
);

insert into Turmas values
(1, '2 ano'),
(2, '3 ano'),
(3, '4 ano');

insert into Professores values
(1, 'João Silva', '+5545999125587', 1),
(2, 'Maria Silva', '+5541997623580', 2),
(3, 'Paulo Silva', '+5545999125587', null);

select Professores.nome, Professores.telefone, Professores.id_turma from Professores right join Turmas on Professores.id_professor=Turmas.id_turma;
