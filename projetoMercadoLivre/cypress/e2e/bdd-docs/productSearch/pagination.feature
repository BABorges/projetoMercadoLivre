Feature: Paginação de resultados

  Scenario: Navegar para próxima página
    Given que realizei uma busca por "mouse"
    And existem múltiplas páginas de resultados
    When clico em "Próxima"
    Then devo ver produtos diferentes da primeira página
    And a página atual deve ser "2"