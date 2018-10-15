select * from itemped;


select qtditem from itemped 
where prod_cod_produto = 1 and
prod_cod_produto = 4;

select exe1(2,10);

select nome from cad_usuario, pedidos
where cpf = cad_usuario_cpf and
cod_pedido = 5;

select exe2();

select count(cd_logradouro) from
logradouro, bairros, cidades, uf
where bairros_cd_bairro = cd_bairro and
cidade_cd_cidade = cd_cidade and
uf_cd_uf = cd_uf and
ds_uf_sigla = 'SC';

select exe3('RS');

select count(prod_cod_produto) 
from itemped where prod_cod_produto = 1;

select exe4();

select round((preco_unit),2) from
produto, itemped, pedidos
where cod_produto = prod_cod_produto and
ped_codpedidos = cod_pedido and
cod_pedido = 1;

select exe5(1);

select ds_uf_nome 
from uf, cidades, bairros, logradouro, cad_usuario
where log_cd_logradouro = cd_logradouro and
bairros_cd_bairro = cd_bairro and
cidade_cd_cidade = cd_cidade and
cpf = '09582746512';

select exe6('09582746512');

select * from itemped;

select qtditem from itemped
where ped_codpedidos = 1 and 
prod_cod_produto = 4;

select descricao, preco_unit, qtd_produto 
from produto 
where cod_produto = 4;

update produto 
set qtd_produto = (qtd_produto - 3)
where cod_produto = 4;

select exe7(10,7);

select * from  produto
where cod_produto = 1;

select * from cad_usuario;

#exe8

select descricao, preco_unit, preco_unit * 1.1 from produto where cod_produto = 1;

update produto set preco_unit = 3.30 where cod_produto = 1;

select exe8(1);

#exe9

select sum(preco_unit * qtditem)
from produto, pedidos, itemped 
where cod_produto = prod_cod_produto 
and ped_codpedidos = cod_pedido
and cod_pedido = 10;

select exe9(10);
