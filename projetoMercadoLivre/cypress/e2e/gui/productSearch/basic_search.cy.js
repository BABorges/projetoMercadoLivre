/// <reference types="cypress" />

// FUNCIONALIDADE BUSCA BÁSICA DE PRODUTOS
describe('Busca básica de produtos', () => {

    beforeEach(() => {

        // VISITA A PÁGINA INICIAL ANTES DE QUALQUER AÇÃO
        cy.visit('/')
    })
    it('Buscar produto existente', () => {

        // CARREGA OS DADOS DO ARQUIVO DADOSPRODUTO.JSON
        cy.fixture("dadosProduto")
            .then((search) => {

                // BUSCA UM PRODUTO VIA SEARCH
                cy.buscaProduto(search)
                    .then(() => {

                        // VALIDA QUE TODOS OS PRODUTOS SÃO DO FABRICANTE LENOVO
                        cy.get('li.ui-search-layout__item')
                            .each((grid) => {
                                const texto = grid.text()
                                expect(texto).to.include(search.produtoFabricante)
                            })

                        // VALIDA SE HÁ UM PRODUTO COM A DESCRIÇÃO DESEJADA
                        cy.get('li.ui-search-layout__item')
                            .contains('h3', search.produtoDescricao)
                            .should('be.visible')

                        // VALIDA OS DADOS DESSE PRODUTO
                        cy.get('li.ui-search-layout__item')
                            .contains('h3', search.produtoDescricao)
                            .parents('li.ui-search-layout__item')
                            .within(() => {

                                // VALIDA A AVALIAÇÃO DO PRODUTO
                                cy.get('span.poly-reviews__rating')
                                    .should('be.visible')
                                    .and('contain', search.produtoAvaliacao)

                                // VALIDA O VALOR A VISTA DO PRODUTO
                                cy.get('span.andes-money-amount.andes-money-amount--cents-superscript')
                                    .should('be.visible')
                                    .and('contain', search.produtoValorAVista)

                                // VALIDA O VALOR A PRAZO DO PRODUTO
                                cy.get('span.poly-price__installments')
                                    .find('span.andes-money-amount__fraction')
                                    .eq(0)
                                    .should('be.visible')
                                    .and('contain', search.produtoValorPrazo)

                            })

                    })
            })

    })
})