.data
string1: .asciiz "Nhap n: "
string2: .asciiz "\nNhap cac phan tu: \n"
string3: .asciiz "Gia tri lon nhat: "
string4: .asciiz "\nGia tri nho nhat: "
string5: .asciiz "\nTong cac phan tu: "
string6: .asciiz "\nNhap chi so cua mang: "
string7: .asciiz "Gia tri: "
array1: .byte
.text
	li $v0, 4
	la $a0, string1
	syscall
	li $v0, 5
	syscall
	add $t0, $v0, $0
	li $v0, 4
	la $a0, string2
	syscall
	la $s0, array1
	li $t1, 0
Loop: 	blt $t1, $t0, DO
	j NEXT
DO: 	li $v0, 5
	syscall
	sb $v0, ($s0)
	addi $s0, $s0, 1
	addi $t1, $t1, 1
	j Loop
	
NEXT: 	la $s0, array1
	lb $t2, ($s0)
	lb $t3, ($s0)
	lb $t5, ($s0)
	addi $s0, $s0, 1
	li $t1, 1
Loop1: 	blt $t1, $t0, DO1
	j NEXT2
DO1: 	lb $t4, ($s0)
	add $t5, $t5, $t4
	blt $t2, $t4, SWAPMAX
DO2:	bgt $t3, $t4, SWAPMIN
	j NEXT1
SWAPMAX:	add $t2, $t4, $0
		j DO2
SWAPMIN: 	add $t3, $t4, $0
NEXT1:	addi $t1, $t1, 1
	addi $s0, $s0, 1
	j Loop1
NEXT2:	
	li $v0, 4
	la $a0, string3
	syscall
	li $v0, 1
	add $a0, $t2, $0
	syscall
	li $v0, 4
	la $a0, string4
	syscall
	li $v0, 1
	add $a0, $t3, $0
	syscall
	li $v0, 4
	la $a0, string5
	syscall
	li $v0, 1
	add $a0, $t5, $0
	syscall
	li $v0, 4
	la $a0, string6
	syscall
	li $v0, 5
	syscall
	la $s0, array1
	add $s0, $s0, $v0
	lb $t1, ($s0)
	li $v0, 4
	la $a0, string7
	syscall
	li $v0, 1
	add $a0, $t1, $0
	syscall
