.data
string: .asciiz " "
string1: .asciiz "\n"
string2: .asciiz "\nMang: "
string3: .asciiz "Vi tri: "
array1: .word 5, 6, 7, 8, 1, 2, 3, 9, 10, 4
size1: .word 10
array2: .byte 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16
size2: .word 16
array3: .space 8
size3: .word 8
.text

	lw $t0, size1
	la $t6, array1
	li $t1, 0
Loop1:	blt $t1, $t0, OUT1
	j NEXT1
OUT1:	sll $t3, $t1, 2
	add $t4, $t6, $t3
	lw $t5, ($t4)
	li $v0, 1
	add $a0, $0, $t5
	syscall
	li $v0,4
	la $a0, string
	syscall
	addi $t1, $t1, 1
	j Loop1
NEXT1:	li $v0,4
	la $a0, string1
	syscall
	lw $t0, size2
	la $t6, array2
	li $t1, 0
Loop2:	blt $t1, $t0, OUT2
	j NEXT2
OUT2:	sll $t3, $t1, 0
	add $t4, $t6, $t3
	lb $t5, ($t4)
	li $v0, 1
	add $a0, $0, $t5
	syscall
	li $v0,4
	la $a0, string
	syscall
	addi $t1, $t1, 1
	j Loop2
NEXT2: 	li $t0, 0
	lw $t1, size3
	lw $t7, size2
Loop3:	blt $t0, $t1, DO
	j NEXT3
DO: 	la $s0, array2
	add $t3, $s0, $t0
	add $t4, $s0, $t7
	addi $t4, $t4, -1
	sub $t4, $t4, $t0
	lb $t5, ($t3)
	lb $t6, ($t4)
	add $t5, $t5, $t6
	la $s1, array3
	add $s2, $s1, $t0
	sb $t5, ($s2)
	addi $t0, $t0, 1
	lb $t6, ($s2)
	j Loop3
NEXT3: 	li $v0, 4
	la $a0, string2
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, $0
	li $v0, 4
	la $a0, string3
	syscall
	li $v0, 5
	syscall
	add $t1, $v0, $0
	li $t3, 1
	beq $t0, $t3, DO1
	li $t3, 2
	beq $t0, $t3, DO2
	li $t3, 3
	beq $t0, $t3, DO3
DO1:	la $s0, array1
	sll $t2, $t1, 2
	add $s1, $s0, $t2
	lw $t3, ($s1)
	li $v0, 1
	add $a0, $t3, $0
	syscall
	j EXIT
DO2:	la $s0, array2
	sll $t2, $t1, 0
	add $s1, $s0, $t2
	lb $t3, ($s1)
	li $v0, 1
	add $a0, $t3, $0
	syscall
	j EXIT
DO3:	la $s0, array3
	sll $t2, $t1, 0
	add $s1, $s0, $t2
	lb $t3, ($s1)
	li $v0, 1
	add $a0, $t3, $0
	syscall
EXIT: 