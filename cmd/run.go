package cmd

import (
	"github.com/spf13/cobra"
	"github.com/the-echo-project/echo/api"
	"github.com/the-echo-project/echo/internal/db"
	"github.com/the-echo-project/echo/internal/log"
)

var runCmd = &cobra.Command{
	Use: "start",
	Short: "Start the Echo service.",
	Long: "Start the Echo service",
	Run: func(cmd *cobra.Command, args []string) {
		log.InitStdoutLogger()
		if err := db.InitDB(); err != nil {
			panic(err)
		}
		api.NetRun()
	},
}

func init() {
	rootCmd.AddCommand(runCmd)
}
