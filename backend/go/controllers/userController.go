package controllers

import (
	"01-Login/models"
	"encoding/json"
	"net/http"

	"github.com/gin-gonic/gin"
)

type CreateUserInput struct {
	Name  string `json:"name" binding:"required"`
	Email string `json:"email" binding:"required"`
}

type UpdateUserInput struct {
	Name  string `json:"name"`
	Email string `json:"email"`
}

func FindUsers(c *gin.Context) {

	var users []models.User
	models.DB.Find(&users)

	c.JSON(http.StatusOK, gin.H{"data": users})
}

func FindUser(c *gin.Context) {

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
	user_recipe.Cuisine_choices = user.Cuisine_choices

	var recipe_converted map[string]interface{}
	if err := json.Unmarshal([]byte(user.Recipes), &recipe_converted); err != nil {
		c.JSON(http.StatusBadRequest, gin.H{"error": "Conversion screwed up"})
		return
	}
	user_recipe.Recipes = recipe_converted

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
