create database Biblioteca;
use Biblioteca;

create table Livro (
	idLiv int primary key,
    tituloLiv varchar(100),
    anoPubLiv year,
    idAut int,
    idCat int,
    foreign key(idAut) references Autor(idAut),
    foreign key(idCat) references Categoria(idCat)
);

create table Autor (
	idAut int primary key,
    nomeAut varchar(100),
    nacAut varchar(50)
);

create table Categoria (
	idCat int primary key,
    descCat varchar(50)
);

alter table Livro
add column precoLiv decimal(5,2);

alter table Categoria
add column qtdCat int;

insert into Autor values
('1', 'Gustavo Goularte Vieira', 'Brasileiro'),
('2', 'Gabriel Guilhen', 'Brasileiro'),
('3', 'Asafe Roger', 'Indiano');

insert into Categoria values
('1', 'Terror', '23'),
('2', 'Drama', '81'),
('3', 'Romance', '134');

insert into Livro values
('1', 'A Fera e a Bela', '2024', '3', '3', '29.99'),
('2', 'Todo Tempo que Temos', '2024', '1', '2', '59.99'),
('3', 'O Paiaço', '2023', '2', '1', '19.99');

insert into Autor values
('4', 'Enzo Michel Feldman', 'Israelita');

insert into Livro values
('4', 'Sigma', '2025', '4', '3', '99.99');

update Categoria
set descCat='Romance'
where idCat='1';

update Livro
set precoLiv=precoLiv*1.1
where anoPubLiv<2024;

update Autor
set nomeAut='Gabriel García Márquez'
where nomeAut='Gabriel Guilhen';

delete from Livro
where anoPubLiv<=2024;

delete from Categoria
where qtdCat<50;

alter table Categoria
drop column qtdCat;
