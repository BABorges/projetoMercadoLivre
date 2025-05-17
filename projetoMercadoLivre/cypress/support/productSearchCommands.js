/// <reference types="cypress" />

// COMANDO PERSONALIZADO PARA BUSCAR UM PRODUTO VIA SEARCH
Cypress.Commands.add('buscaProduto', (search) => {

    // CLICA NO SEARCH QUE POSSUI O PLACEHOLDER BUSCAR PRODUTO, MARCAS E MUITO MAIS...
    cy.get("#cb1-edit")
        .should('have.attr', 'placeholder', 'Buscar produtos, marcas e muito mais…')
        .click()

    // PREENCHE A INFORMAÇÃO A SER CONSULTADA
    cy.get("#cb1-edit")
        .should('have.attr', 'placeholder', 'Buscar produtos, marcas e muito mais…')
        .type(`${search.produtoConsulta} ${search.produtoFabricante}{enter}`)
})