.data
string: .asciiz "The factorial of 10 is: "
.text
	addi $t0, $t0, 10
	jal factorial
	move $t1, $v0
	li $v0, 4
	la $a0, string
	syscall
	move $a0, $t1
	li $v0, 1
	syscall
	j EXIT
factorial:
	beq $t0, $0, RETURN1 #neu n=0 thi return1
	addi $sp, $sp, -4 #lua thanh ghi ra vao stack
	sw $ra, 0($sp)
	addi $sp, $sp, -4 #lua gia tri n vao stack
	sw $t0, 0($sp)
	addi $t0, $t0, -1 #n=n-1
	jal factorial
	
	lw $t0, 0($sp) #lay gia tri cua n tu stack
	addi $sp, $sp, 4 #xoa stack
	lw $ra, 0($sp) #lay gia tri thanh ghi ra
	addi $sp, $sp, 4 #xoa stack lua gia tri thanh ghi ra
	mul $v0, $t0, $v0 # n * factoral(n-1)
	jr $ra #quay lai ham goi
RETURN1:
	addi $v0, $0, 1 #return 1
	jr $ra # quay lai ham goi

EXIT:
	