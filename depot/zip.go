package depot

import (
	"fmt"
	"io/ioutil"
	"os"
	"github.com/the-echo-project/echo/log"
	"archive/zip"
	"path/filepath"
)

type Zip struct {
	Name string // output name
	Files []string // files/directories to add to the archive
}

func (z *Zip) Pack(directory string) error {
	// Pull archive store from config, and create a file.
	zipArchive, err := os.Create(fmt.Sprintf("%s/%s", directory, z.Name))
	if err != nil {
		return fmt.Errorf("Error creating archive: %s", err)
	}
	defer zipArchive.Close()

	zipWriter := zip.NewWriter(zipArchive)
	defer zipWriter.Close()

	err = z.writeFiles(zipWriter, z.statFiles())
	if err != nil {
		return fmt.Errorf("Unable to write ZIP archive: %s", err)
	}
	return nil
}

func (z *Zip) statFiles() (paths []string) {
	for i := range z.Files {
		file, err := os.Stat(z.Files[i])
		if err != nil {
			log.Error(fmt.Sprintf("Error collecting files for archive operation: %s", err))
		}

		switch mode := file.Mode(); {
		case mode.IsDir():
			err = filepath.Walk(z.Files[i], func(path string, info os.FileInfo, err error) error {
				if err != nil {
					log.Error(fmt.Sprintf("Archive task, error accessing path: %s %s", path, err))
				}

				if !info.IsDir() {
					paths = append(paths, path)
				}
				return nil
			})
		case mode.IsRegular():
			paths = append(paths, file.Name())
		}
	}
	return paths
}

func (z *Zip) writeFiles(zw *zip.Writer, paths []string) error {
	for i := range paths {
		data, err := ioutil.ReadFile(paths[i])
		if err != nil {
			return err
		}

		file, err := zw.Create(paths[i])
		if err != nil {
			return err
		}
		_, err = file.Write(data)
		if err != nil {
			return err
		}
	}
	return nil
}
