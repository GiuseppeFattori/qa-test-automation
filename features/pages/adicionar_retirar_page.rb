class Produto < SitePrism::Page
  set_url '/medicamentos.html'
  elements :primeiro_produto, :xpath, '//*[@data-qa="carousel_btn_card_undefined"]'
  element :comprar, :xpath, '//*[@data-qa="PDP_btn_buy"]'
  element :finalizar, :xpath, '//*[@data-qa="btn_finish"]'
  element :somar_pdp, :xpath, '//*[@data-qa="pdp_btn_plus"]'
  element :retirar_pdp, :xpath, '//*[@data-qa="btn_minus"]'
  element :espera, :xpath, '//[@data-qa="button-finish-delivery"]'
  element :pop_nao_disponivel, :xpath, '//[@data-qa="data-qa-popup-content"]'

end
