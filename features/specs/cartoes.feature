#language: pt

@cadastro_cartao
Funcionalidade: Adicionando um Cartao

Contexto: Cadastra novo usuario
Dado que eu entre na page de cadastro
Quando preencho os campos obrigatorios, clico em fazer cadastro
Entao devo receber mensagem de cadastrado com sucesso

@ad_cartao
Cenario: Cadastrando um cartao
Dado que eu acesse a page meus cartoes, click em adicionar cartao 
Quando preencho os campos obrigatorios, click em salvar cartao
Entao é exibida uma mensagem de sucesso

@ad_novo_cartao
Cenario: Novo cartao
Dado que eu acesse a page meus endereços, click em editar cartao
Quando edito os campos, click em salvar cartao
Entao é exibida uma mensagem de sucesso