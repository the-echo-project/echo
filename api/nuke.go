package api

import "net/http"

// Adds a DB entry that will be interpreted and verified by the "nuke" package.
// Nuke jobs should never be automatically run as a direct result of calling this resource.
func createNukeJob(w http.ResponseWriter, r http.Request) {
	// implement
}

func updateNukeJob(w http.ResponseWriter, r http.Request) {
	// implement
}
