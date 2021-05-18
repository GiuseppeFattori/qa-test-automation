Dado('que eu acesse a page meus endereços') do
    @endereco = Endereco.new
    @endereco.load
    @endereco.wait_until_adicionar_endereco_visible(wait: 30)
  end
  
  Quando('click em adicionar novo endereço, preencho os campos obrigatorio, click em salvar endereço') do
    @endereco = Endereco.new
    @endereco.load
    @endereco.wait_until_adicionar_endereco_visible(wait: 30)
    @endereco.adicionar_endereco.click
    
    @endereco.preencher_endereco('Joao', 'Silva', '13848-819', '11964826745')

    click_button 'salvar endereço'

end
  
Entao('recebo mensagem de sucesso') do
    have_text('Endereço adicionado com sucesso')
    
end

# Quando('click em adicionar v endereço, preencho os campos obrigatorio, click em salvar endereço') do
#     @endereco = Endereco.new
#     @endereco.load
#     @endereco.wait_until_adicionar_endereco_visible(wait: 30)
#     @endereco.adicionar_endereco.click
    
#     @endereco.preencher_endereco('Jose', 'Paulo', '15138-819', '11964752745')

#     click_button 'salvar endereço'
# end