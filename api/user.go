package api

import (
	"encoding/json"
	"fmt"
	"github.com/gorilla/mux"
	"github.com/the-echo-project/echo/api/models"
	"github.com/the-echo-project/echo/internal/db"
	"github.com/the-echo-project/echo/internal/log"
	"github.com/the-echo-project/echo/sdk/helper/contextUtil"
	"net/http"
	"strings"
)

func getUser(w http.ResponseWriter, r *http.Request) {
	userID := mux.Vars(r)["user_id"]
	log.This.Info("Getting user ID of %s", userID)

	sendUserEntryFromDB(w, userID)
}

func getMyUser(w http.ResponseWriter, r *http.Request) {
	userID, err := contextUtil.GetUserIDFromTokenContext(r.Context())
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Warning(err.Error())
		return
	}
	log.This.Info("Getting MY user of ID %s", userID)

	sendUserEntryFromDB(w, userID)
}

func sendUserEntryFromDB(w http.ResponseWriter, userID string) {
	var u models.User
	err := db.EchoDB.QueryRowx("SELECT first_name, last_name, username, email, last_lifesign, avg_lifesign_interval, roles FROM users WHERE user_id = $1", userID).StructScan(&u)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Warning(err.Error())
		return
	}

	err = json.NewEncoder(w).Encode(u)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Warning(err.Error())
		return
	}
}

func createUser(w http.ResponseWriter, r *http.Request) {
	var u models.User
	err := json.NewDecoder(r.Body).Decode(&u)
	if err != nil {
		w.WriteHeader(http.StatusBadRequest)
		log.This.Error("Couldn't decode JSON for user POST: %s", err.Error())
		return
	}

	if _, err := db.EchoDB.Query("INSERT INTO users (first_name, last_name, username, email, roles, password) values ($1, $2, $3, $4, $5, crypt($6, gen_salt('bf')))", u.FirstName, u.LastName, u.Username, u.Email, nil, u.Password); err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Warning(err.Error())
		return
	}
}

func updateUser(w http.ResponseWriter, r *http.Request) {
	userID := mux.Vars(r)["user_id"]
	log.This.Info("Patching user ID of %s", userID)

	var u models.User
	err := json.NewDecoder(r.Body).Decode(&u)
	if err != nil {
		w.WriteHeader(http.StatusBadRequest)
		log.This.Error("Couldn't decode JSON for user PATCH: %s", err.Error())
		return
	}

	parameters, values, err := db.QueryParametersFromDBStructWithExclusions(u, []string{"password"})
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Error("Couldn't parse db parameters for PATCH: %s", err.Error())
		return
	}

	if _, err := db.EchoDB.Query(fmt.Sprintf("UPDATE users SET " + strings.Join(parameters, ",") + " WHERE user_id = '%s'", userID), values...); err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Warning(err.Error())
		return
	}
}

