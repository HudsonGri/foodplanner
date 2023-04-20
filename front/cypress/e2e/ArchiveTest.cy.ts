describe('Archive Page', () => {
    it('should visit archive page and check whether loading', () => {
      cy.visit('http://localhost:4200/home')
      cy.contains('Show Archive').click()
  
      cy.get('mat-spinner').should('exist') // check if spinner is there to indicate loading.

    });
  });