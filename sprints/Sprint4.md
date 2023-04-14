## Sprint 4

### Work that we have completed in Sprint 4

Frontend

Backend

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
- Save Preferences Test (incomplete)
  - Meant to test the functionality of the preferences page and the program's ability to save user preferences in the database.

### List unit tests for backend

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
