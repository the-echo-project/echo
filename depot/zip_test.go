package depot

import (
	"strings"
	"testing"
)

// TestStatFiles ensures that directories are correctly "walked" to ensure absolute filenames are returned.
func TestStatFiles(t *testing.T) {
	expectedFiles := []string{"root_data_file.txt", "sub_data_file.txt"}

	zip := Zip{
		Name: "test_zip.zip",
		Files: []string{"../testing_scrap/TestStatFiles"},
	}
	files, err := zip.statFiles()
	if err != nil {
		t.Logf("Could not stat ZIP files: %s", err)
		t.Fail()
	}

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
	zip := Zip{
		Name: "test_zip.zip",
		Files: []string{"../testing_scrap/TestZipPack"},
	}

	f, err := zip.statFiles()
	t.Log(f)

	err = zip.Pack("../testing_scrap/output_dump")
	if err != nil {
		t.Log(err)
		t.Fail()
	}
}
