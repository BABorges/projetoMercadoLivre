describe('template spec', () => {
  it('passes', () => {
    cy.visit('/')
    cy.contains('a.nav-logo', 'Mercado Livre Brasil - Onde comprar e vender de Tudo')
      .should('be.visible')
  })
})