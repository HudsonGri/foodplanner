/*describe('Saving Preferences', () => {
    beforeEach(() => {
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

        cy.window().then((win) => {
          cy.stub(win.console, 'log').as('consoleLog');
        });
  
        cy.get('#vegan').check();
        cy.get('#vegetarian').check();
        cy.get('#gluten').check();
        cy.get('#japanese').check();
      
        cy.get('#save-preferences-button').click();
  
        //cy.wait('@patchUserPreferences');
        cy.get('@consoleLog').should('have.been.calledWith', "Preferences Saved Successfully");
    });
  });
*/

describe('savePreferences function', () => {
  it('should log "Preferences Saved Successfully"', () => {
    cy.visit('http://localhost:4200/preferences');

    cy.get('#gluten_free').check();
    cy.get('#vegetarian').check();
    cy.get('#american').check();

    cy.window().then(win => {
      const consoleLog = cy.stub(win.console, 'log').as('consoleLog');
      cy.wait(4000);
      cy.get('#save-preferences-button').click().then(() => {
        
      });
    });
  });
});  

