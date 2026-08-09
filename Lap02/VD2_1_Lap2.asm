.text
main:
	li $v0 5
	syscall
	add $s1, $v0, $0
	li $v0 5
	syscall
	add $s0, $v0, $0
	li $v0 5
	syscall
	add $t0, $v0, $0
	li $v0 5
	syscall
	add $t1, $v0, $0
	beq $s1 $s0, FUNC1
	sub $s2, $t1, $t0
	add $a0, $s2, $0
	li $v0, 1
	syscall
	j EXIT
	FUNC1: 
		add $s2, $t1, $t0
		add $a0, $s2, $0
		li $v0, 1
		syscall
	EXIT:
	
		
