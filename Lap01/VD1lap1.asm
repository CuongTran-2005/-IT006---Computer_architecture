	.data 
var1:	.word 23 #tao bien var1 kieu du lieu word co gia tri 23
	
	.text
_start: lw $t0, var1 #t0=var=23
	li $t1, 5 #t1=5
	sw $t1, var1 #var1 co gia tri 23 doi thanh gia tri t1=5
