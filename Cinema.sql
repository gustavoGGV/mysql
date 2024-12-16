create database Cinema;
use Cinema;

create table Filmes(
	id_filme int primary key,
    titulo varchar(50),
    genero varchar(20)
);

insert into Filmes values
(1, 'Avatar', 'Ficção Científica'),
(2, 'Titanic', 'Drama'),
(3, 'Inception', 'Ação'),
(4, 'O Rei Leão', 'Animação');

create table Ingressos_Vendidos(
	id_ingresso int primary key,
    id_filme int,
    quantidade int,
    foreign key(id_filme) references Filmes(id_filme)
);

insert into Ingressos_Vendidos values
(101, 1, 150),
(102, 3, 200),
(103, 4, 120);

select Filmes.titulo as Filme,
Filmes.genero as Genero,
Ingressos_Vendidos.quantidade as Ingressos_Vendidos
from Filmes full join Ingressos_Vendidos on Filmes.id_filme=Ingressos_Vendidos.id_filme where Filmes.id_filme is null or Ingressos_Vendidos.id_filme is null;
