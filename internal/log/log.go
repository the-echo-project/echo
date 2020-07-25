package log

import (
	"fmt"
	"os"
	"time"
)

var log *os.File

// Initialises logger for file. Used for a persistent service.
// TODO: Log preservation by incrementing when new service is spawned.
func InitFileLogger(directory string) {
	l, err := os.OpenFile(fmt.Sprintf("%s/%s", directory, "echo.log.0"), os.O_CREATE|os.O_APPEND|os.O_RDWR, 0600)
	if err != nil {
		panic(fmt.Errorf("Fatal error starting log: %s \n", err))
	}
	log = l
}

// Initialises logger for Stdout. Used for single-command mode.
func InitStdoutLogger() {
	log = os.Stdout
}

func Info(logLine string) {
	log.WriteString(fmt.Sprintf("%s INFO %s \n", time.Now().Format(time.UnixDate), logLine))
}

func Error(logLine string) {
	log.WriteString(fmt.Sprintf("%s ERROR %s \n", time.Now().Format(time.UnixDate), logLine))
}

func Errorf(format string, args ...interface{}) {
	log.WriteString(fmt.Sprintf("%s ERROR %s %s \n", time.Now().Format(time.UnixDate), fmt.Sprintf(format, args...)))
}

func Fatalf(format string, args ...interface{}) {
	log.WriteString(fmt.Sprintf("%s FATAL %s %s \n", time.Now().Format(time.UnixDate), fmt.Sprintf(format, args...)))
	os.Exit()
}
