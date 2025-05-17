/// <reference types="cypress" />

// FUNCIONALIDADE BUSCA BÁSICA DE PRODUTOS
describe('Filtros de busca', () => {

    beforeEach(() => {

        // VISITA A PÁGINA INICIAL ANTES DE QUALQUER AÇÃO
        cy.visit('/')
    })
    it('Aplica múltiplos filtros', () => {

        // CARREGA OS DADOS DO ARQUIVO DADOSPRODUTO.JSON
        cy.fixture("dadosProduto")
        .then((search) => {
            
            // CARREGA OS DADOS DO ARQUIVO DADOSFILTRO.JSON
                cy.fixture("dadosFiltro")
                    .then((filter) => {


                        // BUSCA UM PRODUTO VIA SEARCH
                        cy.buscaProduto(search)
                            .then(() => {

                                // VALIDA SE HÁ UM PRODUTO COM A DESCRIÇÃO DESEJADA
                                cy.get('li.ui-search-layout__item')
                                    .contains('h3', search.produtoDescricao)
                                    .should('be.visible')
                            })

                        // FILTRA A BUSCA DE UM PRODUTO
                        cy.filtraProduto(filter)
                    })
            })
    })
})