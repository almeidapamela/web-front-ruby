Dado('que acesso a página de login\/cadastro') do
    @app.cadastropage.load
  end
  
  Dado('solicito um novo cadastro para o e-mail {string}') do |email|
    @app.cadastropage.iniciar_criacao_conta email
  end
  
  Dado('preencho os campos do formulário com dados válidos fixos') do
    @app.cadastropage.preencher_form_com_dados_fixos
  end
  
  Quando('confirmo o cadastro') do
    @app.cadastropage.confirmar_cadastro
  end
  
  Então('devo ser direcionado à página de minha conta') do
    expect(@app.minhacontapage.page_title.text).to eq('MY ACCOUNT')
    expect(@app.minhacontapage.account_name.text).to eq('Pâmela Almeida')
  end