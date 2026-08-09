.data
string1: .asciiz "\n"
.text
	li $v0, 5
	syscall
	move $a0, $v0
	li $v0, 5
	syscall
	move $a1, $v0
	li $v0, 5
	syscall
	move $a2, $v0
	li $v0, 5
	syscall
	move $a3, $v0
	li $v0, 5
	syscall
	move $t0, $v0
	li $v0, 5
	syscall
	move $t1, $v0
	jal pro_example
	
	move $a0, $v0
	li $v0, 1
	syscall
	li $v0, 4
	la $a0, string1
	syscall
	move $a0, $v1
	li $v0, 1
	syscall
	j EXIT
#a0=a, a1=b, a2=c, a3=d, t0=e, t1=f
pro_example:
	add $t2, $a0, $a1 #a+b
	add $t3, $a2, $a3 #c+d
	sub $s0, $t2, $t3 #(a+b) - (c+d)
	
	move $v0, $s0
	move $fp, $sp
	sw $v0, 0($sp)
	addi $sp, $sp, 4
	
	sub $s1, $t0, $t1 #e-f
	
	move $v1, $s1
	sw $v1, 0($sp)
	addi $sp, $sp, 4
	
	jr $ra
EXIT: