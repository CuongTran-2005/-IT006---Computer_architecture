		.data
string1: 	.asciiz "print this. \n" #tao chuoi string1
		
		.text
main:		li $v0, 4 #xac dinh lenh trong syscall
		la $a0, string1 #truyen dia chi string1 vao a0
		syscall #in mang string1 ra cua so I/O
