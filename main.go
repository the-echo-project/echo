package main

import (
	"github.com/spf13/viper"
	"github.com/the-echo-project/echo/internal/conf"
	"github.com/the-echo-project/echo/internal/log"
)

func main() {
	conf.InitConf()
	log.InitFileLogger(viper.GetString("log.loc"))
}
