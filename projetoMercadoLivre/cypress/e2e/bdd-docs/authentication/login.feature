Feature: Login de usuário

  Scenario: Login com credenciais válidas
    Given que estou na página inicial do Mercado Livre
    When clico no botão "Entrar"
    And preencho o campo email com um email válido
    And preencho o campo senha com uma senha válida
    And clico no botão "Entrar"
    Then devo ser redirecionado para a página inicial
    And ver meu nome de usuário no cabeçalho

  Scenario: Login com credenciais inválidas
    Given que estou na página inicial do Mercado Livre
    When clico no botão "Entrar"
    And preencho o campo email com "email@invalido.com"
    And preencho o campo senha com "senhaerrada"
    And clico no botão "Entrar"
    Then devo ver a mensagem "Usuário ou senha inválidos"