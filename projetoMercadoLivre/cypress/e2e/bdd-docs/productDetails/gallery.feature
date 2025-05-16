Feature: Galeria de imagens do produto

  Scenario: Navegar pelas imagens do produto
    Given que estou na página de um produto específico
    When clico na próxima imagem da galeria
    Then a imagem exibida deve ser atualizada
    And a miniatura correspondente deve estar destacada