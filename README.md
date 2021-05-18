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

TESTE/

![github img](https://user-images.githubusercontent.com/84185822/118703419-72bbb080-b7ec-11eb-963f-90cd60e67a92.png)

**Reaproveitamento dos métodos**
Todos os métodos que forem iguais entre as plataformas devem estar em módulos e incluídos nas screens que fizerem sentido, como no exemplo abaixo:

**Modulo:**

module ExampleModule
	
  def confirm_action
    enter('Outro teste', email_field)
    enter('1199990000', phone_field)
    wait_for_element_then_touch(btn_confirm)
  end
  
end

