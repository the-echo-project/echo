package osutil

import (
	"os"
	"os/user"
)

func GetCurrentUserHomePath() (string, error) {
	user, err := user.Current()
	if err != nil {
		return "", err
	}
	return user.HomeDir, nil
}

func GetEnvironmentVariable(variableName string) string {
	return os.Getenv(variableName)
}
