package main

import (
	"github.com/the-echo-project/echo/conf"
	"github.com/the-echo-project/echo/log"
)

func main() {
	conf.InitConf()
	log.InitLogger()
}
