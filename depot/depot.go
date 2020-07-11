/*
Package depot implements file processing routines to archive, store, and maintain
data in a wide variety of archive formats.

Supported archive formats are;
	7z
	tar.bz2
	tar.gz
	rar
	zip
	zipx
 */
package depot

import "path"

type Archive interface {
	Pack(string) // Create an archive
	Unpack() // Unpack existing archive
	Move() // Move an archive
	Verify() // Verify integrity of an archive
}

// FindCommonParent finds the common directory shared by all paths.
//
// Result doesn't contain trailing slash.
func FindCommonParent(sep byte, paths ...string) string {
	// Thanks for rosettacode.org for this algorithm

	// Special cases
	switch len(paths) {
	case 0:
		return ""
	case 1:
		return path.Clean(paths[0])
	}

	// Note, we treat string as []byte, not []rune as is often
	// done in Go. (And sep as byte, not rune). This is because
	// most/all supported OS' treat paths as string of non-zero
	// bytes. A filename may be displayed as a sequence of Unicode
	// runes (typically encoded as UTF-8) but paths are
	// not required to be valid UTF-8 or in any normalized form
	// (e.g. "é" (U+00C9) and "é" (U+0065,U+0301) are different
	// file names.
	c := []byte(path.Clean(paths[0]))

	// Note, we treat string as []byte, not []rune as is often
	// done in Go. (And sep as byte, not rune). This is because
	// most/all supported OS' treat paths as string of non-zero
	// bytes. A filename may be displayed as a sequence of Unicode
	// runes (typically encoded as UTF-8) but paths are
	// not required to be valid UTF-8 or in any normalized form
	// (e.g. "é" (U+00C9) and "é" (U+0065,U+0301) are different
	// file names.
	c = append(c, sep)

	// Ignore first path since it's already in c
	for _, v := range paths[1:] {
		// Clean up each path before testing it
		v = path.Clean(v) + string(sep)

		// Find the first non-common byte and truncate c
		if len(v) < len(c) {
			c = c[:len(v)]
		}
		for i := 0; i < len(c); i++ {
			if v[i] != c[i] {
				c = c[:i]
				break
			}
		}
	}

	// Remove trailing non-separator characters and the final separator
	for  i := len(c) - 1; i >= 0; i-- {
		if c[i] == sep {
			c = c[:i]
			break
		}
	}
	return string(c)
}




