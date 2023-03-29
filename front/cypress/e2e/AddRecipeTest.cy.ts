describe('Add recipe', () => {

    it('should send recipe to backend', () => {
      cy.visit('http://localhost:4200/home');
      cy.contains("Log in / Sign Up").click();
      cy.contains("Email address", {force: true}).click().type('emhartker429@gmail.com');
      cy.contains("Password").click().type('Bssm@n429');
      cy.contains("Continue").click();
      cy.url().should('not.contain', '/login');
      cy.intercept('POST', 'http://localhost:5001/add').as('addRecipe');
  
      // Visit the page where the addRecipe() function is called
      cy.visit('http://localhost:4200/weekly-recipes');


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
  
      // Call the addRecipe() function with test data
      cy.window().its('addRecipe').invoke('http://localhost:5001/add', card, options);
  
      // Wait for the request to complete and check the response
      cy.wait('@addRecipe').then((xhr) => {
        expect(xhr.response.body).to.have.property('http://localhost:5001/add', card, options);
        expect(xhr.response.body).to.have.property('card').to.deep.equal(['Authentic Chicken Enchiladas', 'https://spoonacular.com/recipeImages/633072-556x370.jpg', 'http://www.foodista.com/recipe/BXBVZXM8/authentic-chicken-enchiladas', 'A yummy meal', 'Throw a bunch of stuff in a bowl.',]);
        expect(xhr.response.statusCode).to.equal(200);
      });
    });
  });