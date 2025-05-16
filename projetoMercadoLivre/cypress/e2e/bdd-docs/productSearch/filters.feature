Feature: Filtros de busca

  Scenario: Aplicar múltiplos filtros
    Given que realizei uma busca por "notebook"
    When aplico o filtro "Novo"
    And aplico o filtro "Até R$ 2000"
    Then todos os produtos exibidos devem estar dentro do preço máximo
    And devem ser classificados como "Novo"