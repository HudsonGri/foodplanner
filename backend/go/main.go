package main

import (
	"github.com/gin-gonic/gin"

	"01-Login/controllers"
	"01-Login/models"
	"crypto/sha256"
	"encoding/hex"
	"fmt"
	"io/ioutil"
	"net/http"
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

// This function validates a token sent from an api request.
// It takes a token and user email. It will validate that the user's token is the sha256 hash of the salt + the user's id
func validate_token(token string, user_email string) (result bool) {

	// Get the users email and then add salt to id and hash and make sure it matches token

	url := "https://{yourDomain}/api/v2/users-by-email?email=" + user_email

	req, _ := http.NewRequest("GET", url, nil)

	req.Header.Add("authorization", "Bearer {yourMgmtApiAccessToken}")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

	user_id := "test"

	salt := "test1"
	saltedInput := user_id + salt

	hasher := sha256.New()
	hasher.Write([]byte(saltedInput))
	hashedBytes := hasher.Sum(nil)

	hashedString := hex.EncodeToString(hashedBytes)

	if hashedString == token {
		result := true
	} else {
		result := false
	}
	return
}

func main() {

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
