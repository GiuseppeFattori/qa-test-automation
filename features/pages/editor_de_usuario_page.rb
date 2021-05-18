class Editor_de_usuario < SitePrism::Page
  set_url '/customer/account/edit'
  element :editar, :xpath, '//*[@data-qa="account_change_info"]'
  element :meus_pedidos, :xpath, '//*[@data-qa="account_btn_my_requests"]'
  element :meus_dados, :xpath, '//*[@data-qa="account_data"]'
  element :alterar_senha, :xpath, '//*[@data-qa="account_edit_password"]'
  element :nome, '#nome'
  element :sobrenome, '#sobrenome'
  element :email, '#email'
  element :cpf, '#cpf'
  element :telefone, '#telefone'
  element :senha, '#senha'
  element :senhanova, '#novaSenha'
  element :confirma, '#confirmarNovaSenha'
  element :data, '#dob'
  def preencher_usuario
    nome.set('Joao')
    sobrenome.set('Silva')
    email.set('tory@lakin.org')
    cpf.set(2977361188)
    telefone.set '11940456752'
    senha.set '123456'
    senhanova.set '1234567'
    confirma.set '1234567'
    data.set '04/08/1970'
    end
end
