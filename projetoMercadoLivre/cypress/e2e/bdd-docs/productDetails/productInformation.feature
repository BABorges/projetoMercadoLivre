Feature: Informações básicas do produto

  Scenario: Ver detalhes do produto
    Given que estou na página de um produto específico
    Then devo ver o título do produto
    And o preço do produto
    And a condição (Novo/Usado)
    And o estoque disponível
    And o botão "Comprar agora"
    And o botão "Adicionar ao carrinho"