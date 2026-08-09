.data
string1: .asciiz "Nhap ky tu: "
string2: .asciiz "\nKy tu truoc: "
string3: .asciiz "\nKy tu sau: "
string4: .asciiz "\ninvalid type"
string5: .asciiz "\nso"
string6: .asciiz "\nchu thuong"
string7: .asciiz "\nchu hoa"
.text
main: 
	li $v0, 4
	la $a0, string1
	syscall
	li $v0, 12
	syscall
	add $t0, $v0, $0
	addi $t1, $v0, 1
	subi $t2, $v0, 1
	li $v0, 4
	la $a0, string2
	syscall
	li $v0, 11
	add $a0, $t2, $0
	syscall
	li $v0, 4
	la $a0, string3
	syscall
	li $v0, 11
	add $a0, $t1, $0
	syscall
	
	li $t7, 48
	blt $t0, $t7, NOT
	li $t7, 58
	blt $t0, $t7, DOSO
	li $t7, 64
	ble $t0, $t7, NOT
	li $t7, 90
	ble $t0, $t7, DOH
	li $t7, 96
	ble $t0, $t7, NOT
	li $t7, 122
	ble $t0, $t7, DOT
	j NOT
DOSO:   li $v0, 4
	la $a0, string5
	syscall
	j END
DOT:	li $v0, 4
	la $a0, string6
	syscall
	j END
DOH:	li $v0, 4
	la $a0, string7
	syscall
	j END
NOT: 	li $v0, 4
	la $a0, string4
	syscall
END:
