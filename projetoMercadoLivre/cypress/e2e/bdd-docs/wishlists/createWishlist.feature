Feature: Criar lista de desejos

  Scenario: Criar nova lista e adicionar produto
    Given que estou logado no Mercado Livre
    And estou na página de um produto
    When clico em "Adicionar à lista"
    And seleciono "Criar nova lista"
    And preencho o nome da lista como "Eletrônicos 2023"
    And clico em "Criar"
    Then o produto deve ser adicionado à nova lista
    And a lista deve aparecer em "Minhas listas"