## Sprint 2

### Work that we have completed in Sprint 2

### List unit tests and Cypress test for frontend
### List unit tests for backend
For the backend we created tests for both Go and Flask.

#### Go Tests
- TestFindUsers
  - This confirms that the GetUsers callback is working and successfully returns 'Hudson G' the user with Id 2.
- TestDeleteUser
  - This creates and deletes a user to confirm the DeleteUser callback is working.

### Flask Tests
- test_italian
  - This test confirms that the email 'hudsongriffith@gmail.com' returns a Italian dish.
- test_mexican
  -  This test confirms that the email 'michael.t@gmail.com' returns a Mexican dish.
- test_nonexistent_user
  - This test confirms that an error is returned when a call is made for a nonexistent user.

### Add documentation for your backend API 
This documentation can be found in the [docs](https://github.com/HudsonGri/foodplanner/tree/main/docs) folder of our GitHub.