#language: pt

Funcionalidade: Cadastrar Cliente
    Como um cliente da loja online
    Quero cadastrar uma conta
    Para efetuar compras

    @cadastro_exemplos
    Esquema do Cenário: Cadastrar cliente com dados válidos com exemplos
        Dado que acesso a página de login/cadastro
            E solicito um novo cadastro para o e-mail <email>
            E preencho os campos do formulário com <gender>, <first_name>, <last_name>, <password>, <day>, <month>, <year>, <newsletter>, <companhy>, <address>, <city>, <state>, <zipcode>, <mobilephone>, <address_alias>
        Quando confirmo o cadastro
        Então devo ser direcionado à página de minha conta
        Exemplos:
            | email                 | gender | first_name | last_name | password | day  | month      | year   | newsletter | companhy | address             | city  | state  | zipcode | mobilephone     | address_alias |
            | 'sextou102@gmail.com' | 'masc' | 'João'     | 'Silva'   | '12345'  | '10' | 'November' | '2000' | 'no'       | 'cwi'    | 'Rua dos bobos, 55' | 'poa' | 'Iowa' | '12345' | '5551998765456' | 'casa'        |
            | 'sextou103@gmail.com' | 'fem'  | 'Aline'    | 'Dantas'  | '54321'  | '20' | 'August'   | '1998' | 'yes'      | 'dbc'    | 'Lima e Silva, 10'  | 'poa' | 'Iowa' | '97500' | '5551998765456' | 'trabalho'    |