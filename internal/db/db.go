/*
Package internal/db implements the https://github.com/lib/pq and https://github.com/jmoiron/sqlx packages to
provide database functionality for Echo.
*/

package db

import (
	"github.com/jmoiron/sqlx"
	_ "github.com/lib/pq"
	"github.com/spf13/viper"
	"github.com/the-echo-project/echo/internal/log"
)

var EchoDB *sqlx.DB

func InitDB() (err error) {
	EchoDB, err = sqlx.Open("postgres", viper.GetString("db.url"))
	if err != nil {
		log.Fatalf("database connection failed: %s %s", viper.GetString("db.url"), err)
		return nil
	}
	defer EchoDB.Close()

	err = EchoDB.Ping()
	if err != nil {
		log.Fatalf("database ping failed: %s %s", viper.GetString("db.url"), err)
		return nil
	}

	log.Info("Database connection successful!")
	return nil
}
