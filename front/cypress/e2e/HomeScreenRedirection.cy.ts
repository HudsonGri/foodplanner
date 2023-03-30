describe('Home Screen Redirection Test', () => {
    it('passes', () => {
      cy.visit('http://localhost:4200/home')
      cy.contains("Select Preferences").click();
      cy.url().should('include', 'http://localhost:4200/preferences')
      cy.visit('http://localhost:4200/home')
      cy.contains("Generate and Select Recipes").click();
      cy.url().should('include', 'http://localhost:4200/weekly-recipes')
    })
  })