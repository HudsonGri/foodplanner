//tests whether user must log in to auth0 to show a logged in state on the home page
describe('Login Security Test', () => {
  it('passes', () => {
    cy.visit('http://localhost:4200/')
    cy.contains("Log in / Sign Up").click();
    cy.visit('http://localhost:4200/')
    cy.contains("Log in / Sign Up");
  })
})