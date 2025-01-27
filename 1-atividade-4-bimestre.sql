/*
1 -
R: O comando JOIN serve para juntar colunas de 2 ou mais tabelas a partir de uma coluna em comum entre elas. EX.1: Quando precisamos saber 
a data do pedido de um cliente e seu nome, onde ambos utilizam do id do cliente, já que a data está na tabela "pedidos" e o nome na tabela "clientes".
EX.2: Quando precisamos saber do título de um livro e o seu autor a partir do id do livro.

2 -
R: INNER JOIN - Pega dados que combinam nas tabelas requisitadas.
   LEFT JOIN - Pega todos os dados da tabela da esquerda ( 1° tabela ), e os dados da tabela da direita ( 2° tabela) que combinam com a da esquerda.
   RIGHT JOIN - Pega todos os dados da tabela da direita ( 2° tabela ), e os dados da tabela da esquerda ( 1° tabela) que combinam com a da direita.
   FULL JOIN - Pega todos os valores quando há algum valor que combina nas tabelas requisitadas.
*/

/*
3 - a)
*/

select cliente_nome, pedido_valor from pedidos inner join clientes on pedidos.cliente_id=clientes.id_cliente;

/*
3 - b)
*/

select cliente_nome, pedido_valor from pedidos right join clientes on pedidos.cliente_id=clientes.id_cliente;

/*
3 - c)
*/

/* OBS.: NÃO DAVA PARA CRIAR UM PEDIDO SEM CLIENTE, DAVA ERRO */

select * from pedidos;

/*
3 - d)
*/

select * from clientes full join pedidos on id_cliente=pedidos.cliente_id; /* O nome do ID da tabela da direita precisa ser diferente da tabela da esquerda */

/*
3 - e)
*/

select cliente_nome, pedido_id, pedido_valor from clientes cross join pedidos;

/*
4 - a)
*/

select distinct clientes.nome, produtos.nomeProduto, vendas.dataVenda from clientes join vendas on clientes.clienteId = vendas.clienteId join produtos on vendas.produtoId = produtos.produtoId order by clientes.nome, vendas.dataVenda;

/*
4 - b)
*/

select produtos.nomeProduto, estoque.quantidade, fornecedores.nomeFornecedor from produtos left join estoque on produtos.produtoId = estoque.produtoId left join fornecedores on produtos.produtoId = fornecedores.produtoId;

/*
4 - c)
*/

select fornecedores.nomeFornecedor, produtos.nomeProduto from fornecedores cross join produtos;
