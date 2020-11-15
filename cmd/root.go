package cmd

import (
	"github.com/spf13/cobra"
	"github.com/the-echo-project/echo/sdk/helper/confutil"
)

var (
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
	cobra.OnInitialize(confutil.LoadConfig)
	rootCmd.PersistentFlags().StringVar(&confutil.ConfigPath, "config", "", "config file (default is $HOME/.echo.yaml)")
}

