Dado('que eu acesse a page meus cartoes, click em adicionar cartao') do
    @cartao = Cartao.new
    @cartao.load
    @cartao.adicionar_cartao.click
  end
  
  Quando('preencho os campos obrigatorios, click em salvar cartao') do
    @cartao.numero_cartao.set('4000000000000010')
    @cartao.nome_titular.set('Jose Silva')
    @cartao.cod_segurança.set('256')
    sleep(2)
    find('#month').click
    find('option[value="7"]').select_option
    find('#year').click
    find('option[value="2028"]').select_option
    @cartao.salva_cartao.click
  end
  
  Entao('é exibida uma mensagem de sucesso') do
    have_text('O cartão salvo com sucesso')
  end

  Dado('que eu acesse a page meus endereços, click em editar cartao') do
  end
  
  Quando('edito os campos, click em salvar cartao') do
  end
