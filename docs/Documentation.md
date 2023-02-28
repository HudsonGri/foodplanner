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
- POST /users
  - Create a new user
  - Parameters:
    - 
  - Response:
- GET /users
  - Get a list of all users
  - Parameters:
    - 
- GET /users/:id
  - Get a specific user by ID
  - Parameters:
    - 
  - Response:
- DELETE /users/:id
  - Delete a specific user by ID
  - Parameters:
      - 
  - Response:
- PATCH /users/:id
  - Update an existing user by ID
  - Parameters:
    - 
  - Response:

## Recipe Calculation (Flask)
INFO HERE
