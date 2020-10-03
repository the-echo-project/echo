package api

import (
	"github.com/gorilla/mux"
	"log"
	"net/http"
	"time"
)

var EchoMainRouter *mux.Router

func NetRun() {
	EchoMainRouter = mux.NewRouter()
	EchoMainRouter.Use(CommonMiddleware)
	EchoMainRouter.HandleFunc("/token", authenticate).Methods("GET")

	ApiRouter := EchoMainRouter.PathPrefix("/api").Subrouter()
	ApiRouter.Use(JwtVerify)
	ApiRouter.HandleFunc("/user", createUser).Methods("POST")

	srv := &http.Server{
		Handler:      EchoMainRouter,
		Addr:         "127.0.0.1:8000",
		WriteTimeout: 15 * time.Second,
		ReadTimeout:  15 * time.Second,
	}

	log.Fatal(srv.ListenAndServe())
}

