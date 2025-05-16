Feature: Escrever avaliação de produto

  Scenario: Avaliar produto comprado
    Given que estou logado no Mercado Livre
    And comprei um produto que ainda não avaliei
    When acesso a página "Minhas compras"
    And clico em "Avaliar produto"
    And seleciono 5 estrelas
    And escrevo um comentário positivo
    And clico em "Enviar avaliação"
    Then devo ver a mensagem "Avaliação enviada com sucesso"