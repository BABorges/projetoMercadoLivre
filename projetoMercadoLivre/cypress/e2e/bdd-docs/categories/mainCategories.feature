Feature: Navegação por categorias principais

  Scenario: Acessar categoria Eletrônicos
    Given que estou na página inicial do Mercado Livre
    When passo o mouse sobre "Categorias"
    And clico na categoria "Eletrônicos, Áudio e Vídeo"
    Then devo ser redirecionado para a página de "Eletrônicos, Áudio e Vídeo"
    And devo ver produtos relacionados a essa categoria