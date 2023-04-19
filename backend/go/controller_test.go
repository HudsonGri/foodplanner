package main

import (
	"01-Login/controllers"
	"01-Login/models"
	"encoding/json"
	"net/http"
	"net/http/httptest"
	"strconv"
	"strings"
	"testing"

	"github.com/gin-gonic/gin"
	"github.com/go-playground/assert/v2"
)

func TestFindUser(t *testing.T) {
	// Set up test database and router
	gin.SetMode(gin.TestMode)
	r := gin.Default()
	models.ConnectDatabase()

	// Perform request and check response
	req, _ := http.NewRequest("GET", "/users/michael.t@gmail.com/TEST", nil)
	w := httptest.NewRecorder()
	r.GET("/users/:email/:token", controllers.FindUser)
	r.ServeHTTP(w, req)

	assert.Equal(t, http.StatusOK, w.Code)
	var response map[string]models.UserRecipes
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, "Michael T", response["data"].Name)
	assert.Equal(t, "michael.t@gmail.com", response["data"].Email)
	assert.Equal(t, 2, response["data"].Skill_Level)
	rCuisine := response["data"].Cuisine_choices
	trueChoices := map[string]bool{"spanish": true, "southern": true, "jewish": true, "korean": true, "japanese": true, "latin_american": true}
	for key, values := range rCuisine {
		submap := values
		for subkey, value := range submap.(map[string]interface{}) {
			if key == "overallMealFilters" {
				continue
			}
			assert.Equal(t, trueChoices[subkey], value)
		}
	}
}

func TestDeleteUser(t *testing.T) {
	// Set up a test router and request/response recorder
	router := gin.Default()
	models.ConnectDatabase()
	w := httptest.NewRecorder()

	// Insert a user into the database
	user := models.User{Name: "Test Delete User", Email: "test@example.com"}
	models.DB.Create(&user)

	// Send a DELETE request to the router to delete the user
	req, _ := http.NewRequest("DELETE", "/users/"+strconv.FormatUint(uint64(user.ID), 10)+"/TEST", nil)
	router.DELETE("/users/:id/:token", controllers.DeleteUser)
	router.ServeHTTP(w, req)

	// Check that the response status is OK
	assert.Equal(t, http.StatusOK, w.Code)

	// Check that the response body is as expected
	var response map[string]bool
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, true, response["data"])

	// Check that the user has been deleted from the database
	var deletedUser models.User
	models.DB.Where("id = ?", user.ID).First(&deletedUser)
	assert.Equal(t, false, models.DB.RecordNotFound())
}

func TestCreateUser(t *testing.T) {
	// Initialize the Gin router and the database connection
	r := gin.Default()
	models.ConnectDatabase()

	// Define the expected response
	expectedResponse := gin.H{
		"name":            "Test User",
		"email":           "testuser@example.com",
		"cuisine_choices": "none",
		"recipes":         "none",
		"week_recipes":    "none",
	}

	user := models.User{Name: "Test User", Email: "testuser@example.com"}
	// Define the request payload
	payload := gin.H{
		"name":            user.Name,
		"email":           user.Email,
		"cuisine_choices": "none",
		"recipes":         "none",
		"week_recipes":    "none",
	}

	// Create a new recorder to record the HTTP response
	w := httptest.NewRecorder()

	payloadJSON, err := json.Marshal(gin.H(payload))
	if err != nil {
		t.Fatalf("Error converting payload to JSON string")
	}
	reqBody := strings.NewReader(string(payloadJSON))

	// Create a new request
	req, _ := http.NewRequest("POST", "/users", reqBody)
	req.Header.Set("Content-Type", "application/json")

	// Call the handler function
	r.POST("/users", controllers.CreateUser)
	r.ServeHTTP(w, req)

	// Check the response status code
	assert.Equal(t, http.StatusOK, w.Code)

	// Parse the response body into a map
	var response map[string]models.User
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, expectedResponse["email"], response["data"].Email)
}

func TestUpdateUser(t *testing.T) {
	// Initialize the Gin router and the database connection
	r := gin.Default()
	models.ConnectDatabase()

	// Define the expected response
	expectedResponse := gin.H{
		"name":            "Updated Name",
		"email":           "updated@example.com",
		"skill_level":     2,
		"cuisine_choices": "mexican",
	}

	user := models.User{Name: "Test Update User", Email: "test@example.com", Skill_Level: 1, Cuisine_choices: "italian"}
	models.DB.Create(&user)

	// Define the request payload
	payload := gin.H{
		"name":            "Updated Name",
		"email":           "updated@example.com",
		"skill_level":     2,
		"cuisine_choices": "mexican",
	}

	// Create a new recorder to record the HTTP response
	w := httptest.NewRecorder()

	payloadJSON, err := json.Marshal(gin.H(payload))
	if err != nil {
		t.Fatalf("Error converting payload to JSON string")
	}
	reqBody := strings.NewReader(string(payloadJSON))

	// Create a new request
	req, _ := http.NewRequest("PATCH", "/users/"+strconv.FormatUint(uint64(user.ID), 10), reqBody)

	// Call the handler function
	r.PATCH("/users/:id", controllers.UpdateUser)
	r.ServeHTTP(w, req)

	// Check the response status code
	assert.Equal(t, http.StatusOK, w.Code)

	// Parse the response body into a map
	var response map[string]models.User
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, expectedResponse["name"], response["data"].Name)
	assert.Equal(t, expectedResponse["email"], response["data"].Email)
	assert.Equal(t, expectedResponse["skill_level"], response["data"].Skill_Level)
	assert.Equal(t, expectedResponse["cuisine_choices"], response["data"].Cuisine_choices)
}

func TestUpdateUserName(t *testing.T) {
	// Initialize the Gin router and the database connection
	r := gin.Default()
	models.ConnectDatabase()

	// Define the expected response
	expectedResponse := gin.H{
		"name":            "Updated Name",
		"email":           "test@example.com",
		"skill_level":     2,
		"cuisine_choices": "mexican",
	}

	user := models.User{Name: "Test Update User", Email: "test@example.com", Skill_Level: 2, Cuisine_choices: "mexican"}
	models.DB.Create(&user)

	// Define the request payload
	payload := gin.H{
		"name": "Updated Name",
	}

	// Create a new recorder to record the HTTP response
	w := httptest.NewRecorder()

	payloadJSON, err := json.Marshal(gin.H(payload))
	if err != nil {
		t.Fatalf("Error converting payload to JSON string")
	}
	reqBody := strings.NewReader(string(payloadJSON))

	// Create a new request
	req, _ := http.NewRequest("PATCH", "/users/"+strconv.FormatUint(uint64(user.ID), 10), reqBody)

	// Call the handler function
	r.PATCH("/users/:id", controllers.UpdateUser)
	r.ServeHTTP(w, req)

	// Check the response status code
	assert.Equal(t, http.StatusOK, w.Code)

	// Parse the response body into a map
	var response map[string]models.User
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, expectedResponse["name"], response["data"].Name)
}

func TestUpdateUserEmail(t *testing.T) {
	// Initialize the Gin router and the database connection
	r := gin.Default()
	models.ConnectDatabase()

	// Define the expected response
	expectedResponse := gin.H{
		"name":            "Test Update User",
		"email":           "updated@example.com",
		"skill_level":     2,
		"cuisine_choices": "mexican",
	}

	user := models.User{Name: "Test Update User", Email: "test@example.com", Skill_Level: 2, Cuisine_choices: "mexican"}
	models.DB.Create(&user)

	// Define the request payload
	payload := gin.H{
		"email": "updated@example.com",
	}

	// Create a new recorder to record the HTTP response
	w := httptest.NewRecorder()

	payloadJSON, err := json.Marshal(gin.H(payload))
	if err != nil {
		t.Fatalf("Error converting payload to JSON string")
	}
	reqBody := strings.NewReader(string(payloadJSON))

	// Create a new request
	req, _ := http.NewRequest("PATCH", "/users/"+strconv.FormatUint(uint64(user.ID), 10), reqBody)

	// Call the handler function
	r.PATCH("/users/:id", controllers.UpdateUser)
	r.ServeHTTP(w, req)

	// Check the response status code
	assert.Equal(t, http.StatusOK, w.Code)

	// Parse the response body into a map
	var response map[string]models.User
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, expectedResponse["email"], response["data"].Email)
}

func TestUpdateUserSkill(t *testing.T) {
	// Initialize the Gin router and the database connection
	r := gin.Default()
	models.ConnectDatabase()

	// Define the expected response
	expectedResponse := gin.H{
		"name":            "Test Update User",
		"email":           "test@example.com",
		"skill_level":     3,
		"cuisine_choices": "mexican",
	}

	user := models.User{Name: "Test Update User", Email: "test@example.com", Skill_Level: 1, Cuisine_choices: "mexican"}
	models.DB.Create(&user)

	// Define the request payload
	payload := gin.H{
		"skill_level": 3,
	}

	// Create a new recorder to record the HTTP response
	w := httptest.NewRecorder()

	payloadJSON, err := json.Marshal(gin.H(payload))
	if err != nil {
		t.Fatalf("Error converting payload to JSON string")
	}
	reqBody := strings.NewReader(string(payloadJSON))

	// Create a new request
	req, _ := http.NewRequest("PATCH", "/users/"+strconv.FormatUint(uint64(user.ID), 10), reqBody)

	// Call the handler function
	r.PATCH("/users/:id", controllers.UpdateUser)
	r.ServeHTTP(w, req)

	// Check the response status code
	assert.Equal(t, http.StatusOK, w.Code)

	// Parse the response body into a map
	var response map[string]models.User
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, expectedResponse["skill_level"], response["data"].Skill_Level)
}

func TestUpdateUserCuisineChoices(t *testing.T) {
	// Initialize the Gin router and the database connection
	r := gin.Default()
	models.ConnectDatabase()

	// Define the expected response
	expectedResponse := gin.H{
		"name":            "Test Update User",
		"email":           "test@example.com",
		"skill_level":     1,
		"cuisine_choices": "italian",
	}

	user := models.User{Name: "Test Update User", Email: "test@example.com", Skill_Level: 1, Cuisine_choices: "mexican"}
	models.DB.Create(&user)

	// Define the request payload
	payload := gin.H{
		"cuisine_choices": "italian",
	}

	// Create a new recorder to record the HTTP response
	w := httptest.NewRecorder()

	payloadJSON, err := json.Marshal(gin.H(payload))
	if err != nil {
		t.Fatalf("Error converting payload to JSON string")
	}
	reqBody := strings.NewReader(string(payloadJSON))

	// Create a new request
	req, _ := http.NewRequest("PATCH", "/users/"+strconv.FormatUint(uint64(user.ID), 10), reqBody)

	// Call the handler function
	r.PATCH("/users/:id", controllers.UpdateUser)
	r.ServeHTTP(w, req)

	// Check the response status code
	assert.Equal(t, http.StatusOK, w.Code)

	// Parse the response body into a map
	var response map[string]models.User
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, expectedResponse["cuisine_choices"], response["data"].Cuisine_choices)
}

func TestValidateToken(t *testing.T) {

	token := "b4589d9eb519cd73c24b9c1c8fad2ea08d6a56ce1f0ac389ea8929f0cd076760"
	email := "hudsongriffith@gmail.com"
	expected := true

	result := controllers.ValidateToken(token, email)

	assert.Equal(t, result, expected)
}
