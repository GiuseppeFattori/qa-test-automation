#language: pt

@ad_ret
Funcionalidade: Adicionando e Retirar Item

@adicionar
Cenario: adicionar item
Dado que eu faça o login
Quando eu adiciono um item ao meu carrinho
E clico em comprar
Entao finalizo a operação de compra

@retirar
Cenario: retirar item
Dado que eu faça o login
Quando eu retiro o item do meu carrinho
Entao finalizo a operação
