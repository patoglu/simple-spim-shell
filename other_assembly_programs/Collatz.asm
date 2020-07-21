.data

opening_collatz: .asciiz "Collatz program is started.\n"
tab: .asciiz "  "

newline: .asciiz "\n"


.text
main:
Collatz_:

	li $t0, 0
	li	 $s2, 2 #divide by two
	li $s3, 3 #multiply 3
	li $t4, 1
	bound_loop:
    bgt $t0,24,exit



	addi $t0, 1
	move $t1, $t0

	li $v0,1     #prepare system call
	move $a0,$t4 #copy t0 to a0
	syscall      #print integer
	li $v0, 4
	la $a0,newline
	syscall
	j loop


	j bound_loop
	loop:
	beq $t1, 1, bound_loop
	li $v0,1     #prepare system call
	move $a0,$t1 #copy t0 to a0
	syscall      #print integer

	li $v0, 4
	la $a0,tab
	syscall


	#t2 will hold x
	andi $t2 , $t1 , 0x0001

	beq $t2, 1, three_n

	else:
		div $t1, $s2
		mflo $t1
	j loop

	three_n:
		mult $s3, $t1
		mflo $t1
		addi $t1, 1

	j loop




    j bound_loop

exit:

	li $v0, 10
	syscall
