.text

	li $v0, 5
	syscall
	move $t0, $v0
	jal fibonaci

fibonaci:
	beq $t0, 0, RETURN1
	beq $t0, 1, RETURN1
	addi $sp, $sp, -4 #lua dia chi tra ve vao stack
	sw $ra, 0($sp)
	addi $sp, $sp, -4 #lua gia tri cua n
	sw $t0, 0($sp)
	addi $t0, $t0, -1
	jal fibonaci
	move $t1, $v0
	lw $t0, 0($sp)
	addi $t0, $t0, -2
	jal fibonaci
	move $t2, $v0
	mul $v0 $t1, $t2
	