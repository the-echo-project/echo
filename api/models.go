package api

import "github.com/dgrijalva/jwt-go"

type Token struct {
	UserID string
	Name string
	Email string
	*jwt.StandardClaims
}

type User struct {
	UserID [32]byte `json:"user_id" db:"user_id"`
	FirstName string `json:"first_name" db:"first_name"`
	LastName string `json:"last_name" db:"last_name"`
	Username string `json:"username" db:"username"`
	Email string `json:"email" db:"email"`
	LastLifesign string `json:"last_lifesign" db:"last_lifesign"`
	AvgLifesignInterval string `json:"avg_lifesign_interval" db:"avg_lifesign_interval"`
	Password string `json:"password" db:"password"`
}


