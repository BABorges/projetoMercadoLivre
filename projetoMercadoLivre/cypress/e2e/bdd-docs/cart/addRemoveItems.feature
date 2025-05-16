Feature: Gerenciamento de itens no carrinho

  Scenario: Adicionar produto ao carrinho
    Given que estou na página de um produto específico
    When clico em "Adicionar ao carrinho"
    Then devo ver a mensagem "Produto adicionado ao carrinho"
    And o ícone do carrinho deve mostrar "1" item

  Scenario: Remover produto do carrinho
    Given que tenho um produto no carrinho
    When acesso a página do carrinho
    And clico em "Remover"
    And confirmo a remoção
    Then o carrinho deve estar vazio
    And devo ver a mensagem "Seu carrinho está vazio"