# _QA - Automação_

**Requisitos para o Teste**.

* Ruby
* Cucumber
* Capybara
* Site - Prism
* Page Objects

**Teste:**

O Objetivo do teste consiste em validar Login, senhas, emails e posiveis Falhas no preenchimento de campos **_OBRIGATORIOS_**.

**Como o projeto está organizado.
qa-test-automation-ui/
├── Gemfile
├── Gemfile.lock
├── cucumber.yml
└── README.md
└── features
    ├── pages
    │   └── adicionar_e_retirar_page.rb
    │   └── cartoes_page.rb
    │   └── criar_usuario_page.rb
    │   └── editor_de_usuario_page.rb
    │   └── endereço_page.rb
    │   └── login_page.r
    ├── specs
    │   ├── adicionar_e_retirar.feature
    │   ├── cartoes.feature
    │   ├── criando_usuario.feature
    │   ├── editor_de_usuario.feature
    │   └── endereço.feature
    │   └── login.feature
    ├── steps_definitions
    │   └── adicionar_e_retirar.rb
    │   └── cartoes.rb
    │   └── criando_usuario.rb
    │   └── editor_de_usuario.rb
    │   └── endereço.rb
    │   └── login.rb
    └── support
        ├── ambiente
            └── homolog.yml
        ├── env.rb
        ├── hooks.rb
        ├── page_helmper.rb
    └── repost\screenshots
        ├── imagens
