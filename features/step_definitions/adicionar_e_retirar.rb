Dado('que eu faça o login') do
    @login = Login.new
    @login.load
    @login.preencher_login

    click_on('faça seu login')

    @login.wait_until_espera_visible(wait: 30)
end
  
Quando('eu adiciono um item ao meu carrinho') do
    @produtos = Produto.new
    @produtos.load
    @produtos.wait_until_primeiro_produto_visible(wait: 30)
    @produtos.primeiro_produto[0].click
    @produtos.wait_until_comprar_visible(wait: 30)
    @produtos.comprar.click
    click_button 'Quero retirar na loja'
end

Quando('clico em comprar') do
    find('.sc-hKwCoD.tAqlK.sidetext').click
    sleep(3)

    click_on 'Finalizar Compra'
    
end
  
Entao('finalizo a operação de compra') do
    click_button 'Pagamento'
    click_button 'finalizar compra'
    
end
  
Quando('eu retiro o item do meu carrinho') do
    @produtos = Produto.new
    @produtos.load
    @produtos.wait_until_primeiro_produto_visible(wait: 10)
    @produtos.primeiro_produto[0].click
    @produtos.wait_until_somar_pdp_visible(wait:10)
    @produtos.somar_pdp.click
    @produtos.wait_until_comprar_visible(wait:5)
    @produtos.comprar.click
    click_button 'Quero retirar na loja'
    
    if @produtos.assert_text('A quantidade solicitada não está disponível')
        click_button 'OK'
    end

    sleep(2)
    find('.sc-hKwCoD.tAqlK.sidetext').click
    @produtos.wait_until_retirar_pdp_visible(wait:10)
    @produtos.retirar_pdp.click
    sleep(2)
    @produtos.wait_until_retirar_pdp_visible(wait:10)
    @produtos.retirar_pdp.click
    click_button 'Finalizar Compra'

end
  
Entao('finalizo a operação') do

    click_button 'Pagamento'
    click_button 'finalizar compra'
  

end