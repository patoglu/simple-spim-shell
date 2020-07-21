.data
list: .space 80
opening: .asciiz "binary search program is started.\n"

ask_target: .asciiz "Please enter the number that you want to search:"
newline: .asciiz "\n"

usage: .asciiz "\nUsage: (1)Enter the length of the list.\n       (2)Enter the elements of the list one by one.\n       (3)Enter the element you want to search.\n"


ask_length: .asciiz "\n\nPlease enter the length of list:\n"

ask_elems_begin: .asciiz "Enter "

ask_elems_end: .asciiz "elements:\n"

ask_single: .asciiz ">"

new_line: .asciiz "\n"

notify_found: .asciiz "Found an element in index "
notify_not_found: .asciiz "Can't find element.\n"

.text

main:
binarysearch:
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

#Print asking target
li $v0, 4
la $a0,ask_target
syscall

#Store target in $s1
li $v0, 5
syscall
move $s1, $v0 #Target integer is in $s1


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

#Store list starting address in $s2
#Store target in $s1
#Store list length in $s0


jal binary_search








li $v0, 10
syscall







binary_search:

#s2 is constant 2
#low is in t0
#high is in #t2
#mid is in #t1


li $t0, 0

move $t2, $s0

li $s2, 2


binary_loop:

ble $t0, $t2, continue



not_found:

li $v0, 4
la $a0,notify_not_found
syscall

jr $ra


continue:


add $t1, $t0, $t2 #low + mid

div $t1, $s2
mflo $t1 #t1 has (low + mid) / 2 rn





sll $t4, $t1, 2
#t3 for mid
lw $t3, list($t4) #Array[(low + high) / 2]






beq $s1, $t3, found
ble $s1, $t3, update_high
bge $s1, $t3, update_low



update_high:
addi $t2,$t1, -1
j binary_loop

update_low:
addi $t0,$t1, 1
j binary_loop


found:
li $v0, 4
la $a0,notify_found
syscall

li $v0, 1
move $a0, $t1
syscall

li $v0, 4
la $a0,new_line
syscall

jr $ra
