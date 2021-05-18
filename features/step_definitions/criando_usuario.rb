Dado('que eu entre na page de cadastro') do
  visit '/customer/account/create'
end

Quando('preencho os campos obrigatorios, clico em fazer cadastro') do
  @cadastro = User.new
  @cadastro.load
  @cadastro.preencher_usuario
  
  choose('masculino', allow_label_click: true)
  choose('acceptAll', allow_label_click: true)
  
  click_on('Cadastrar') #click_link_or_button sao identicos

end

Entao('devo receber mensagem de cadastrado com sucesso') do
  page.all(:css, '.Olá')

end