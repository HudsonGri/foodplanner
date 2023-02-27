## Sprint 2

### Work that we have completed in Sprint 2

### List unit tests and Cypress test for frontend

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
