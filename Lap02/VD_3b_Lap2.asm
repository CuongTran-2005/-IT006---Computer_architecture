.data
string: .asciiz "so nho hon la: "
string1: .asciiz "\ntong: "
string2: .asciiz "\nhieu: "
string3: .asciiz "\ntich: "
string4: .asciiz "\nthuong"
string5: .asciiz "  du: "
.text
main: 
	li $v0, 5
	syscall
	add $t1, $0, $v0
	li $v0, 5
	syscall
	add $t2, $0, $v0
	li $v0, 4
	la $a0, string
	syscall
	bgt $t1, $t2, XUATT2
	li $v0, 1
	add $a0, $0, $t1
	syscall
	j NEXT
XUATT2: li $v0, 1
	add $a0, $0, $t2
	syscall
NEXT: 	

	add $t3, $t1, $t2
	li $v0, 4
	la $a0, string1
	syscall
	add $a0, $0, $t3
	li $v0, 1
	syscall
	
	sub $t4, $t1, $t2
	li $v0, 4
	la $a0, string2
	syscall
	add $a0, $0, $t4
	li $v0, 1
	syscall
		
	mult $t1, $t2
	mfhi $t5
	mflo $t6
	li $v0, 4
	la $a0, string3
	syscall
	beqz $t5, XX
	li $v0, 1
	add $a0, $0, $t5
	syscall

XX:	li $v0, 1
	add $a0, $0, $t6
	syscall
	
	li $v0, 4
	la $a0, string4
	syscall
	divu $t7, $t1, $t2
	mfhi $s0
	li $v0, 1
	add $a0, $0, $t7
	syscall
	li $v0, 4
	la $a0, string5
	syscall
	li $v0, 1
	add $a0, $0, $s0
	syscall