Feature: Gerenciar lista de desejos

  Scenario: Remover item da lista
    Given que tenho uma lista de desejos com itens
    When acesso a lista
    And clico em "Remover" em um item
    Then o item deve ser removido da lista