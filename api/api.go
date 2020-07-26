package api

import (
	"github.com/gorilla/mux"
	"log"
	"net/http"
	"time"
)

var EchoRouter *mux.Router

func NetRun() {
	EchoRouter = mux.NewRouter()
	EchoRouter.HandleFunc("/user", createUser).Methods("POST")

	srv := &http.Server{
		Handler: EchoRouter,
		Addr: "127.0.0.1:8000",
		WriteTimeout: 15 * time.Second,
		ReadTimeout: 15 * time.Second,
	}

	log.Fatal(srv.ListenAndServe())
}

