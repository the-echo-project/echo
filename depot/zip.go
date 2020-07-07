package depot

import (
	"fmt"
	"io/ioutil"
	"os"
	"archive/zip"
	"path/filepath"
)

// TODO: Currently ZIP logic adds the absolute path for files. Need to find a way to get common parent and better organise the structure when adding files from many sources.

type Zip struct {
	Name string // output name
	Files []string // files/directories to add to the archive
}

// Pack zips files in zip.Files into the provided directory. It preserves the full directory structure.
func (z *Zip) Pack(directory string) error {
	zipArchive, err := os.Create(fmt.Sprintf("%s/%s", directory, z.Name))
	if err != nil {
		return fmt.Errorf("error creating archive: %s", err)
	}
	defer zipArchive.Close()

	zipWriter := zip.NewWriter(zipArchive)
	defer zipWriter.Close()

	filesToZip, err := z.statFiles()
	if err != nil {
		// Taking an all or nothing approached. Incomplete data not acceptable, should error.
		return fmt.Errorf("couldn't stat files for ZIP: %s", err)
	}

	err = z.writeFiles(zipWriter, filesToZip)
	if err != nil {
		return fmt.Errorf("unable to write ZIP archive: %s", err)
	}
	return nil
}

func (z *Zip) statFiles() (filesToZip []string, err error) {
	for i := range z.Files {
		file, err := os.Stat(z.Files[i])
		if err != nil {
			return nil, fmt.Errorf("error collecting files for file stat operation: %s", err)
		}

		switch mode := file.Mode(); {
		case mode.IsDir():
			err = filepath.Walk(z.Files[i], func(path string, info os.FileInfo, err error) error {
				if err != nil {
					return fmt.Errorf("error accessing path for file stat operation: %s %s", path, err)
				}

				if !info.IsDir() {
					fullPath, err := filepath.Abs(path)
					if err != nil {
						return fmt.Errorf("couldn't obtain absolute path for %s", path)
					}
					filesToZip = append(filesToZip, fullPath)
				}
				return nil
			})
		case mode.IsRegular():
			fullPath, err := filepath.Abs(z.Files[i])
			if err != nil {
				return nil, fmt.Errorf("couldn't obtain absolute path for %s", z.Files[i])
			}
			filesToZip = append(filesToZip, fullPath)
		}
	}

	if len(filesToZip) == 0 {
		return nil, fmt.Errorf("no files found")
	}
	return filesToZip, nil
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
