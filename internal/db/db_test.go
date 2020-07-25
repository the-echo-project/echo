package db

import (
	"github.com/the-echo-project/echo/internal/conf"
	"github.com/the-echo-project/echo/internal/log"
	"testing"
)

func TestInitDB(t *testing.T) {
	conf.InitConf()
	log.InitStdoutLogger()

	err := InitDB()
	if err != nil {
		t.Log(err)
		t.Fail()
	}
}