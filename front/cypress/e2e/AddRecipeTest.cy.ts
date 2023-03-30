describe('Add Recipe Test', () => {

    it('should send recipe to backend', () => {
      cy.visit('http://localhost:4200/home');
      cy.contains("Log in / Sign Up").click();
      cy.wait(20000); 
      
      cy.intercept('POST', 'http://localhost:5001/add', { statusCode: 200 }).as('add');

  
      // Visit the page where the addRecipe() function is called
      cy.visit('http://localhost:4200/weekly-recipes');
      cy.contains("Get Your Recipes For This Week").click();
      cy.wait(10000);

      const user_email = 'erikhartker';

      const card: Card[] = [
        {
          title: 'Authentic Chicken Enchiladas',
          image: 'https://spoonacular.com/recipeImages/633072-556x370.jpg',
          link: 'http://www.foodista.com/recipe/BXBVZXM8/authentic-chicken-enchiladas',
          description: 'A yummy meal',
          instructions: 'Throw a bunch of stuff in a bowl.',
        }
      ];

      const headers = {
        'Content-Type': 'application/json',
      };

      const options = {
        header : headers,
        useremail : user_email,
      };

      cy.get('button.mat-mini-fab')
      .find('mat-icon.material-icons')
      .contains('add')
      .click()
  
      // Call the addRecipe() function with test data
      //cy.window().its('addRecipe').invoke('http://localhost:5001/add', card, options);
  
      // Wait for the request to complete and check the response
      cy.wait('@addRecipe').then((xhr) => {
        expect(xhr.response.statusCode).to.equal(200);
      });
    });
  });