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

type Archive interface {
	Pack(string) // Create an archive
	Unpack() // Unpack existing archive
	Move() // Move an archive
	Verify() // Verify integrity of an archive

}




