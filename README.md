

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

![4](https://user-images.githubusercontent.com/84185822/118706714-135f9f80-b7f0-11eb-9008-658d5e6dad5b.png)

![5](https://user-images.githubusercontent.com/84185822/118706751-1b1f4400-b7f0-11eb-818b-9a0fb4f123b7.png)






└───qa-test-automation-ui
    │   .gitattributes
    │   cucumber.yml
    │   Gemfile
    │   Gemfile.lock
    │   LICENSE
    │   README.md
    │
    ├───features
    │   ├───pages
    │   │       adicionar_retirar_page.rb
    │   │       cartoes_page.rb
    │   │       criar_usuario_page.rb
    │   │       editor_de_usuario_page.rb
    │   │       endereço_page.rb
    │   │       login_page.rb
    │   │
    │   ├───specs
    │   │       adicionar_e_retirar.feature
    │   │       cartoes.feature
    │   │       criando_usuario.feature
    │   │       editor_de_usuario.feature
    │   │       endereço.feature
    │   │       login.feature
    │   │
    │   ├───step_definitions
    │   │       adicionar_e_retirar.rb
    │   │       cartoes.rb
    │   │       criando_usuario.rb
    │   │       editor_de_usuario.rb
    │   │       endereço.rb
    │   │       login.rb
    │   │
    │   └───support
    │       │   env.rb
    │       │   hooks.rb
    │       │   page_helper.rb
    │       │
    │       └───ambientes
    │               homolog.yml
    │
    └───report
        └───screenshots
                adicionar_item.png
                login_usuario.png


