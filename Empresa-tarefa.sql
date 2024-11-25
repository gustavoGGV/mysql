create database Empresa;
use Empresa;

create table Departamentos (

	codDep int primary key,
    nomeDep varchar(30),
    locDep varchar(100),
    codFunGer int
    
);

create table Funcionarios (

	codFun int primary key,
    nomeFun varchar(30),
    segundoNomeFun varchar(30),
    ultimoNomeFun varchar(30),
    dataNascFun date,
    cpfFun varchar(20),
    rgFun varchar(20),
    enderecoFun varchar(60),
    cepFun varchar(20),
    cidadeFun varchar(30),
    foneFun varchar(20),
    codDep int,
    foreign key(codDep) references Departamentos(codDep),
    funcaoFun varchar(30),
    salarioFun float
    

);

insert into Departamentos values
(1, 'Marketing', '2° andar', 1),
(2, 'Limpeza', '1° andar', 3),
(3, 'Informática', '2° andar', 2),
(4, 'Finanças', '3° andar', 2),
(5, 'RH', '3° andar', 1);

insert into Funcionarios values
(1, 'Gustavo', 'Goularte', 'Vieira', '2008-05-02', '78923544094', '334568705', 'Travessa Manoel Ferreira da Silva', '68904344', 'Macapá', '24932806183', 2, 'Limpeza da cozinha', 2000.00),
(2, 'Alexandre', 'Pato', 'Ganso', '2010-05-25', '76293052064', '212805307', 'Rua Vinte e Três', '64011170', 'Teresina', '55930282896', 1, 'Tik Tok', 4000.00),
(3, 'Bruno', 'Cavalcanti', 'Pereira', '1999-10-11', '85242710004', '474279418', 'Rua Tupiniquim', '29155027', 'Cariacica', '95933645986', 1, 'Twitter', 4000.00),
(4, 'Camilo', 'Gonçalves', 'Pessanha', '2001-12-27', '66498256036', '187119685', 'Rua Marquês de Caravelas', '44022092', 'Feira de Santana', '27925111196', 1, 'Instagram', 4000.00),
(5, 'Yuri', 'Zurb', 'Moller', '2006-11-13', '66498256036', '349362415', 'Rua Nossa Senhora Aparecida', '39803554', 'Teófilo Otoni', '82933444214', 1, 'Facebook', 4000.00),
(6, 'Júlio', 'Pedro', 'Silva', '1969-02-01', '30786809086', '298182142', 'Rua Nivaldo da Conceição Gutierrez', '69313462', 'Boa Vista', '96935258425', 4, 'Despesas', 6000.00),
(7, 'Jefferson', 'Santiago', 'Younis', '2008-09-20', '45736347032', '263448150', 'Rua Comendador Henrique Santos', '78140320', 'Várzea Grande', '89929029504', 5, 'Resolução de conflitos', 4000.00),
(8, 'Guilherme', 'Wilson', 'Silva', '2000-01-10', '65068119008', '138411967', 'Quadra Dezenove', '66820173', 'Belém', '64933251964', 3, 'Troubleshooting', 6000.00);
