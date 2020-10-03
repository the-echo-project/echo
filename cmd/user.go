package cmd

import (
	"github.com/spf13/cobra"
	"github.com/the-echo-project/echo/api/models"

)

var(
	userCmd = &cobra.Command{
		Use: "user",
		Short: "Perform user commands.",
		Long: "Perform user commands.",
		Run: func(cmd *cobra.Command, args []string) {

		},
	}

	UserFlags UserCmdFlag
)

type UserCmdFlag struct {
	Create bool
	Remove bool
	Update bool
	DataJSON string
	DataFlags models.User
}

func init() {
	rootCmd.AddCommand(userCmd)

	userCmd.Flags().BoolVarP(&UserFlags.Create, "create", "c",false, "Create a new user (use with the -d flag)")
	userCmd.Flags().BoolVarP(&UserFlags.Remove, "remove", "r", false, "Remove a user (use with the -d flag)")
	userCmd.Flags().BoolVarP(&UserFlags.Update, "update", "u", false, "Update an existing user (use with the -d flag)")

	// API query data in JSON format
	userCmd.Flags().StringVarP(&UserFlags.DataJSON,"data", "d", "", "Specify user JSON")

	// Simpler flag formed data
	userCmd.Flags().StringVarP(&UserFlags.DataFlags.Email, "email", "e", "", "User email")
	userCmd.Flags().StringVarP(&UserFlags.DataFlags.Username, "username", "n", "", "Username")
	userCmd.Flags().StringVarP(&UserFlags.DataFlags.FirstName, "first", "f", "", "User first name")
	userCmd.Flags().StringVarP(&UserFlags.DataFlags.LastName, "last", "l", "", "User last name")
	userCmd.Flags().StringVarP(&UserFlags.DataFlags.Password, "password", "p", "", "User password")
}