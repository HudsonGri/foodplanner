describe('Navigation Test', () => {

  it('user should navigate between pages', () => {
    cy.visit('http://localhost:4200/home');
    cy.contains("Log in / Sign Up").click();
    cy.wait(20000); 
    cy.contains("User Preferences").click(); // user preferences
    cy.url().should('include', 'http://localhost:4200/preferences')
    cy.visit('http://localhost:4200/home');
    cy.contains("Search").click();
    cy.url().should('include', 'http://localhost:4200/search')
    cy.contains("Home").click();
    cy.url().should('include', 'http://localhost:4200/home')
    cy.contains("Your Weekly Recipes").click();
    cy.url().should('include', 'http://localhost:4200/weekly-recipes')
    cy.contains("Archived Recipes").click();
    cy.url().should('include', 'http://localhost:4200/archive')
  });
});