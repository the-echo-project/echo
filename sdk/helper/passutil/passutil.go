package passutil

import (
	"github.com/the-echo-project/echo/internal/log"
	"golang.org/x/crypto/bcrypt"
)

func HashAndSalt(pwd []byte) string {
	// Use GenerateFromPassword to hash & salt pwd.
	// MinCost is just an integer constant provided by the bcrypt
	// package along with DefaultCost & MaxCost.
	// The cost can be any value you want provided it isn't lower
	// than the MinCost (4)
	hash, err := bcrypt.GenerateFromPassword(pwd, bcrypt.MinCost)
	if err != nil {
		log.This.Warning(err.Error())
	}    // GenerateFromPassword returns a byte slice so we need to
	// convert the bytes to a string and return it
	return string(hash)
}

func Compare(hash []byte, password []byte) error  {
	err := bcrypt.CompareHashAndPassword(hash, password)
	if err != nil && err == bcrypt.ErrMismatchedHashAndPassword { //Password does not match!
 		return err
	}
	return nil
}