package models

import "github.com/dgrijalva/jwt-go"

type Token struct {
	UserID string
	Name string
	Email string
	*jwt.StandardClaims
}