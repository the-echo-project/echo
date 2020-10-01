package pathutil

import (
	"path/filepath"
	"strings"
)

func PathWithoutTrailingSlash(s string) string {
	return strings.TrimSuffix(s, "/")
}

func Pathfinder(s string) (string, error) {
	return filepath.Abs(s)
}
