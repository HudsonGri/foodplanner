describe('Navigation Test', () => {

  it('user should navigate between pages', () => {
    cy.visit('http://localhost:4200/');
    cy.contains("User Preferences").click(); // user preferences
    cy.url().should('include', 'http://localhost:4200/preferences')
  });
});