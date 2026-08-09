.text
	bne $s3, $s4, DO
	sub $s0, $s1, $s2
	j EXIT
DO:	add $s0, $s1, $s2
EXIT: