package api

import (
	"encoding/json"
	"fmt"
	"github.com/dgrijalva/jwt-go"
	"github.com/the-echo-project/echo/api/models"
	"github.com/the-echo-project/echo/internal/log"
	"github.com/the-echo-project/echo/internal/db"
	"golang.org/x/crypto/bcrypt"
	"net/http"
	"time"
)

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
		var resp = map[string]interface{}{"status": "user not found", "error": err.Error()}
		json.NewEncoder(w).Encode(resp)
		log.This.Warning(err.Error())
		return
	}

	errf := bcrypt.CompareHashAndPassword([]byte(dbUser.Password), []byte(reqUser.Password))
	if errf != nil && errf == bcrypt.ErrMismatchedHashAndPassword { //Password does not match!
		var resp = map[string]interface{}{"status": "invalid login credentials"}
		json.NewEncoder(w).Encode(resp)
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

	tokenString, error := token.SignedString([]byte("secret"))
	if error != nil {
		fmt.Println(error)
	}

	var resp = map[string]interface{}{"status": "success"}
	resp["token"] = tokenString //Store the token in the response
	resp["user"] = reqUser.Username
	json.NewEncoder(w).Encode(resp)
}
