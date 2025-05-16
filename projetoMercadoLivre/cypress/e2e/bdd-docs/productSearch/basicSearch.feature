Feature: Busca básica de produtos

  Scenario: Buscar produto existente
    Given que estou na página inicial do Mercado Livre
    When preencho o campo de busca com "iPhone 13"
    And pressiono Enter
    Then devo ver uma lista de produtos relacionados a "iPhone 13"
    And cada item deve conter "iPhone" ou "13" no título

  Scenario: Buscar produto inexistente
    Given que estou na página inicial do Mercado Livre
    When preencho o campo de busca com "asdfghjkl123"
    And pressiono Enter
    Then devo ver a mensagem "Não encontramos resultados para 'asdfghjkl123'"