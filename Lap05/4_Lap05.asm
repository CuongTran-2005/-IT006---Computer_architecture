.data
a: .space 4
b: .space 4
c: .space 4
d: .space 4
.text
la $t1, a
li $t0, 6
sw $t0, 0($t1)

la $t2, b
li $t0, 5
sw $t0, 0($t2)

la $t3, c
lw $t5, 0($t1)
lw $t6, 0($t2)
sub $t0, $t5, $t6
sw $t0, 0($t3)

la $t4, d
add $t0, $t5, $t6
sw $t0, 0($t4)