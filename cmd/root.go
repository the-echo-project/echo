package cmd

import (
	"github.com/spf13/cobra"
	"github.com/the-echo-project/echo/internal/conf"
)

var (
	cfgFile string

	rootCmd = &cobra.Command{
		Use: "echo",
		Short: "A modern deadman's switch.",
		Long: "A modern deadman's switch.",
	}
)

func Execute() error {
	return rootCmd.Execute()
}

func init() {
	cobra.OnInitialize(conf.InitConf)
	rootCmd.PersistentFlags().StringVar(&cfgFile, "config", "", "config file (default is $HOME/.echo.yaml")
}

