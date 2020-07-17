/*
Package internal/db implements the https://github.com/lib/pq and https://github.com/jmoiron/sqlx packages to
provide database functionality for Echo.
*/

package db

import (
	"fmt"
	"github.com/spf13/viper"
	"github.com/the-echo-project/echo/internal/log"

	"github.com/jmoiron/sqlx"
	_ "github.com/lib/pq"
)

var db *sqlx.DB

func InitDB() error  {
	var err error
	db, err = sqlx.Open("postgres", viper.GetString("db.url"))
	if err != nil {
		return fmt.Errorf("database connection failed: %s", err)
	}

	err = db.Ping()
	if err != nil {
		fmt.Errorf("database ping failed: %s", err)
	}

	log.Info("Database connection successful!")
	return nil
}
