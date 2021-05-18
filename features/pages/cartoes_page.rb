class Cartao < SitePrism::Page
  set_url '/paymentfront/customer_creditcard'

  element :adicionar_cartao, :xpath, '//*[@data-qa="account_btn_new_card"]'
  element :numero_cartao, :xpath, '//*[@data-qa="input_card_number"]'
  element :cod_segurança, :xpath, '//*[@data-qa="input_cvv"]'
  element :nome_titular, :xpath, '//*[@data-qa="input_name"]'
  element :salva_cartao, :xpath, '//*[@data-qa="btn_save_card"]'

  def preenche_cartao
    numero_cartao.set('4000000000000010')
    nome_titular.set('Jose Silva')
    cod_segurança.set('256')
  end
end

