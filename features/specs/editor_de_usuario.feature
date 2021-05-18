#language: pt

@editor_de_usuario
Funcionalidade: Editar  usuario

Contexto: Cadastra novo usuario
Dado que eu entre na page de cadastro
Quando preencho os campos obrigatorios, clico em fazer cadastro
Entao devo receber mensagem de cadastrado com sucesso

@editor_de_nome
Cenario: editar usuario
Dado que acesse a pagina de meus dados
Quando troco de nome
Entao o nome é alterado com sucesso

@editor_de_senha
Cenario: editor senha
Dado que acesse a pagina de meus dados
Quando troco a senha
Entao a senha é alterado com sucesso

@editor_de_email
Cenario: editor email
Dado que acesse a pagina de meus dados
Quando troco o email
Entao o email é alterado com sucesso