.data
list: .space 80
opening: .asciiz "Selection sort search program is started.\n"

ask_target: .asciiz "Please enter the number that you want to search:"
newline: .asciiz "\n"

usage: .asciiz "\nUsage: (1)Enter the length of the list.\n       (2)Enter the elements of the list one by one.\n       (3)Enter the element you want to search.\n"


ask_length: .asciiz "\n\nPlease enter the length of list:\n"

ask_elems_begin: .asciiz "Enter "

ask_elems_end: .asciiz "elements:\n"

ask_single: .asciiz ">"

new_line: .asciiz "\n"

op: .asciiz "["

cl: .asciiz "]"

spa: .asciiz " "




.text
main:
selectionsort:


#Necesssary information taken from user start.

li $v0, 4
la $a0,opening
syscall

la $a0,usage
syscall

la $a0,ask_length
syscall

li $v0, 5
syscall
move $s0, $v0 #Requested integer is in $s0



addi $t3, $zero, 0 #t3 is word counter
li $t1, 1 #counter #start t1 as 1

loop:
bgt $t1, $s0, endLoop #if t1 is greater than s0 go to endLoop.

#Print ">"
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

jal selection_sort











#Print open paranthesis
li $v0, 4
la $a0,op
syscall


addi $s0, $s0, 1
addi $t3, $zero, 0 #t3 is word counter
li $t1, 1
loop_print:
bgt $t1, $s0, end_loop_print #if t1 is greater than s0 go to endLoop.




lw $t4, list($t3) #store v0 into starting address of list + t3 offset



li $v0, 1
move $a0, $t4
syscall

li $v0, 4
la $a0,spa
syscall





addi $t3, $t3, 4 #update t3 offset
addi $t1, $t1, 1 #add t1 counter 1
j loop_print
end_loop_print:

#print close paranthesis
li $v0, 4
la $a0,cl
syscall


#Newline and terminate the program
li $v0, 4
la $a0,newline
syscall

li $v0, 10
syscall



	selection_sort:

	#t0 will be outer loop counter
	#t1 will be inner loop counter
	#t2 will be outer loop limit
	#t3 will be inner loop limit
  #Store A[outer] in t4
  #Store A[inner] in t5
  #temp in $t6
	move $t3, $s0
	move $t2, $s0
	addi $t2, $t2, -1
  addi $s0, $s0, -1

	li $t0, 0
	li $t1, 0

	outer_loop:
	bgt $t0, $t2, outer_loop_end
	move $t1, $t0
	addi $t1, $t1, 1

	inner_loop:








	    bgt $t1, $s0, break_inner


      #Store A[outer] in t4
      sll $t4, $t0, 2
      lw $t4, list($t4)


      #Store A[inner] in t5
      sll $t5, $t1, 2
      lw $t5, list($t5)

      bgt $t4, $t5, swap

      j not_swap

      swap:

      move $t6, $t4

      sll $t7, $t0, 2


      sw $t5, list($t7)


      sll $t3, $t1, 2
      sw $t6, list($t3)


      not_swap:
		  addi $t1, $t1, 1




	j inner_loop



	break_inner:

	addi $t0, $t0, 1
	j outer_loop

	outer_loop_end:

	jr $ra
