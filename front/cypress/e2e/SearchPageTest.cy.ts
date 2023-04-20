describe('Test clicking on African mat card', () => {
    it('Should navigate to the correct URL after clicking on African mat card', () => {
        let cuisines = ["African", "American", "British", "Cajun", "Caribbean", "Chinese", "Eastern European", "French", "German",
        "Greek", "Indian", "Irish", "Italian", "Japanese", "Jewish", "Korean", "Latin American", "Mediterranean", "Mexican", "Middle Eastern", "Nordic", "Southern", "Spanish", "Thai", "Vietnamese"];
        cy.visit('http://localhost:4200/search');
        for (let i = 0; i < cuisines.length; i++){
            let cuisineType = '/' + cuisines[i].toLowerCase();
            cuisineType = cuisineType.replace(/\s+/g, '_');
            cy.contains(cuisines[i]).click();
            cy.url().should('include', cuisineType);
            cy.visit('http://localhost:4200/search');
        }
        
    });
  });