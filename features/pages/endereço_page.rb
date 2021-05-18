class Endereco < SitePrism::Page
    set_url '/customer/address'

    element :adicionar_endereco, :xpath, '//*[@data-qa="account_btn_new_adress"]'
    element :nome, '#firstname'
    element :sobrenome, '#lastname'
    element :cep, '#zip'
    element :telefone, '#telephone'
    element :numeroCasa, '#street_2'
    

    def preencher_endereco(first_name, last_name, post_code, tel)
        nome.set(first_name)
        sobrenome.set(last_name)    
        cep.set post_code
        telefone.set tel
        numeroCasa.set '103'
    end
end
    