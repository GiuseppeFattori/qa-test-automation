

# _QA - Automação_

**Requisitos para o Teste**.

* Ruby
* Cucumber
* Capybara
* Site - Prism
* Page Objects

**Teste:**

O Objetivo do teste consiste em validar Login, senhas, emails e posiveis Falhas no preenchimento de campos **_OBRIGATORIOS_**.

**Como o projeto está organizado.**

![Sem título](https://user-images.githubusercontent.com/84185822/118703597-a8f93000-b7ec-11eb-848e-6b8189a8bd56.png)


**Reaproveitamento dos métodos**

Todos os métodos que forem iguais entre as plataformas devem estar em módulos e incluídos nas screens que fizerem sentido, como no exemplo abaixo:

**Modulo:**

![2](https://user-images.githubusercontent.com/84185822/118704430-7e5ba700-b7ed-11eb-953f-bce127be779d.png)

**Classes:**

![3](https://user-images.githubusercontent.com/84185822/118704905-fb871c00-b7ed-11eb-83b2-cdb2a5a2eac8.png)

**Configuração do projeto para executar**

Ruby (Seguir a ordem dos comando abaixo)

cucumber --init 
(para serem Criadas as Pastas do Diretorio)

bundler install 
(para os gems sejam instaladas no diretotio)





