class User < SitePrism::Page
  set_url '/customer/account/create'
  element :nome, '#nomecompleto'
  element :email, '#email'
  element :cpf, '#cpf'
  element :telefone, '#telefone'
  element :senha, '#senha'
  element :confirma, '#confirmarSenha'
  element :data, '#dataDeNascimento'

  def preencher_usuario
    nome.set(Faker::Name.unique.name)
    email.set(Faker::Internet.email)
    cpf.set(CPF.generate)
    telefone.set '11940456752'
    senha.set '123456'
    confirma.set '123456'
    data = Faker::Date.birthday(min_age: 18, max_age: 65)
    fill_in('dataDeNascimento', with: data.strftime("%d/%m/%Y"))
  end

end

