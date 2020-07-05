package log

import (
	"fmt"
	"github.com/spf13/viper"
	"os"
	"time"
)

type Logger struct {
	logLoc *os.File
}

var log *os.File

func InitLogger() {
	l, err := os.OpenFile(viper.GetString("log.loc"), os.O_CREATE|os.O_APPEND|os.O_RDWR, 0600)
	if err != nil {
		panic(fmt.Errorf("Fatal error starting log: %s \n", err))
	}
	log = l
}

func Info(logLine string) {
	log.WriteString(fmt.Sprintf("%s INFO %s \n", time.Now().Format(time.UnixDate), logLine))
}

func Error(logLine string) {
	log.WriteString(fmt.Sprintf("%s ERROR %s \n", time.Now().Format(time.UnixDate), logLine))
}
