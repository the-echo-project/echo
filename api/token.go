package api

import "net/http"

// get user context into a token model.
func UserContextAsTokenModel(r *http.Request) *Token {
	return r.Context().Value("user").(*Token)
}
