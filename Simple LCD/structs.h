//Define a struct to hold two values, 4 bit each.
//The struct itself is minimum one byte.
struct byte_struct{
	unsigned char hb:4; //1 nybble
	unsigned char lb:4;

/*
	bit = ...1 bit...
	nybble = 4 bits = 1/2 byte
	byte = 8 bits = 2 nybbles
	WORD = 2 bytes = 4 nybbles = 16 bits
	DWORD = 2 WORDs = 4 bytes = 8 nybbles = 32 bits
	QWORD = 2 DWORDs = 4 WORDS = ..... = 64 bits
*/

};