Dado('que acesse a pagina de meus dados') do
    @editor_usuario = Editor_de_usuario.new
    @editor_usuario.load
    
end
  
Quando('troco de nome') do
    @editor_usuario = Editor_de_usuario.new
    @editor_usuario.wait_until_meus_pedidos_visible(wait: 30)
    @editor_usuario.meus_pedidos.click
    sleep(2)
    @editor_usuario.wait_until_meus_dados_visible(wait: 30)
    @editor_usuario.meus_dados.click

    @editor_usuario.nome.set('Joao')
    @editor_usuario.sobrenome.set('Silva')
    sleep(2)
    click_button 'salvar'
   
end
  
Entao('o nome é alterado com sucesso') do
    have_text('Cadastro alterado com sucesso')
end

Quando('troco a senha') do
    @editor_usuario = Editor_de_usuario.new
    @editor_usuario.wait_until_meus_pedidos_visible(wait: 30)
    @editor_usuario.meus_pedidos.click
    sleep(2)
    @editor_usuario.wait_until_meus_dados_visible(wait: 30)
    @editor_usuario.meus_dados.click
    @editor_usuario.alterar_senha.click
    @editor_usuario.senhanova.set('1234567')
    
    @editor_usuario.confirma.set('1234567')
    @editor_usuario.senha.set('123456')
    
    click_button 'Salvar Senha'
end

Entao('a senha é alterado com sucesso') do
    page.has_text?('Senha alterado com sucesso')
sleep(10)
end

Quando('troco o email') do
    @editor_usuario = Editor_de_usuario.new
    @editor_usuario.wait_until_meus_pedidos_visible(wait: 30)
    @editor_usuario.meus_pedidos.click
    sleep(2)
    @editor_usuario.wait_until_meus_dados_visible(wait: 30)
    @editor_usuario.meus_dados.click
    
    click_button 'alterar'
    
    @editor_usuario.email.set('eu@eui.com')
    
    click_button 'salvar'
    
end

Entao('o email é alterado com sucesso') do
    page.has_text?('Cadastro alterado com sucesso')

end
