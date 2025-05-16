Feature: Cupons de desconto

  Scenario: Aplicar cupom válido
    Given que tenho um produto no carrinho
    And possuo um cupom de desconto válido
    When acesso a página do carrinho
    And preencho o campo "Cupom de desconto" com o cupom válido
    And clico em "Aplicar"
    Then o valor total deve ser atualizado com o desconto