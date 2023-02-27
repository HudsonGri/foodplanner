package controllers_test

import (
	"01-Login/controllers"
	"01-Login/models"
	"encoding/json"
	"fmt"
	"net/http"
	"net/http/httptest"
	"strconv"
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
}

func TestDeleteUser(t *testing.T) {
	// Set up a test router and request/response recorder
	router := gin.Default()
	router.DELETE("/users/:id", controllers.DeleteUser)
	w := httptest.NewRecorder()

	// Insert a user into the database
	user := models.User{Name: "Test Delete User", Email: "test@example.com"}
	models.DB.Create(&user)

	// Send a DELETE request to the router to delete the user
	req, _ := http.NewRequest("DELETE", "/users/"+strconv.FormatUint(uint64(user.ID), 10), nil)
	fmt.Println(req)
	router.ServeHTTP(w, req)

	// Check that the response status is OK
	assert.Equal(t, http.StatusOK, w.Code)

	// Check that the response body is as expected
	var response map[string]bool
	json.Unmarshal([]byte(w.Body.String()), &response)
	assert.Equal(t, true, response["data"])

	// Check that the user has been deleted from the database
	var deletedUser models.User
	models.DB.Where("id = ?", user.ID).First(&deletedUser)
	assert.Equal(t, false, models.DB.RecordNotFound())
}
