describe('Saving Preferences', () => {
    beforeEach(() => {
      // cy.server();
      // cy.route('PATCH', '/users/preferences').as('patchUserPreferences');
      cy.visit('http://localhost:4200/preferences');
    });
  
    it('should save user preferences when savePreferences is called', () => {
    //   cy.server();
    //   cy.route('GET', 'http://localhost:8080/users/*', {
    //     data: {
    //       id: 1,
    //       email: 'test@example.com',
    //       cuisine_choices: {}
    //     }
    //   });
    //   cy.route('PATCH', 'http://localhost:8080/users/*', {});
  
        cy.get('#vegan').check();
        cy.get('#vegetarian').check();
        cy.get('#gluten-free').check();
 
        cy.get('#save-preferences-button').click();
  
        cy.wait('@patchUserPreferences');
        cy.get('.success-message').should('contain', 'Preferences Saved Successfully');
    });
  });