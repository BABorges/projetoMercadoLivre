Feature: Pagamento com Mercado Pago

  Scenario: Pagar com saldo Mercado Pago
    Given que tenho saldo suficiente no Mercado Pago
    And estou no checkout
    When seleciono "Pagar com Mercado Pago"
    And confirmo o pagamento
    Then a compra deve ser concluída com sucesso