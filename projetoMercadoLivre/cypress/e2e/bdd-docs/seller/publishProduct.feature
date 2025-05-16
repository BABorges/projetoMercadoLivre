Feature: Publicar produto como vendedor

  Scenario: Publicar novo anúncio
    Given que estou logado como vendedor no Mercado Livre
    When acesso "Publicar produto"
    And preencho todos os campos obrigatórios
    And envio fotos do produto
    And clico em "Publicar"
    Then devo ver a mensagem "Seu anúncio foi publicado com sucesso"
    And o produto deve estar visível na minha lista de produtos