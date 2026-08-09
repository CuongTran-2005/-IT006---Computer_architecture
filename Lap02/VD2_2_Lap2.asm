.text
main:
	li $s2, 0
	li $s0, 0
	li $v0, 5
	syscall
	add $s1, $v0, $0
	FUNC: 
	add $s2, $s2, $s0
	addi $s0,$s0, 1
	beq $s1, $s0, EXIT
	j FUNC
	EXIT: 
	add $a0, $s2, $0
	li $v0 1
	syscall