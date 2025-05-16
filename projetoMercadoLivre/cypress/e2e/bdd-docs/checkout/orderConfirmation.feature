Feature: Confirmação de pedido

  Scenario: Finalizar compra com sucesso
    Given que completei todas as etapas do checkout
    When confirmo a compra
    Then devo ser redirecionado para a página de confirmação
    And receber um e-mail de confirmação
    And ver o número do pedido