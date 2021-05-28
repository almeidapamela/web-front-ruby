class CadastroPage < SitePrism::Page
    set_url '?controller=authentication&back=my-account'
    element :email_create_account_field, '#email_create'
    element :email_create_btn, '#SubmitCreate'
    element :title_fem_rd, '#id_gender2'
    element :first_name_field, '#customer_firstname'
    element :last_name_field, '#customer_lastname'
    element :password_field, '#passwd'
    element :day_select, '#uniform-days'
    element :month_select, '#uniform-months'
    element :year_select, '#uniform-years'
    element :newsletter_checkbox, '#uniform-newsletter'
    element :address_field, '#address1'
    element :city_field, '#city'
    element :state_select, '#uniform-id_state'
    element :zipcode_field, '#postcode'
    element :mobilephone_field, '#phone_mobile'
    element :address_alias_field, '#alias'
    element :register_btn, '#submitAccount'
    #tipos de variáveis
    # @ = variável de instância (funciona apenas dentro do método)
    # @@ = variável de classe
    # $ = global


    def iniciar_criacao_conta(email)
        #Se email == aleatório cria um fake com domínio do guts, senão usa o e-mail passado por parâmetro
        @email = email.eql?('aleatório') ? Faker::Internet.email(domain: 'guts') : email
        email_create_account_field.set @email
        email_create_btn.click
    end

    def preencher_form_com_dados_fixos
        title_fem_rd.set true
        @@first_name = 'Pâmela'
        first_name_field.set @@first_name
        @@last_name = 'Almeida'
        last_name_field.set @@last_name
        password_field.set '12345'
        day_select.select '26'
        month_select.select 'August'
        year_select.select '1986'
        newsletter_checkbox.set true
        address_field.set 'Rua dos bobos, 0'
        city_field.set 'Poa'
        state_select.select 'Iowa'
        zipcode_field.set '97500'
        mobilephone_field.set '55551992374852'
        address_alias_field.set 'Casa'
    end

    def preencher_form_com_dados_aleatorios
        title_fem_rd.set true
        @@first_name = Faker::Name.first_name
        first_name_field.set @@first_name
        @@last_name = Faker::Name.last_name
        last_name_field.set @@last_name
        password_field.set Faker::Internet.password(min_length: 5, max_length: 10, mix_case: true, special_characters: true)
        day_select.select '26'
        month_select.select 'August'
        year_select.select '1986'
        newsletter_checkbox.set true
        address_field.set 'Rua dos bobos, 0'
        city_field.set 'Poa'
        state_select.select 'Iowa'
        zipcode_field.set '97500'
        mobilephone_field.set Faker::PhoneNumber.cell_phone_in_e164
        address_alias_field.set 'Casa'
    end

    def account_full_name
        "#{@@first_name} #{@@last_name}"
    end

    def confirmar_cadastro
        register_btn.click
    end
end