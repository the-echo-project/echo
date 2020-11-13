package api

import (
	"github.com/gorilla/mux"
	"github.com/the-echo-project/echo/internal/db"
	"github.com/the-echo-project/echo/internal/db/checkers"
	"log"
	"net/http"
	"time"
)

var EchoMainRouter *mux.Router

func NetRun() {
	UserTableIsEmpty, err := checkers.UserTableIsEmpty()
	if err != nil {
		panic(err)
	}
	if UserTableIsEmpty == true {
		err := db.CreateDefaultUser()
		if err != nil {
			panic(err)
		}
	}

	EchoMainRouter = mux.NewRouter()
	EchoMainRouter.Use(CommonMiddleware)
	EchoMainRouter.HandleFunc("/Token", authenticate).Methods("GET")

	ApiRouter := EchoMainRouter.PathPrefix("/api").Subrouter()
	ApiRouter.Use(JwtVerify)
	ApiRouter.HandleFunc("/User", createUser).Methods("POST")
	ApiRouter.HandleFunc("/User/{user_id}", getUser).Methods("GET")

	srv := &http.Server{
		Handler:      EchoMainRouter,
		Addr:         "127.0.0.1:8000",
		WriteTimeout: 15 * time.Second,
		ReadTimeout:  15 * time.Second,
	}

	log.Fatal(srv.ListenAndServe())
}

