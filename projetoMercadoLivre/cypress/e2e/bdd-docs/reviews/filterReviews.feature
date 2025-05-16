Feature: Filtrar avaliações

  Scenario: Filtrar por avaliações positivas
    Given que estou na seção de avaliações de um produto
    When seleciono o filtro "5 estrelas"
    Then só devo ver avaliações com 5 estrelas