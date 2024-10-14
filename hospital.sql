create database hospital;
use hospital;

create table paciente(
	codPac int primary key,
	nomePac varchar(40) not null,
	datNasc date not null,
	cpf char(11),
	cidade varchar(30) not null
);

create table medico(
	codMed int primary key,
	nomeMed varchar(40) not null,
	datNasc date not null,
	cpf char(11),
	cidade varchar(30) not null,
	especialidade varchar(30) not null
);

create table consulta(
	codMed int NOT NULL,
    codPac int NOT NULL,
    dataConsulta date NOT NULL,
    hora time NOT NULL,
    primary key(codMed, codPac),
    foreign key(codMed) references medico(codMed),
    foreign key(codPac) references paciente(codPac)
);

insert into paciente
values (1, 'João', '1977-11-24', '10000000000', 'Foz do Iguaçu');
insert into paciente
values (2, 'Gustavo', '1977-11-24', '10000000000', 'Foz do Iguaçu');
insert into paciente
values (3, 'Guilherme', '1977-11-24', '10000000000', 'Foz do Iguaçu');

insert into medico
values (1, 'João', '1977-11-24', '10000000000', 'Foz do Iguaçu', 'oftamologia');
insert into medico
values (2, 'Gustavo', '1977-11-24', '10000000000', 'Foz do Iguaçu', 'oftamologia');
insert into medico
values (3, 'Guilherme', '1977-11-24', '10000000000', 'Foz do Iguaçu', 'oftamologia');

insert into consulta
values (1, 1, '2021-05-12', '14:00');
insert into consulta
values (2, 3, '2021-05-12', '17:00');
insert into consulta
values (3, 2, '2021-05-12', '16:00');

select * from medico;
select * from paciente;
select * from consulta;
