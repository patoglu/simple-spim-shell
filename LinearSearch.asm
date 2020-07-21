.data
list: .space 80
opening:	.asciiz "Linear search program is started.\n"

usage: 		.asciiz "\nUsage: (1)Enter the length of the list.\n       (2)Enter the element that you want to search.\n       (3)Enter the element you want to search.\n       (4)Enter the elements of the list one by one.\n"

ask_length:	.asciiz "\n\nPlease enter the length of list:\n"

ask_elems_begin: .asciiz "Enter "

ask_elems_end: .asciiz "elements:\n"

ask_single: .asciiz ">"

ask_target: .asciiz "\nPlease enter the element that you want to search.\n"
halt:	.asciiz "\nBye.\n"

notify_found: .asciiz "Found an element in index "
notify_not_found: .asciiz "Can't find element.\n"
new_line: .asciiz "\n"

.text
main:
linearsearch:
	#Print opening message
	li $v0, 4
	la $a0,opening
	syscall

	#Print usage
	la $a0,usage
	syscall

	#Print and ask the input length
	la $a0,ask_length
	syscall



	#input the list length
	li $v0, 5
	syscall
	move $t0, $v0 #Requested integer is in $t0


	#Print and ask target
	li $v0, 4
	la $a0,ask_target
	syscall

	#input the target
	li $v0, 5
	syscall
	move $t4, $v0 #Requested integer is in $t0



	addi $t3, $zero, 0 #t3 is word counter
	li $t1, 1 #counter #start t1 as 1

	loop:	bgt $t1, $t0, endLoop #if t1 is greater than t0 go to endLoop.

	li $v0, 4
	la $a0,ask_single
	syscall


	#read integer into v0 from user.
	li $v0, 5
	syscall

	sw $v0, list($t3) #store v0 into starting address of list + t3 offset


	addi $t3, $t3, 4 #update t3 offset
	addi $t1, $t1, 1 #add t1 counter 1
	j loop

	endLoop:

	#reinit counter
	li $t1, 1 #counter #start t1 as 1

	li $t3, 0 #t3 is word counter


	loop_search:

	bgt $t1, $t0, end_loop_search
	lw $t2, list($t3)
	beq $t2, $t4, found_exit



	addi $t3, $t3, 4 #update t3 offset
	addi $t1, $t1, 1 #add t1 counter 1
	j loop_search



	found_exit:

	addi $t1, $t1, -1
	li $v0, 4
	la $a0,notify_found
	syscall

	li $v0,1
	move $a0, $t1
	syscall


	li $v0, 4
	la $a0,new_line
	syscall


	li $v0, 10
	syscall
	end_loop_search:










	li $v0, 4
	la $a0,notify_not_found
	syscall
	#If not found terminate too.
	li $v0, 10
	syscall
