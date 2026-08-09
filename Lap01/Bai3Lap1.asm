.data
string2: .asciiz "chao ban la sinh vien nam may? \n"
string3: .asciiz "Hi minh la sinh vien nam 2"
string1: .asciiz 
.text
main:
	#li $v0, 5
	#syscall #nhap so nguyen
	#add $t1,$v0,$0 #truyen gia tri so nguyen vua nhap vao t1
	#li $v0, 5
	#syscall #nhap so nguyen
	#add $t2,$v0,$0 #truyen gia tri so nguyen vua nhap vao t2
	#add $t3,$t1,$t2 #cong 2 so
	#li $v0, 1
	#add $a0,$0,$t3
	#syscall #xuat tong cua 2 so
	
	#li $v0, 8
	#la $a0, string1 
	#la $a1, 100
	#syscall #nhap chuoi vao string1
	#li $v0,4
	#la $a0,string1
	#syscall #xuat chuoi1
	
	li $v0, 4
	la $a0, string2
	syscall #xuat chuoi2
	li $v0, 4
	la $a0, string3
	syscall #xuat chuoi3
