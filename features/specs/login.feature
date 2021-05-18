#language: pt

@usuarios
Funcionalidade: login usuario ja cadastrado

@login_correto
Cenario: login usuario
Dado que eu entre na pagina de login
Quando preencho meus dados, clico em faça seu login
Entao é exibida uma mensagem de saudacao

#
@email_errado
Cenario: email incorreto
Dado que eu entre na pagina de login
Quando preencho com email incorreto, clico em faça seu login
Entao mensagem de saudação nao é exibida

@email_branco
Cenario: email em branco
Dado que eu entre na pagina de login
Quando nao preencho o campo de email, clico em faça seu login
Entao mensagem de campo obrigadorio é exibida

#
@cpf_errado
Cenario: cpf incorreto
Dado que eu entre na pagina de login
Quando preencho com cpf incorreto, clico em faça seu login
Entao mensagem de saudação nao é exibida

#
@senha_errada
Cenario: senha incorreta
Dado que eu entre na pagina de login
Quando preencho com senha incorreta, clico em faça seu login
Entao mensagem de saudação nao é exibida

@senha_branco
Cenario: senha em branco
Dado que eu entre na pagina de login
Quando nao preencho o campo de senha, clico em faça seu login
Entao mensagem de campo obrigadorio é exibida
