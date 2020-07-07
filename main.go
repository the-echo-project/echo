package main

import (
	"github.com/spf13/viper"
	"github.com/the-echo-project/echo/conf"
	"github.com/the-echo-project/echo/log"
)

func main() {
	conf.InitConf()
	log.InitLogger(viper.GetString("log.loc"))
}
