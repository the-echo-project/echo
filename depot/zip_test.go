package depot

import (
	"fmt"
	"github.com/spf13/viper"
	"strings"
	"testing"
)

// TestStatFiles ensures that directories are correctly "walked" to ensure absolute filenames are returned.
func TestStatFiles(t *testing.T) {
	expectedFiles := []string{"root_data_file.txt", "sub_data_file.txt"}

	zip := Zip{
		Name: "test_zip.zip",
		Files: []string{"/Users/ben/Desktop/development/go/mywork/echo/testing_scrap/TestStatFiles"},
	}
	files := zip.statFiles()

	hasFiles := func() bool {
		count := 0
		for i := range files {
			for e := range expectedFiles {
				if strings.HasSuffix(files[i], expectedFiles[e]) {
					count++
				}
			}
		}

		if count == 2 {
			return true
		}
		return false
	}

	if hasFiles() != true {
		t.Logf("expected files mismatch: GOT PATHS (%s), WANT FILE SUFFIX (%s)", files, expectedFiles)
		t.Fail()
	}
}

func TestZipPack(t *testing.T) {
	viper.SetConfigName("echo_conf")
	viper.SetConfigType("yaml")
	viper.AddConfigPath("../conf/")
	viper.Set("archive.store", "../testing_scrap")

	err := viper.ReadInConfig()
	if err != nil {
		panic(fmt.Errorf("Fatal error config file: %s \n", err))
	}

	zip := Zip{
		Name: "test_zip.zip",
		Files: []string{"/Users/ben/Desktop/development/go/mywork/echo/testing_scrap/TestStatFiles"},
	}

	err = zip.Pack()
	if err != nil {
		t.Log(err)
		t.Fail()
	}
}
