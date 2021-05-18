Dado('que eu entre na pagina de login') do
    visit '/customer/account/login'
end
  
Quando('preencho meus dados, clico em faça seu login') do
    @login = Login.new
    @login.load
    @login.preencher_login

    click_on('faça seu login')

end
  
Entao('é exibida uma mensagem de saudacao') do
    page.all(:css, '.Olá')
end
  
  

Quando('preencho com email incorreto, clico em faça seu login') do
    fill_in(id: 'emailCpf', with: 'eu@u.com')
    fill_in(id: 'password', with: '123456')
    click_on('faça seu login')
end
  
Entao('mensagem de saudação nao é exibida') do
    page.all(:css, '.E-mail, CPF ou senha inválida')
end

Quando('nao preencho o campo de email, clico em faça seu login') do
    fill_in(id: 'emailCpf', with: '')
    fill_in(id: 'password', with: '123456')
    click_on('faça seu login')
end

Entao('mensagem de campo obrigadorio é exibida') do
    page.all(:css, '.Este é um campo obrigatório')
end
  
Quando('preencho com cpf incorreto, clico em faça seu login') do
    fill_in(id: 'emailCpf', with: '12345678911')
    fill_in(id: 'password', with: '123456')
    click_on('faça seu login')
end

Quando('preencho com senha incorreta, clico em faça seu login') do
    fill_in(id: 'emailCpf', with: 'eu@eu.com')
    fill_in(id: 'password', with: '13456')
    click_on('faça seu login')
end

Quando('nao preencho o campo de senha, clico em faça seu login') do
    fill_in(id: 'emailCpf', with: 'eui@eu.com')
    fill_in(id: 'password', with: '')
    click_on('faça seu login')
end
