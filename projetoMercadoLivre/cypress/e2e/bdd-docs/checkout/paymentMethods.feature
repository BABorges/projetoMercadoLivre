Feature: Métodos de pagamento

  Scenario: Selecionar cartão de crédito
    Given que estou na etapa de pagamento do checkout
    When seleciono "Cartão de crédito"
    And preencho os dados do cartão válidos
    Then o pagamento deve ser processado com sucesso