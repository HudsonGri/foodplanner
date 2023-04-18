package main

import (
	"log"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"

	"01-Login/controllers"
	"01-Login/models"
	"crypto/sha256"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"strings"
)

func CORSMiddleware() gin.HandlerFunc {
	return func(c *gin.Context) {
		c.Writer.Header().Set("Access-Control-Allow-Origin", "*")
		c.Writer.Header().Set("Access-Control-Allow-Credentials", "true")
		c.Writer.Header().Set("Access-Control-Allow-Headers", "Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization, accept, origin, Cache-Control, X-Requested-With")
		c.Writer.Header().Set("Access-Control-Allow-Methods", "POST, OPTIONS, GET, PUT, PATCH")

		if c.Request.Method == "OPTIONS" {
			c.AbortWithStatus(204)
			return
		}

		c.Next()
	}
}

func get_auth_token() {
	url := "https://dev-f3612agfl2judti1.us.auth0.com/oauth/token"

	payload := strings.NewReader("grant_type=client_credentials&client_id=w92cz5xnF7lqxOjblbduKFIWuiDpwgBq&client_secret=pvKH_DjW0RLLjJ9fESMhPjEgDZKAKI06Dy5SyKMPWXJyQrnhy1sEB-edZFiESeQu&audience=https://dev-f3612agfl2judti1.us.auth0.com")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/x-www-form-urlencoded")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))
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

	saltedInput := userId + salt

	hasher := sha256.New()
	hasher.Write([]byte(saltedInput))
	hashedBytes := hasher.Sum(nil)

	hashedString := hex.EncodeToString(hashedBytes)

	fmt.Println(string(hashedString))

	if hashedString == token {
		return true
	} else {
		return false
	}
}

func main() {

	//get_auth_token()
	fmt.Println(validate_token("test", "hudsongriffith@gmail.com"))

	r := gin.Default()
	r.Use(CORSMiddleware())

	models.ConnectDatabase()

	r.GET("/users", controllers.FindUsers)
	r.POST("/users", controllers.CreateUser)
	r.GET("/users/:email", controllers.FindUser)
	r.PATCH("/users/:id", controllers.UpdateUser)
	r.DELETE("/users/:id", controllers.DeleteUser)

	r.Run()
}
