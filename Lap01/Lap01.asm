addi $t1,$0,0x1234567
addi $t0,$0,0x7654321
add $t2,$t1,$t0 #t2=t1+t0
addi $t3,$t0,0x0208 #t3=t0+0x0208
addu $t4,$t1,$t0 #t4=t1+t0 khong bi overflow
addi $t5,$t1,0x0208 #t5=t1+0x0208 khong bi overflow
sub $t6,$t0,$t1 # t6=t0-t1
subu $t7,$t1,$t0 # t7=t1-t0 khong bi overflow
and $t8,$t1,$t0 #and tung bit cua t1 va t0 roi lua vao t8
andi $t9,$t1,0x0208 #and tung bit cua t1 va so roi lua vao t9
or $s0,$t1,$t0 #or tung bit cua t1 va t0 roi lua vao s0
nor $s1,$t1,$t0 #nor tung bit cua t1 va t0 roi lua vao s1
addi $t0,$0,0x10010000
addi $s2,$0,0x23520208
sw $s2, 4($t0) #lua gia tri thanh ghi s2 vao dia chi t0+4
lw $s3, 4($t0) #gia tri trong vung nho co dia chi t0+4 duoc lua vao s3 
addi $t0,$0,0x87654321
slt $s4,$t1,$t0 #so sanh (t1<t0)? 1:0
slti $s5,$t1,0x0208 #so sanh (t1<0x0208)? 1:0
slt $s4,$t1,$t0 #so sanh (t1<t0)? 1:0 (so ko dau 
sltiu $s6,$t1,0x0208 #so sanh (t1<0x0208)? 1:0 (so ko dau)
