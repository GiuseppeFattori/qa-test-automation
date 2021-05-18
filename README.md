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

module ExampleModule
	
  def confirm_action
    enter('Outro teste', email_field)
    enter('1199990000', phone_field)
    wait_for_element_then_touch(btn_confirm)
  end
  
end

