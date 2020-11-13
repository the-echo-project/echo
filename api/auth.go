package api

import (
	"encoding/json"
	"github.com/dgrijalva/jwt-go"
	"github.com/the-echo-project/echo/api/models"
	"github.com/the-echo-project/echo/internal/db"
	"github.com/the-echo-project/echo/internal/log"
	"golang.org/x/crypto/bcrypt"
	"net/http"
	"os"
	"time"
)

var (
	echoAuthSecret = os.Getenv("ECHO_AUTH_SECRET")
)

// TODO: Add JWT secret env variable. Currently "secret"
// TODO: Add user-definable token expiry
// TODO: Add persistence storage layer for JWT metadata, for invalidating tokens prematurely
// TODO: Add refresh tokens
// TODO: Do we need a token helper package, or can it be self contained in package "api"?
func authenticate(w http.ResponseWriter, r *http.Request) {
	var reqUser models.User
	err := json.NewDecoder(r.Body).Decode(&reqUser)
	if err != nil {
		log.This.Error("Couldn't decode JSON for user GET: %s", err)
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}

	var dbUser models.User
	if err = db.EchoDB.QueryRowx("SELECT * FROM users WHERE username = $1", reqUser.Username).StructScan(&dbUser); err != nil {
		// Be wary of content sent back to the client
		w.WriteHeader(http.StatusUnauthorized)
		// Log actual database error here
		log.This.Warning(err.Error())
		return
	}

	err = bcrypt.CompareHashAndPassword([]byte(dbUser.Password), []byte(reqUser.Password))
	if err != nil && err == bcrypt.ErrMismatchedHashAndPassword { //Password does not match!
		w.WriteHeader(http.StatusUnauthorized)
		log.This.Warning(err.Error())
		return
	}

	expiresAt := time.Now().Add(time.Minute * 100000).Unix()
	tk := &models.Token{
		UserID: string(dbUser.UserID[:]),
		Name:   dbUser.Username,
		Email:  dbUser.Email,
		StandardClaims: &jwt.StandardClaims{
			ExpiresAt: expiresAt,
		},
	}

	token := jwt.NewWithClaims(jwt.GetSigningMethod("HS256"), tk)

	tokenString, error := token.SignedString([]byte(echoAuthSecret))
	if error != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Warning(error.Error())
		return
	}

	var resp = map[string]interface{}{"status": "success"}
	resp["token"] = tokenString //Store the token in the response
	w.WriteHeader(http.StatusOK)
	json.NewEncoder(w).Encode(resp)
}
