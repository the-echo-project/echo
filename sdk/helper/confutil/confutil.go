package confutil

import (
	"fmt"
	"github.com/spf13/viper"
	"github.com/the-echo-project/echo/sdk/helper/pathutil"
	"os"
)

const(
	// DefaultConfigPath is the default path to the configuration file
	DefaultConfPath = "~/.echo/"

	// ConfigPathEnv is the environment variable that can be used to override
	// where the Echo config is.
	ConfigPathEnv = "ECHO_CONFIG_PATH"
)

var (
	ConfigPathOverride string
)

func LoadConfig() {
	if ConfigPathOverride == "" {
		loadDefaultConfig()
	} else {
		loadOverrideConfig()
	}
}

func loadDefaultConfig() {
	var configPath string
	if configPath = os.Getenv(ConfigPathEnv); configPath == "" {
		configPath = DefaultConfPath
	}

	var err error
	configPath, err = pathutil.Pathfinder(configPath)
	if err != nil {
		panic(fmt.Errorf("Error finding config path %s", configPath))
	}

	viper.SetConfigName("echo_conf")
	viper.SetConfigType("yaml")
	viper.AddConfigPath(pathutil.PathWithoutTrailingSlash(configPath))

	err = viper.ReadInConfig()
	if err != nil {
		panic(fmt.Errorf("Error loading config from: %s", err))
	}
}

func loadOverrideConfig() {

	var err error
	ConfigPathOverride, err = pathutil.Pathfinder(ConfigPathOverride)
	if err != nil {
		panic(fmt.Errorf("Error finding config path %s", ConfigPathOverride))
	}

	viper.SetConfigName("echo_conf")
	viper.SetConfigType("yaml")
	viper.AddConfigPath(pathutil.PathWithoutTrailingSlash(ConfigPathOverride))

	err = viper.ReadInConfig()
	if err != nil {
		panic(fmt.Errorf("Error loading config from: %s", err))
	}
}