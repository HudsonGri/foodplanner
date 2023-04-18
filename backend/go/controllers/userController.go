package controllers

import (
	"01-Login/models"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

type CreateUserInput struct {
	Name  string `json:"name" binding:"required"`
	Email string `json:"email" binding:"required"`
}

type UpdateUserInput struct {
	Name            string `json:"name"`
	Email           string `json:"email"`
	Skill_Level     int    `json:"skill_level"`
	Cuisine_choices string `json:"cuisine_choices"`
}

// This function validates a token sent from an api request.
// It takes a token and user email. It will validate that the user's token is the sha256 hash of the salt + the user's id
func validate_token(token string, user_email string) (result bool) {

	// Get private values from .env
	err := godotenv.Load("../../.env")
	if err != nil {
		log.Fatal("Error loading .env file")
	}

	// Get the password from the environment variables
	salt := os.Getenv("SALT")
	bearer := os.Getenv("BEARER")

	// Get the users email and then add salt to id and hash and make sure it matches token
	url := "https://dev-f3612agfl2judti1.us.auth0.com/api/v2/users-by-email?email=" + user_email

	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("authorization", "Bearer "+bearer)

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	var data []map[string]interface{}
	err2 := json.Unmarshal([]byte(string(body)), &data)
	if err2 != nil {
		panic(err2)
	}

	// extract "user_id" field value from first map
	userId, ok := data[0]["user_id"].(string)
	if !ok {
		panic("user_id field not found or not a string")
	}

	saltedInput := salt + userId

	hasher := sha256.New()
	hasher.Write([]byte(saltedInput))
	hashedBytes := hasher.Sum(nil)

	hashedString := hex.EncodeToString(hashedBytes)

	fmt.Println("Valid: " + string(hashedString))

	return hashedString == token
}

func FindUsers(c *gin.Context) {

	var users []models.User
	models.DB.Find(&users)

	c.JSON(http.StatusOK, gin.H{"data": users})
}

func FindUser(c *gin.Context) {

	if !validate_token(c.Param("token"), c.Param("email")) {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Invalid auth token"})
		return
	}

	// Get model if exist
	var user models.User

	if err := models.DB.Where("email = ?", c.Param("email")).First(&user).Error; err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Record not found!"})
		return
	}

	var user_recipe models.UserRecipes

	user_recipe.ID = user.ID
	user_recipe.Name = user.Name
	user_recipe.Email = user.Email
	user_recipe.Skill_Level = user.Skill_Level

	var recipe_converted map[string]interface{}
	if err := json.Unmarshal([]byte(user.Recipes), &recipe_converted); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Conversion screwed up"})
		return
	}
	user_recipe.Recipes = recipe_converted

	var week_recipes_converted map[string]interface{}
	if err := json.Unmarshal([]byte(user.Week_Recipes), &week_recipes_converted); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Conversion screwed up"})
		return
	}
	user_recipe.Week_Recipes = week_recipes_converted

	var cuisine_choices_converted map[string]interface{}
	if err := json.Unmarshal([]byte(user.Cuisine_choices), &cuisine_choices_converted); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Conversion screwed up"})
		return
	}

	user_recipe.Cuisine_choices = cuisine_choices_converted

	c.JSON(http.StatusOK, gin.H{"data": user_recipe})
}

func CreateUser(c *gin.Context) {

	var input CreateUserInput
	if err := c.ShouldBindJSON(&input); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	// Create User
	user := models.User{Name: input.Name, Email: input.Email}
	models.DB.Create(&user)

	c.JSON(http.StatusOK, gin.H{"data": user})
}

func UpdateUser(c *gin.Context) {
	// Get model if exist
	var user models.User
	if err := models.DB.Where("id = ?", c.Param("id")).First(&user).Error; err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Record not found!"})
		return
	}

	// // Validate input
	var input UpdateUserInput
	if err := c.ShouldBindJSON(&input); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
		return
	}

	models.DB.Model(&user).Updates(input)

	c.JSON(http.StatusOK, gin.H{"data": user})
}

func DeleteUser(c *gin.Context) {
	// Get model if exist
	var user models.User
	if err := models.DB.Where("id = ?", c.Param("id")).First(&user).Error; err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Record not found!"})
		return
	}

	models.DB.Delete(&user)

	c.JSON(http.StatusOK, gin.H{"data": true})
}
