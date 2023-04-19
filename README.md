# Food Planner

A web application to provide an efficient weekly grocery list—paired with recipes—based on the user's preferred dishes and cuisine type.

A user selects several of their favorite cuisine types, as well as specific dishes. The website will then prepare a weekly plan for meals and suggest common ingredients to purchase. The ingredients are provided in such a way as to maximize overlap between meals and mitigate spending. The user can also select how often they want to cook, the variety of dishes, maximum weekly spending, and specific ingredients to avoid.

### Preemptive Feature List:
- Allow for user preferences such as: allergies, dietary needs, nutrition, cost, variety, time available.
- Provide shopping lists for specific stores, with total cost
    - Ingredients list will also provide multiple different options ranging from most to least expensive
- Ability to edit a recipe to include alternatives to account for allergies and dietary restrictions
    - ex. Oil instead of butter
- Keep history of previously suggested ingredients, shopping lists, and recipes
- Ability to edit, download, and share shopping lists
- Allow users to input the number of people they are cooking for, so that the ingredient amounts can be adjusted accordingly

**Backend:**
- Hudson
- Michael

**Frontend:**
- Derek
- Erik


## How to run

### Prerequisites
Before you can run this application, make sure you have the following software installed on your computer:

- Node.js and npm (Node.js package manager)
- Go
- Python 3

### Running the Application
To run this application, you need to run three parts concurrently: the Angular frontend, the Go backend, and the Flask backend. Follow the steps below to run each part:

### Angular Frontend
The Angular frontend is responsible for rendering the web pages and handling user interactions. To run it:

1. Open a terminal window and navigate to the `front` directory of the project.
2. Run the following command to install the required dependencies:
``` bash
npm install
```

3. After the dependencies are installed, run the following command to start the Angular server:
``` bash
ng serve
```
This will start the server at `http://localhost:4200`.


### Go Backend
The Go backend is responsible for handling HTTP requests from the frontend and communicating with the database. To run it:

1. Open a new terminal window and navigate to the `backend/go` directory of the project.
2. Run the following command to start the Go server:
``` bash
go run main.go
```
This will start the server at `http://localhost:8080`.

### Flask Frontend
The Flask backend is responsible for handling recipe calculation. To run it:

1. Open another terminal window and navigate to the `backend/flask` directory of the project.
2. Run the following command to install the required Python packages:
``` bash
pip install -r requirements.txt
```
3. After the packages are installed, run the following command to start the Flask server:
```bash
python3 app.py
```
This will start the server at `http://localhost:5001`.

#### Accessing the Application
After all three parts are running, you can access the application by opening a web browser and navigating to `http://localhost:4200`. This will open the homepage of the application, where you can create an account by clicking the "Log in / Sign Up" button in the bottom left corner.
