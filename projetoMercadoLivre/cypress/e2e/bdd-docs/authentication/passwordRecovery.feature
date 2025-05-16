Feature: Logout de usuário

  Scenario: Sair da conta
    Given que estou logado no Mercado Livre
    When clico no menu do usuário
    And clico na opção "Sair"
    Then devo ser redirecionado para a página inicial
    And o botão "Entrar" deve estar visível