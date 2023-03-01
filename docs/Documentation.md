### Foodplanner Backend Documentation
This is the documentation for the backend of foodplanner detailing the endpoints for our Go and Flask implementation

## User Preferences
- Cuisine type
- Amount of time needed to complete a recipe
- Overall healthiness of meals (quantified by number of calories, grams of fat/sugar/etc.)
- Price range of ingredients in a recipe
- Portion size (scale the quantity of needed ingredients by N people)
- Experience and skill level required to complete a recipe
- Food allergies to track ingredients that should be avoided

## Database Integration (Go)
# Endpoints
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
  - Response
    - {
    "data": {
        "id": 1,
        "name": "Michael T",
        "email": "michael.t@gmail.com",
        "skill_level": 2,
        "cuisine_choices": "['mexican']"
    }
}
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
INFO HERE
