Feature: Navegação por subcategorias

  Scenario: Acessar subcategoria de Celulares
    Given que estou na página inicial do Mercado Livre
    When passo o mouse sobre "Categorias"
    And passo o mouse sobre "Eletrônicos, Áudio e Vídeo"
    And clico na subcategoria "Celulares e Smartphones"
    Then devo ser redirecionado para a página de "Celulares e Smartphones"
    And devo ver produtos relacionados a essa subcategoria