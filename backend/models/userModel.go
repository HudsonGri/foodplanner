package models

type User struct {
	ID              uint   `json:"id" gorm:"primary_key"`
	Name            string `json:"name"`
	Email           string `json:"email"`
	Skill_Level     int    `json:"skill_level"`
	Cuisine_choices string `json:"cuisine_choices"`
}
