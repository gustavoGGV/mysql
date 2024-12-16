create database Cadastro;
use Cadastro;

create table Cursos (
	idCurso int primary key,
    nomeCurso varchar(40) not null,
    cargaHorariaCurso int not null
);

create table Alunos (
	idAluno int primary key,
    nomeAluno varchar(40) not null,
    emailAluno varchar(60) not null
);

create table Matriculas (
	idAluno int,
    idCurso int,
    foreign key(idAluno) references Alunos(idAluno),
    foreign key(idCurso) references Cursos(idCurso)
);

insert into Cursos values
(1, 'Orientação a Objetos', 48),
(2, 'Banco de Dados', 51),
(3, 'Desenvolvimento Web', 60),
(4, 'Algoritmos e Linguagem de Programação', 100),
(5, 'Programação para Web', 98);

insert into Alunos values
(1, 'Guilherme Britto', 'guilherme@gmail.com'),
(2, 'Bianca Alencar', 'bianca@gmail.com'),
(3, 'Livia Soares', 'livia@gmail.com'),
(4, 'Bernardo Cooper', 'bernardo@gmail.com'),
(5, 'Teresah Alissah', 'teresah@gmail.com');

insert into Matriculas values
(1, 1),
(5, 2),
(2, 5),
(3, 3),
(4, 4);

select nomeAluno, nomeCurso from Matriculas inner join Cursos on Matriculas.idCurso=Cursos.idCurso
inner join Alunos on Matriculas.idAluno=Alunos.idAluno;
