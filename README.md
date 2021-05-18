

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

```terminal
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
 ```
                




**Reaproveitamento dos métodos**

Todos os métodos que forem iguais entre as plataformas devem estar em módulos e incluídos nas screens que fizerem sentido, como no exemplo abaixo:

**Modulo:**

![2](https://user-images.githubusercontent.com/84185822/118704430-7e5ba700-b7ed-11eb-953f-bce127be779d.png)

**Classes:**

![3](https://user-images.githubusercontent.com/84185822/118704905-fb871c00-b7ed-11eb-83b2-cdb2a5a2eac8.png)

**Configuração do projeto para executar**

_Ruby (Seguir a ordem dos comando abaixo)_


* Instalar Bundler
```
gem install bundler
```
Executar o comando abaixo na raiz do projeto (qa-functional-tests) para instalar as dependências.

```
bundler install
```





