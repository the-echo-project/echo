package depot

import (
	"os"
	"testing"
)

/*
TestFindCommonParents test the function's ability to find a common directory parent for the
purpose of removing unnecessary bloat from an archive file.

Reading the absolute path from left to right, we should determine at what point the paths
diverge, and return the directory path immediately preceding it.

As per the echo design doc, return value should not contain a trailing slash
*/
func TestFindCommonParent(t *testing.T) {
	// Common parent is "user". In this instance the function should return "/home/user/". In
	// terms of
	paths := []string{"/home/user/desktop/mystuff/somefile.txt",
					 "/home/user/music/song.mp3",
					 "/home/user/videos/video.mp4",
					 "/home/user/pictures/",
	}

	expected := "/home/user"
	if got := FindCommonParent(os.PathSeparator, paths...); got != expected {
		t.Logf("Expected common parent of %s, got %s", expected, got)
		t.Fail()
	}
}
