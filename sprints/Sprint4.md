## Sprint 4

### Work that we have completed in Sprint 4

Frontend
- This sprint, the frontend team focused on developing more functionality for the user regarding the Search page, Home page, Preferences page, and more.

- Overrall formatting changes were implemented, making font and background color changes, moving to stroked buttons instead of raised buttons, as well as having mat-cards serve as the base for all pages.

- The Preferences page was changed to provide more options regarding diets, allergens, and cuisines. Once the user edits all their preferences they will click on the save preferences button to send a PATCH request to the backend and a small snackbar will popup stating the preferences have been saved. Whenever the user returns to the page, it will load with their previously saved preferences by sending a GET request.

- For each card that contains a recipe, there are now "Instructions" and "Description" buttons that each return the desired information that is displayed on a dialog.

- The entire search page was redone, showing 21 mat-cards of cuisine options which the user can click on. They are then routed to a new page with a url corresponding to that cuisine, and a call to the backend is made to get recipes of that type which are then displayed on mat-cards. The users can add the recipe, and can view the instructions and descriptions.

- An archive page was created, where users can view all recipes that they previously had added to their weekly recipes, but have since expired. The user has the option to add these back to their weekly recipes.

- Pdf download functionality was created, using jsPDF() to create a pdf that shows each ingredient, amount, and aisle where that ingredient can be found. If multiple recipes have the same ingredient, the amounts are added with one another and combined into one entry. 

- A remove button was also added in the weekly recipes card, enabling the user to delete recipes from their weekly recipes list. This makes a post request to the backend to remove the recipe.

- The home page was reformatted in the new mat-card structure, and buttons to download the pdf, navigate to the archive, and navigate to the search page were added.

Backend
- During this sprint, the backend team focused on making several changes to the Go and Flask apis. One of the primary additions to Go was the implementation of token authentication to secure requests coming from the frontend. We wanted to ensure that only the logged-in user could view or change their information. We achieved this by hashing the user's Auth0 ID and sending it with each request to the Go api. In Go, we validated that the hash matched the user's email address by sending a request to Auth0 to confirm the information.

- The implementation of token authentication had a significant impact on our tests. We had to update and create new test cases to ensure that the authentication was working correctly and that only authorized users could access their information.

- We also added new endpoints to the Flask api, including the `/remove` endpoint, which allows users to remove a recipe from their weekly recipes. Another  endpoint we implemented was `/search`, which displays recipes for a given cuisine on the search page. These endpoints were designed to improve the user experience by providing additional functionality and making it easier for users to find and manage their favorite recipes.

### List unit tests for frontend

#### Cypress Tests
- Home Screen Redirection Test 
  - Tests the newly added user navigation buttons, confirming their ability to correctly route between the home pages and other tabs. 
- Login Security Test 
  - Test confirms login security by ensuring that the user must authenticate through auth0 before using the functionality of the website, and cannot merely press the log in button then navigate home.
- Navigation Test (modified from Sprint 3) 
  - Test the functionality of the side navigation bar, and ensures that users are able to navigate to any page regardless of their current location on the website. 
- Add Recipe Test 
  - Tests validity of the weekly recipes page, and the ability to generate weekly recipes within the 'Your Weekly Recipes' page. 
- Save Preferences Test
  - Meant to test the functionality of the preferences page and the program's ability to save user preferences in the database. Fixed from sprint 3.
- Archive Test
  - Navigates to the archive page and checks whether it is performing appropriately when the user is not logged in: displaying a mat-spinner.
- Generate PDF Test 
  - Tests whether pressing the download pdf button on the home screen actually produces a pdf that can be opened by the user.
- Search Page Test
  - Navigates to the search page and clicks on every single of the twenty one cards, then ensures that the page that is routed to for each contains a url of the appropriate cuisine category's name.

### List unit tests for backend

#### Go Tests
- TestFindUser
  - This confirms that the GetUser callback is working and successfully returns 'Michael T' and all associated data with email "michael.t@gmail.com".
- TestDeleteUser
  - This confirms that the DeleteUser callback is working and successfully deletes an existing user from the database.
- TestCreateUser
  - This confirms that the CreateUser callback is working and successfully adds a new user to the database.
- TestUpdateUser
  - This confirms that the UpdateUser callback is working and updates all fields of an existing user with one call.
- TestUpdateUserName
  - This confirms that the UpdateUser callback is working and updates the name of existing user from 'Test Update User' to 'Updated Name'.
- TestUpdateUserEmail
  - This confirms that the UpdateUser callback is working and updates the email of existing user from 'test@example.com' to 'updated@example.com'.
- TestUpdateUserSkill
  - This confirms that the UpdateUser callback is working and updates the skill level of existing user from 1 to 3.
- TestUpdateUserCuisineChoices
  - This confirms that the UpdateUser callback is working and updates the cuisine choices of existing user from 'mexican' to 'italian'.
- TestValidateToken
  - This confirms that ValidateToken is working as intended and returns true when a user is authenticated.

### Add documentation for your backend API 
This documentation can be found in the [docs](https://github.com/HudsonGri/foodplanner/tree/main/docs) folder of our GitHub.

### Video URL
[https://youtu.be/FuSJb_1RJ0o](https://youtu.be/FuSJb_1RJ0o)
