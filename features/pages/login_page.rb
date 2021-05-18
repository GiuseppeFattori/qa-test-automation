class Login < SitePrism::Page
    set_url '/customer/account/login'
    
    element :email, '#emailCpf'
    element :senha, '#password'
    element :espera, :xpath, '//*[@data-qa="account_change_password"]'
    element :alterar, :xpath, '//*[@data-qa="account_change_info"]'
    
    def preencher_login

        email.set 'eu@eu.com'
        senha.set '123456'

    end
end

