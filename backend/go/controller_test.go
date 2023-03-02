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

func TestFindUsers(t *testing.T) {
	// Set up test database and router
	gin.SetMode(gin.TestMode)
	r := gin.Default()
	models.ConnectDatabase()

	// Perform request and check response
	req, _ := http.NewRequest("GET", "/users", nil)
	w := httptest.NewRecorder()
	r.GET("/users", controllers.FindUsers)
	r.ServeHTTP(w, req)

	assert.Equal(t, http.StatusOK, w.Code)
	var response map[string][]models.User
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, "Hudson G", response["data"][1].Name)
	assert.Equal(t, "Michael T", response["data"][0].Name)
}

func TestFindUser(t *testing.T) {
	// Set up test database and router
	gin.SetMode(gin.TestMode)
	r := gin.Default()
	models.ConnectDatabase()

	// Perform request and check response
	req, _ := http.NewRequest("GET", "/users/michael.t@gmail.com", nil)
	w := httptest.NewRecorder()
	r.GET("/users/:email", controllers.FindUser)
	r.ServeHTTP(w, req)

	assert.Equal(t, http.StatusOK, w.Code)
	var response map[string]models.User
	json.Unmarshal(w.Body.Bytes(), &response)
	assert.Equal(t, "Michael T", response["data"].Name)
	assert.Equal(t, "michael.t@gmail.com", response["data"].Email)
	assert.Equal(t, 2, response["data"].Skill_Level)
	assert.Equal(t, "['mexican']", response["data"].Cuisine_choices)
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
	req, _ := http.NewRequest("DELETE", "/users/"+strconv.FormatUint(uint64(user.ID), 10), nil)
	router.DELETE("/users/:id", controllers.DeleteUser)
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
		"name":  "Test User",
		"email": "testuser@example.com",
	}

	user := models.User{Name: "Test User", Email: "testuser@example.com"}
	// Define the request payload
	payload := gin.H{
		"name":  user.Name,
		"email": user.Email,
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
		"name":  "Test Update User",
		"email": "updated@example.com",
	}

	user := models.User{Name: "Test Update User", Email: "test@example.com"}
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
