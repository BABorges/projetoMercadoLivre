Feature: Recuperação de senha

  Scenario: Solicitar recuperação de senha
    Given que estou na página de login do Mercado Livre
    When clico no link "Esqueci minha senha"
    And preencho o campo email com "meu@email.com"
    And clico no botão "Enviar"
    Then devo ver a mensagem "Enviamos um email para você redefinir sua senha"