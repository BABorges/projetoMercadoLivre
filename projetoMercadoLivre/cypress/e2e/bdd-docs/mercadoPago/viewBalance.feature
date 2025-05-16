Feature: Visualizar saldo do Mercado Pago

  Scenario: Ver saldo e extrato
    Given que estou logado no Mercado Livre
    And tenho uma conta Mercado Pago ativa
    When acesso a seção "Mercado Pago"
    Then devo ver meu saldo atual
    And as últimas movimentações