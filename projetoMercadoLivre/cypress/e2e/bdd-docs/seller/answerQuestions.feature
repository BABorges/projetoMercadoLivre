Feature: Responder perguntas como vendedor

  Scenario: Responder pergunta sobre produto
    Given que recebi uma pergunta sobre meu produto
    When acesso a seção "Perguntas"
    And escrevo uma resposta
    And clico em "Enviar"
    Then a resposta deve ser publicada