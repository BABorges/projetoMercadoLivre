Feature: Ler avaliações de produtos

  Scenario: Ver avaliações de um produto
    Given que estou na página de um produto
    When acesso a seção de avaliações
    Then devo ver as avaliações existentes
    And a média de estrelas