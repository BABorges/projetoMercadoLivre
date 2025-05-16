Feature: Alterar quantidade de itens

  Scenario: Aumentar quantidade de um item
    Given que tenho um produto no carrinho
    When acesso a página do carrinho
    And aumento a quantidade para "2"
    Then o subtotal deve refletir o preço de 2 unidades