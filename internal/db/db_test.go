package db

import (
	"github.com/the-echo-project/echo/internal/log"
	"github.com/the-echo-project/echo/sdk/helper/confutil"
	"testing"
)

func TestInitDB(t *testing.T) {
	confutil.ConfigPath = "../../configs"
	confutil.LoadConfig()
	log.InitLogger()

	err := InitDB()
	if err != nil {
		t.Log(err)
		t.Fail()
	}
}