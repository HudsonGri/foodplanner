# Foodplanner Backend Documentation
This is the documentation for the backend of foodplanner detailing the endpoints for our Go and Flask implementation.

## User Preferences
- Cuisine type
  - African, American, British, Cajun, Caribbean, Chinese, Eastern European, European, French, German, Greek, Idian, Irish, Italian, Japanese, Jewish, Korean, Latin American, Mediterranean, Mexican, Middle Eastern, Nordic, Southern, Spanish, Thai, Vietnamese.
- Amount of time needed to complete a recipe
  -  Quick and easy (less than 30 minutes), Moderate (between 30 minutes and 1 hour), Time-consuming (more than 1 hour)
- Overall healthiness of meals (quantified by number of calories, grams of fat/sugar/etc.)
  - Healthy, moderately healthy, indulgent
- Price range of ingredients in a recipe
  - Budget-friendly, Mid-range, High-end
- Portion size (scale the quantity of needed ingredients by N people)
- Experience and skill level required to complete a recipe
  - Beginner-friendly, Intermediate, Advanced
- Food allergies to track ingredients that should be avoided
  - Dairy, Wheat, Peanuts, Tree Nuts, Shellfish, etc.

## Database Integration (Go)

POST /users
- Create a new user
  - Response
    - {
    "data": {
        "id": 3,
        "name": "Test User",
        "email": "testuser@example.com",
        "skill_level": 0,
        "cuisine_choices": ""
    }
}
  - Parameters

| Name | Type | Description |
|---|---|---|
| Name | "string" | The name of the new user |
| Email | "string" | The email of the new user |

GET /users
- Get a list of all users
  - Response
    - {
  "data": [
    {
      "id": 1,
      "name": "Michael T",
      "email": "michael.t@gmail.com",
      "skill_level": "2",
      "cuisine_choices": "['mexican']"
    },
    {
      "id": 2,
      "name": "Hudson G",
      "email": "hudsongriffith@gmail.com",
      "skill_level": 2,
      "cuisine_choices": "['mexican']"
    }
  ]
}

GET /users/:id
- Get a specific user by ID
  - Response (does not include the recipes due to their length):
    ``` json
    "data":{
      "id":2,
      "name":"Hudson G",
      "email":"hudsongriffith@gmail.com",
      "skill_level":2,
      "cuisine_choices":"italian",
      "recipes": "..." }

  - Parameters

| Name | Type | Description |
|---|---|---|
| ID | "uint" | The ID of the user to retrieve |

DELETE /users/:id
- Delete a specific user by ID
  - Response
    - {
    "data": true
}
  - Parameters

| Name | Type | Description |
|---|---|---|
| ID | "uint" | The ID of the user to delete |

PATCH /users/:id
- Update an existing user by ID
  - Response
    - {
    "data": {
        "id": 3,
        "name": "Test User",
        "email": "updated@example.com",
        "skill_level": 0,
        "cuisine_choices": ""
    }
}
  - Parameters

| Name | Type | Description |
|---|---|---|
| ID | "uint" | The ID of the user to update |
| Name | "string" | The name of the new user |
| Email | "string" | The email of the new user |


## Recipe Calculation (Flask)

/recipe

This API endpoint takes a user email and returns a json object containing a recipe from a user's preffered cuisine.

**Request**

usr_email - The email of the user for whom the recipe is being fetched.

**Response**

Returns a JSON object containing:

recipe_result - The name of a recipe from the user's preferred cuisine.

status - A string indicating the status of the request. Possible values are "success" and "error".

**Example**
``` sql
GET /recipe?usr_email=john@example.com
```

``` json
{
    "recipe_result": "One-Skillet Mexican Quinoa",
    "status": "success"
}
```
*Note: This result is preliminary and likely to change as more functionality is added to the flask backend.*
