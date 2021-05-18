#language: pt

@cadastro_endereco
Funcionalidade: Adicionar Endereço

Contexto: Cadastra novo usuario
Dado que eu entre na page de cadastro
Quando preencho os campos obrigatorios, clico em fazer cadastro
Entao devo receber mensagem de cadastrado com sucesso

@ad_endereco
Cenario: Adiciono um Endereço
Dado que eu acesse a page meus endereços
Quando click em adicionar novo endereço, preencho os campos obrigatorio, click em salvar endereço
Entao recebo mensagem de sucesso

# @outro_endereco
# Cenario: Adicionar outro endereco
# Dado que eu acesse a page meus endereços
# Quando click em adicionar outro endereço, preencho os campos obrigatorios
# Entao recebo mensagem de sucesso

