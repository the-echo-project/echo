package db

import (
	"github.com/the-echo-project/echo/api/models"
)

func CreateDefaultUser() error {
	var u models.User
	u.FirstName = "Echo"
	u.LastName = "Admin"
	u.Username = "admin"
	u.Password = "password"
	u.Email = "noreply@onkraken.net"

	if _, err := EchoDB.Query("INSERT INTO users (first_name, last_name, username, email, roles, password) values ($1, $2, $3, $4, $5, crypt($6, gen_salt('bf')))", u.FirstName, u.LastName, u.Username, u.Email, nil, u.Password); err != nil {
		return err
	}
	return nil
}
