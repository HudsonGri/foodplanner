## Sprint 2

### Work that we have completed in Sprint 2

Frontend
- The frontend team made further progress regarding pages for users to interact with. We also began to work on sending and receiving data from the backend as well as unit testing our Typescript code.

Backend
- The backend team made further progress on recipe calculation by collaborating with the Spoonacular API to retrieve recipes. Additionally, we incorporated testing in both Go and Flask.

### List unit tests and Cypress test for frontend
For the frontend we created tests for our Typescript functions

- NavigationTest (Cypress)
  - This test test the basic functionality of Cypress within the project. Ensures that the user can navigate between pages via the sidebar button, and is routed to the correct url.

- TestSavePreferences
  - This test checks to see if the function is able to successfully send data to the backend as well as check for an error in sending data to the backend

- TestSearchComponentCard
  - This test makes sure that the program registers when a card on the search page has been clicked on by the user.


### List unit tests for backend
For the backend we created tests for both Go and Flask.

#### Go Tests
- TestFindUsers
  - This confirms that the GetUsers callback is working and successfully returns both users 'Michael T' and 'Hudson G', the users with Id 1 and 2 respectively.
- TestFindUser
  - This confirms that the GetUser callback is working and successfully returns 'Michael T' and all associated data with Id 1.
- TestDeleteUser
  - This creates and deletes a user to confirm the DeleteUser callback is working.
- TestCreateUser
  - This creates a new user to confirm the CreateUser callback is working.
- TestUpdateUser
  - This confirms that the UpdateUser callback is working and updates the email of existing user, 'Michael T' with Id 1.

####  Flask Tests
- test_italian
  - This test confirms that the email 'hudsongriffith@gmail.com' returns a Italian dish.
- test_mexican
  -  This test confirms that the email 'michael.t@gmail.com' returns a Mexican dish.
- test_nonexistent_user
  - This test confirms that an error is returned when a call is made for a nonexistent user.

### Add documentation for your backend API 
This documentation can be found in the [docs](https://github.com/HudsonGri/foodplanner/tree/main/docs) folder of our GitHub.

### Video URL
[Sprint 2](https://youtu.be/ak0La5kH5tw)
