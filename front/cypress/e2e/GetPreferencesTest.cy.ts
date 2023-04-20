// describe('PreferencesComponent', () => {
//     beforeEach(() => {
//       cy.visit('http://localhost:4200/preferences');
//     });
  
//     it('should get user preferences with GET request', () => {
//       cy.intercept('GET', 'http://localhost:8080/users/4').as('getPreferences');
  
//       cy.get('#save-preferences-button').click();
//       cy.wait('@getPreferences').its('response.statusCode').should('eq', 200);
  
//       cy.get('@getPreferences').then((response) => {
//         const responseData = response.body.data;
  
//         expect(responseData.id).to.exist;
//         expect(responseData.cuisine_choices).to.exist;
//         expect(responseData.cuisine_choices.diets).to.exist;
//         expect(responseData.cuisine_choices.allergies).to.exist;
//         expect(responseData.cuisine_choices.cuisines).to.exist;
  
//         // Add more expectations as needed for the data returned from the GET request
//       });
//     });
//   });