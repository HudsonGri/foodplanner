describe('PreferencesComponent', () => {
    beforeEach(() => {
      cy.visit('/preferences');
    });
  
    it('should get user preferences with GET request', () => {
      cy.intercept('GET', 'http://localhost:8080/users/4').as('getUserPreferences');
  
      cy.get('#preferencesBtn').click();
      cy.wait('@getUserPreferences').its('response.statusCode').should('eq', 200);
  
      cy.get('@getUserPreferences').then((interception) => {
        const responseData = interception.response.body.data;
  
        expect(responseData.id).to.exist;
        expect(responseData.cuisine_choices).to.exist;
        expect(responseData.cuisine_choices.diets).to.exist;
        expect(responseData.cuisine_choices.allergies).to.exist;
        expect(responseData.cuisine_choices.cuisines).to.exist;
  
        // Add more expectations as needed for the data returned from the GET request
      });
    });
  });