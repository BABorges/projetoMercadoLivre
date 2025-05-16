Feature: Calculadora de frete

  Scenario: Calcular frete para um CEP
    Given que estou na página de um produto específico
    When preencho o campo CEP com "01001000"
    And clico em "Calcular"
    Then devo ver as opções de frete disponíveis
    And os prazos de entrega estimados