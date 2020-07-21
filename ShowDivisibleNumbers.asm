.data
greeting: .asciiz "Show Divisible Number's program is started.\n"
lower_limit: .asciiz "Please enter the lower limit >"
upper_limit: .asciiz "\nPlease enter the upper limit >"

number: .asciiz "\nPlease enter a divisor>"

newline: .asciiz "\n"
tab: .asciiz "\t"
.text


main:
divisible:
li $a1, 1
#Print opening message
li $v0, 4
la $a0,greeting
syscall


#Print lower limit request
li $v0, 4
la $a0,lower_limit
syscall

li $v0, 5
syscall
move $t0, $v0 #Requested integer is in $t0




#Print upper limit request
li $v0, 4
la $a0,upper_limit
syscall


li $v0, 5
syscall
move $t1, $v0 #Requested integer is in $t1

#Print number request
li $v0, 4
la $a0,number
syscall

li $v0, 5
syscall
move $t2, $v0 #Requested integer is in $t2






loop:
bgt $t0, $t1, endLoop #if t1 is greater than t0 go to endLoop.




div $t0, $t2
mfhi $t3



bne $t3, $zero, not_divisible

li $v0, 1
move $a0, $t0
syscall

li $v0, 4
la $a0,tab
syscall


not_divisible:


addi, $t0, 1


j loop


endLoop:






li $v0, 4
la $a0,newline
syscall



li $v0, 10
syscall
