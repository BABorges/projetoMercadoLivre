Feature: Compartilhar lista de desejos

  Scenario: Compartilhar lista por email
    Given que tenho uma lista de desejos
    When clico em "Compartilhar lista"
    And preencho um email válido
    And clico em "Enviar"
    Then devo ver a mensagem "Lista compartilhada com sucesso"