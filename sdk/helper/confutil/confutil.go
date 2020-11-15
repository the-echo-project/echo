package confutil

import (
	"fmt"
	"github.com/spf13/viper"
	"github.com/the-echo-project/echo/sdk/helper/pathutil"
)

type config struct {
	LogDir string
	DBConnURL string
	ArchiveStore string
	TokenSecret string
}

var (
	// ConfigPath is the path to the configuration file. Default is working directory. Re-assign variable before calling LoadConfig to specify alternate directory.
	ConfigPath = "./"
)

func LoadConfig() {
	var err error
	confDir, err := pathutil.Pathfinder(ConfigPath)
	if err != nil {
		panic(fmt.Errorf("Error finding config path %s", ConfigPath))
	}

	viper.SetConfigName("echo_conf")
	viper.SetConfigType("yaml")
	viper.AddConfigPath(pathutil.PathWithoutTrailingSlash(confDir))

	err = viper.ReadInConfig()
	if err != nil {
		panic(fmt.Errorf("Error loading config from: %s", err))
	}
}