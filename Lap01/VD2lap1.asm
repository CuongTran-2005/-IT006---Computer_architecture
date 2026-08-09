	.data
array1: .space 12 #mang array1 co 12 phan tu
	.text
_start:	la $t0, array1 #truyen dia chi cua array1 vao t0
	li $t1,5 #t1=5
	sw $t1, ($t0) #gia tri t1 truyen vao phan tu 0 cua mang array1
	li $t1,13 #t1=13
	sw $t1, 4($t0) #gia tri t1 truyen vao phan tu 1 cua mang array1 
	li $t1, -7 #t1=-7
	sw $t1,8($t0) #gia tri t1 truyen vao phan tu 2 cua mang array1
