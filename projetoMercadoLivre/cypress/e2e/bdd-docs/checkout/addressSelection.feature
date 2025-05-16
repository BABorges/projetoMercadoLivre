Feature: Seleção de endereço de entrega

  Scenario: Selecionar endereço cadastrado
    Given que estou logado no Mercado Livre
    And tenho produtos no carrinho
    When inicio o processo de checkout
    And seleciono um endereço de entrega cadastrado
    Then o endereço deve aparecer como selecionado