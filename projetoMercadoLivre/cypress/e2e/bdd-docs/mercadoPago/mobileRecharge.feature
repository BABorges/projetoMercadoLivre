Feature: Recarga de celular com Mercado Pago

  Scenario: Recarregar créditos
    Given que estou na seção de recargas
    When seleciono a operadora "Vivo"
    And informo o número "11999999999"
    And seleciono o valor "R$ 20,00"
    And confirmo a recarga
    Then devo ver a mensagem "Recarga realizada com sucesso"