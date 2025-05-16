Feature: Gerenciar produtos como vendedor

  Scenario: Editar produto existente
    Given que tenho um produto publicado
    When acesso "Meus anúncios"
    And clico em "Editar" no produto
    And atualizo o preço
    And clico em "Salvar"
    Then devo ver a mensagem "Alterações salvas com sucesso"