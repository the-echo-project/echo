package conf

import (
	"fmt"
	"github.com/spf13/viper"
)

func Start() {
	viper.SetConfigName("echo_conf")
	viper.SetConfigType("yaml")
	viper.AddConfigPath("../../configs")

	err := viper.ReadInConfig()
	if err != nil {
		panic(fmt.Errorf("Fatal error config file: %s \n", err))
	}
}

func Get(key string) interface{} {
	return viper.Get(key)
}
