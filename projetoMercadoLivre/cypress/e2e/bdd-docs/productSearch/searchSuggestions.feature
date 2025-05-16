Feature: Sugestões de busca

  Scenario: Ver sugestões ao digitar
    Given que estou na página inicial do Mercado Livre
    When começo a digitar "telefone" no campo de busca
    Then devo ver uma lista de sugestões contendo o termo "telefone"