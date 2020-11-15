package api

import (
	"github.com/the-echo-project/echo/api/models"
	"net/http"
)

// get user contextUtil into a token model.
func UserContextAsTokenModel(r *http.Request) *models.Token {
	return r.Context().Value("user").(*models.Token)
}
