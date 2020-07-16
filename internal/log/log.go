package log

import (
	"fmt"
	"os"
	"time"
)

type Logger struct {
	logLoc *os.File
}

var log *os.File

// TODO: Have logger intialisation differ between COMMAND and SERVICE modes. A single command should output to stdout, while a running process should output to it's designated log file.
func InitLogger(loc string) {
	l, err := os.OpenFile(fmt.Sprintf("%s/%s", loc, "echo.log.0"), os.O_CREATE|os.O_APPEND|os.O_RDWR, 0600)
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
