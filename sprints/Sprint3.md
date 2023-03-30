## Sprint 3

### Work that we have completed in Sprint 3

Frontend
- ...
- Created the weekly recipes tab, which enables the user to generate and view their weekly suggested recipes, as well as to view and add their saved recipes. 
  - Created a button to generate weekly suggested recipes, which displays suggested recipes to the screen when pressed. The generate recipes button makes a get request from the backend, and the user's relevant retrieved info is stored in a data structure and populated to the screen via an ngFor loop, which puts the recommended dish's name and image within a card. 
  - Buttons on each suggested recipe card were added for description, instructions, and adding the recipe to the user's selected recipes for the week.
  - Created recipe saving functionality. When the add button is pressed on a suggested recipe card, a post request is made to the backend, saving that item in the database, and a subsequent function is called to make a get request and display the user's saved recipe cards to the screen.
- Made progress on the home screen, improving appearance and user navigation between pages.

Backend
- This sprint, the backend team worked on several tasks. First, we updated Go and our database to accommodate two new columns for storing JSON data related to a user's recipe choices and our calculated recipes. We also expanded our testing efforts in Go to include changing specific user preferences as well as worked to allow a user to update their preferences, such as skill level and cuisine choices, after creating a profile. In addition, we focused on improving the Flask API, which calculates recipes based on a user's preferences and ingredient overlaps. We also helped integrate these additions into the frontend for users to easily view.

### List unit tests for frontend

#### Cypress Tests
- Home Screen Redirection Test 
  - Tests the newly added user navigation buttons, confirming their ability to correctly route between the home pages and other tabs. (Ammended since the recording of the video, but before the deadline, passes on all actions).
- Login Security Test (modified from Sprint 2) 
  - Test confirms login security by ensuring that the user must authenticate through auth0 before using the functionality of the website, and cannot merely press the log in button then navigate home.
- Navigation Test (modified from Sprint 2) 
  - Test the functionality of the side navigation bar, and ensures that users are able to navigate to any page regardless of their current location on the website. 
- Add Recipe Test (incomplete) 
  - Tests validity of the post request made when the user presses the add button on a recommended recipe within the 'Your Weekly Recipes' page. Currently running into issues regarding the cypress test authenticating through auth0 on its. 
  - In the mean time, the post request was confirmed to work through checking the network tab of Developer Tools and its respective return code and return value.

### List unit tests for backend
For the backend we created tests for Go

#### Go Tests
- TestFindUser (modified from Sprint 2)
  - This confirms that the GetUser callback is working and successfully returns 'Michael T' and all associated data with email "michael.t@gmail.com".
- TestUpdateUser (modified from Sprint 2)
  - This confirms that the UpdateUser callback is working and updates all fields of an existing user with one call.
- TestUpdateUserName
  - This confirms that the UpdateUser callback is working and updates the name of existing user from 'Test Update User' to 'Updated Name'.
- TestUpdateUserEmail
  - This confirms that the UpdateUser callback is working and updates the email of existing user from 'test@example.com' to 'updated@example.com'.
- TestUpdateUserSkill
  - This confirms that the UpdateUser callback is working and updates the skill level of existing user from 1 to 3.
- TestUpdateUserCuisineChoices
  - This confirms that the UpdateUser callback is working and updates the cuisine choices of existing user from 'mexican' to 'italian'.


### Add documentation for your backend API 
This documentation can be found in the [docs](https://github.com/HudsonGri/foodplanner/tree/main/docs) folder of our GitHub.

### Video URL
[Sprint 3](https://youtu.be/fJRmfwFcs_Q)
