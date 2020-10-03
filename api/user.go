package api

import (
	"encoding/json"
	"github.com/the-echo-project/echo/api/models"
	"github.com/the-echo-project/echo/internal/db"
	"github.com/the-echo-project/echo/internal/log"
	"net/http"
)

func getUser(w http.ResponseWriter, r http.Request) {

}

func createUser(w http.ResponseWriter, r *http.Request) {
	var u models.User
	err := json.NewDecoder(r.Body).Decode(&u)
	if err != nil {
		log.This.Error("Couldn't decode JSON for user POST: %s", err)
		http.Error(w, err.Error(), http.StatusBadRequest)
		return
	}



	if _, err := db.EchoDB.Query("INSERT INTO users (first_name, last_name, username, email, role_id, password) values ($1, $2, $3, $4, $5, crypt($6, gen_salt('bf')))", u.FirstName, u.LastName, u.Username, u.Email, nil, u.Password); err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Warning(err.Error())
		return
	}

}

func updateUser(w http.ResponseWriter, r http.Request) {
	// implement
}