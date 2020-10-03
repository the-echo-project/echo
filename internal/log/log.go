package log

import (
	"fmt"
	"github.com/mitchellh/go-homedir"
	"github.com/spf13/viper"
	"log"
	"os"
	"path/filepath"
	"github.com/the-echo-project/echo/sdk/helper/pathutil"
)

const (
	// DefaultLogPath is the default location for the logs.
	DefaultLogPath = "~/.echo/log"

	// LogPathEnv is the environment variable that will override
	// the log location.
	LogPathEnv = "ECHO_LOG_PATH"

	DefaultLogFile = "echo_log.0"
)

var (
	This Log
)

type Log struct {
	logger *log.Logger
	stdout *os.File
}

func (l *Log) Info(msg string, args ...interface{}) {
	if len(args) != 0 {
		msg = concat(msg, args)
	}

	l.logger.Output(2, fmt.Sprintf("INFO %s\n", msg))
}

func (l *Log) Warning(msg string, args ...interface{}) {
	if len(args) != 0 {
		msg = concat(msg, args)
	}

	l.logger.Output(2, fmt.Sprintf("WARN %s\n", msg))
}

func (l *Log) Error(msg string, args ...interface{}) {
	if len(args) != 0 {
		msg = concat(msg, args)
	}

	l.logger.Output(2,fmt.Sprintf("ERROR %s\n", msg))
}

func concat(format string, args ...interface{}) string {
	return fmt.Sprintf(format, args...)
}

func InitLogger() {
	var err error

	path := os.Getenv(LogPathEnv)
	if path == "" {
		path, err = homedir.Expand(DefaultLogPath)
		if err != nil {
			panic(fmt.Errorf("Couldn't start log service, home directory expand failed."))
		}
	}

	if v := viper.GetString("log.loc"); v != "" {
		path = v
	}

	path, err = filepath.Abs(path)
	if err != nil {
		panic(fmt.Errorf("Couldn't start log service, path could not be found."))
	}

	l, err := os.OpenFile(fmt.Sprintf("%s/%s", pathutil.PathWithoutTrailingSlash(path), DefaultLogFile), os.O_CREATE|os.O_APPEND|os.O_RDWR, 0600)
	if err != nil {
		panic(fmt.Errorf("Fatal error starting log: %s \n", err))
	}

	This.logger = log.New(l, "", log.Lshortfile|log.Ldate|log.Ltime)
}
