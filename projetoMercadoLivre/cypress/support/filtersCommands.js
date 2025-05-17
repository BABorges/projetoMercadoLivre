/// <reference types="cypress" />

// COMANDO PERSONALIZADO PARA FILTRAR A BUSCA DE UM PRODUTO
Cypress.Commands.add('filtraProduto', (filter) => {

    //REALIZA O PRIMEIRO FILTRO
    cy.get('span.ui-search-filter-name')
        .contains(filter.primeiroFiltro)
        .should('be.visible')
        .click()

        cy.wait(1000, {log: false})
    //REALIZA O SEGUNDO FILTRO
    cy.get('span.ui-search-filter-name')
        .contains(filter.segundoFiltro)
        .should('be.visible')
        .click()
        cy.wait(2000, {log: false})

    //REALIZA O TERCEIRO FILTRO
    cy.get('span.ui-search-filter-name')
        .contains(filter.terceiroFiltro)
        .should('be.visible')
        .click()
        cy.wait(2000, {log: false})

    //REALIZA O QUARTO FILTRO
    cy.get('span.ui-search-filter-name')
        .contains(filter.quartoFiltro)
        .should('be.visible')
        .click()
        cy.wait(2000, {log: false})

    //REALIZA O QUINTO FILTRO
    cy.get('span.ui-search-filter-name')
        .contains(filter.quintoFiltro)
        .should('be.visible')
        .click()
})