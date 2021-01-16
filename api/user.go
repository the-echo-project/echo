package api

import (
	"encoding/json"
	"fmt"
	"github.com/gorilla/mux"
	"github.com/the-echo-project/echo/api/models"
	"github.com/the-echo-project/echo/internal/db"
	"github.com/the-echo-project/echo/internal/log"
	"github.com/the-echo-project/echo/internal/settings"
	"github.com/the-echo-project/echo/sdk/helper/contextUtil"
	"github.com/the-echo-project/echo/sdk/helper/passutil"
	"golang.org/x/crypto/bcrypt"
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
	err := db.EchoDB.QueryRowx("SELECT user_id, first_name, last_name, username, email, last_lifesign, avg_lifesign_interval, roles FROM users WHERE user_id = $1", userID).StructScan(&u)
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

	if err := db.EchoDB.QueryRowx("INSERT INTO users (first_name, last_name, username, email, roles, password) values ($1, $2, $3, $4, $5, crypt($6, gen_salt($7))) RETURNING user_id", u.FirstName, u.LastName, u.Username, u.Email, nil, u.Password, settings.PasswordSaltAlgorithm).StructScan(&u); err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Warning(err.Error())
		return
	}
	sendUserEntryFromDB(w, u.UserID)
}

func updateUser(w http.ResponseWriter, r *http.Request) {
	// TODO: Add password update
	parameterExclusions := []string{"password", "oldPassword"}

	vars := mux.Vars(r)

	userID := vars["user_id"]
	log.This.Info("Updating user ID of %s", userID)

	var u models.User
	err := json.NewDecoder(r.Body).Decode(&u)
	if err != nil {
		w.WriteHeader(http.StatusBadRequest)
		log.This.Error("Couldn't decode JSON for user update: %s", err.Error())
		return
	}

	if u.Password != "" {
		if u.OldPassword == "" {
			w.WriteHeader(http.StatusBadRequest)
			resp := map[string]string{"message": "cannot set new password without oldPassword parameter."}
			json.NewEncoder(w).Encode(resp)
			log.This.Error("Couldn't update user %s: oldPassword not provided.", userID)
			return
		}

		// Get user info from DB to compare password hash.
		var dbUser models.User
		if err := db.EchoDB.QueryRowx("SELECT * FROM users WHERE user_id = $1", userID).StructScan(&dbUser); err != nil {
			// Be wary of content sent back to the client
			w.WriteHeader(http.StatusInternalServerError)
			// Log actual database error here
			log.This.Warning(err.Error())
			return
		}

		// See if old password matches the hash from the DB
		err := passutil.Compare([]byte(dbUser.Password), []byte(u.OldPassword))
		if err != nil && err == bcrypt.ErrMismatchedHashAndPassword { //Password does not match!
			w.WriteHeader(http.StatusUnauthorized)
			log.This.Warning(err.Error())
			return
		}
		log.This.Info("Password change accepted for %s", userID)
		// remove parameter exclusions and allow password fields to be returned as DB parameters
		parameterExclusions = []string{"oldPassword"}
	}

	parameters, values, err := db.QueryParametersFromDBStructWithExclusions(u, parameterExclusions)
	if err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Error("Couldn't parse db parameters for user update: %s", err.Error())
		return
	}

	dbQuery := fmt.Sprintf("UPDATE users SET " + strings.Join(parameters, ",") + " WHERE user_id = '%s'", userID)
	if _, err := db.EchoDB.Query(dbQuery, values...); err != nil {
		w.WriteHeader(http.StatusInternalServerError)
		log.This.Info(dbQuery)
		log.This.Warning("Error updating database entry for %s: ", u.Username, err.Error())
		return
	}
}

